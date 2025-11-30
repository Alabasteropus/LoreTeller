setfenv(1, LoreTeller)

---@class ZoneLoreTracker
ZoneLoreTracker = {
    currentZone = nil,
    lastCheckTime = 0,
    checkInterval = 1, -- Check every 1 second for POI proximity
    lastTriggeredPOI = nil, -- Track last triggered POI to prevent duplicates
    lastTriggeredTime = 0, -- Track when last POI was triggered
    currentNearbyPOI = nil, -- Currently nearby POI entry (for replay button)
    lastDiscoveredLore = nil, -- Last discovered lore entry (persists for replay)
    loreReplayButton = nil, -- The floating book icon button
}

---Initialize the zone lore tracker
function ZoneLoreTracker:Initialize()
    self.currentZone = nil
    self.lastCheckTime = 0
    self.lastTriggeredPOI = nil
    self.lastTriggeredTime = 0
    self.currentNearbyPOI = nil
    self.lastDiscoveredLore = nil
    self.isRevertedToLastLore = false
    self:CreateLoreReplayButton()
    self:RestoreLastLore()
    Debug:Print("ZoneLoreTracker initialized")
end

---Restore last discovered lore from saved data
function ZoneLoreTracker:RestoreLastLore()
    local savedLore = Addon.db.char.lastDiscoveredLore
    if savedLore then
        self.lastDiscoveredLore = savedLore
        self.currentNearbyPOI = savedLore
        if self.loreReplayButton then
            self.loreReplayButton:Show()
        end
        Debug:Print(format("ZoneLoreTracker: Restored last lore: %s", savedLore.subZone or savedLore.zoneName or "Unknown"))
    end
end

---Create the floating lore replay button (book icon)
function ZoneLoreTracker:CreateLoreReplayButton()
    if self.loreReplayButton then return end
    
    -- Use loadstring to create frame in global environment
    local createButton = loadstring([[
        local button = CreateFrame("Button", "LoreTellerLoreReplayButton", UIParent)
        button:SetSize(60, 60)
        button:SetFrameStrata("HIGH")
        button:SetMovable(true)
        button:EnableMouse(true)
        button:RegisterForDrag("LeftButton")
        button:SetClampedToScreen(true)
        button:Hide()  -- Start hidden, will show when lore is restored or discovered
        
        -- Use a book texture as default
        button.bookTexture = "Interface\\Icons\\INV_Misc_Book_09"
        button:SetNormalTexture(button.bookTexture)
        button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square")
        button:GetHighlightTexture():SetBlendMode("ADD")
        
        -- Create thumbnail texture (hidden by default, shown on new lore)
        button.thumbnail = button:CreateTexture(nil, "ARTWORK")
        button.thumbnail:SetAllPoints(button)
        button.thumbnail:Hide()
        
        -- Create square border for thumbnail
        button.border = button:CreateTexture(nil, "OVERLAY")
        button.border:SetTexture("Interface\\Buttons\\UI-Quickslot2")
        button.border:SetSize(100, 100)
        button.border:SetPoint("CENTER", button, "CENTER", 0, 0)
        button.border:Hide()
        
        -- Track if showing thumbnail or book
        button.showingThumbnail = false
        
        -- Add a glow overlay for new discoveries
        button.glow = button:CreateTexture(nil, "OVERLAY")
        button.glow:SetTexture("Interface\\SpellActivationOverlay\\IconAlert")
        button.glow:SetTexCoord(0.00781250, 0.50781250, 0.27734375, 0.52734375)
        button.glow:SetSize(80, 80)
        button.glow:SetPoint("CENTER", button, "CENTER", 0, 0)
        button.glow:SetBlendMode("ADD")
        button.glow:SetAlpha(0)
        
        -- Animation for pulsing glow on new discovery
        button.glowAnim = button.glow:CreateAnimationGroup()
        button.glowAnim:SetLooping("BOUNCE")
        
        local fadeIn = button.glowAnim:CreateAnimation("Alpha")
        fadeIn:SetFromAlpha(0.3)
        fadeIn:SetToAlpha(0.8)
        fadeIn:SetDuration(1)
        fadeIn:SetSmoothing("IN_OUT")
        
        -- Dragging handlers
        button:SetScript("OnDragStart", function(self)
            self:StartMoving()
        end)
        
        button:SetScript("OnDragStop", function(self)
            self:StopMovingOrSizing()
            -- Save position
            local point, _, relPoint, x, y = self:GetPoint()
            LoreTeller.Addon.db.profile.ZoneLore = LoreTeller.Addon.db.profile.ZoneLore or {}
            LoreTeller.Addon.db.profile.ZoneLore.ButtonPos = {point, relPoint, x, y}
        end)
        
        return button
    ]])
    
    if createButton then
        local ok, button = pcall(createButton)
        if ok and button then
            self.loreReplayButton = button
            
            -- Restore saved position or use default
            local pos = Addon.db.profile.ZoneLore and Addon.db.profile.ZoneLore.ButtonPos
            if pos then
                button:ClearAllPoints()
                button:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
            else
                button:SetPoint("TOP", UIParent, "TOP", 0, -100)
            end
            
            -- Set up click handler
            button:SetScript("OnClick", function()
                LoreTeller.ZoneLoreTracker:OnLoreReplayClick()
            end)
            
            -- Set up tooltip
            button:SetScript("OnEnter", function(self)
                GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
                local poiEntry = LoreTeller.ZoneLoreTracker.currentNearbyPOI
                if poiEntry then
                    GameTooltip:SetText("World Lore: " .. (poiEntry.subZone or poiEntry.zoneName), 1, 0.82, 0)
                    GameTooltip:AddLine("Click to replay", 1, 1, 1)
                    GameTooltip:AddLine("Drag to move", 0.5, 0.5, 0.5)
                end
                GameTooltip:Show()
            end)
            
            button:SetScript("OnLeave", function()
                GameTooltip:Hide()
            end)
            
            Debug:Print("ZoneLoreTracker: Lore replay button created")
        end
    end
end

---Handle click on the lore replay button
function ZoneLoreTracker:OnLoreReplayClick()
    if not self.currentNearbyPOI then return end
    
    -- Revert to book icon when clicked
    self:ShowBookIcon()
    
    -- Check if lore is currently playing - if so, stop it
    local currentSound = SoundQueue:GetCurrentSound()
    if currentSound and Enums.SoundEvent:IsLoreEvent(currentSound.event) then
        SoundQueue:RemoveSoundFromQueue(currentSound)
        Debug:Print("ZoneLoreTracker: Stopped playing lore")
        return
    end
    
    local poiEntry = self.currentNearbyPOI
    local zoneID = self.currentZone
    
    if not zoneID then return end
    
    Debug:Print(format("ZoneLoreTracker: Replaying lore for %s", poiEntry.subZone or poiEntry.zoneName))
    
    -- Create SoundData for replay
    ---@type SoundData
    local soundData = {
        event = poiEntry.subZone and Enums.SoundEvent.POILore or Enums.SoundEvent.ZoneLore,
        name = poiEntry.subZone or poiEntry.zoneName,
        title = format("World Lore: %s", poiEntry.subZone or poiEntry.zoneName),
        text = poiEntry.loreText or "",
        fileName = poiEntry.audioFile,
        zoneID = zoneID,
        subZone = poiEntry.subZone,
        loreSource = poiEntry.source,
    }
    
    SoundQueue:AddSoundToQueue(soundData)
end

---Set new discovered lore and show glow effect
---@param poiEntry table The POI entry that was discovered
function ZoneLoreTracker:SetNewDiscoveredLore(poiEntry)
    if not self.loreReplayButton then return end
    
    -- Update the current and last discovered lore
    self.currentNearbyPOI = poiEntry
    self.lastDiscoveredLore = poiEntry
    
    -- Save to character data for persistence
    Addon.db.char.lastDiscoveredLore = {
        subZone = poiEntry.subZone,
        zoneName = poiEntry.zoneName,
        audioFile = poiEntry.audioFile,
        loreText = poiEntry.loreText,
        source = poiEntry.source,
        zoneID = self.currentZone,
    }
    
    self.loreReplayButton:Show()
    
    -- Show thumbnail image instead of book for new lore
    self:ShowThumbnail(poiEntry)
    
    -- Start the glow animation for new discovery
    if self.loreReplayButton.glowAnim then
        self.loreReplayButton.glow:SetAlpha(0.3)
        self.loreReplayButton.glowAnim:Play()
        
        -- Stop glow after 5 seconds
        Addon:ScheduleTimer(function()
            if self.loreReplayButton and self.loreReplayButton.glowAnim then
                self.loreReplayButton.glowAnim:Stop()
                self.loreReplayButton.glow:SetAlpha(0)
            end
        end, 5)
    end
    
    Debug:Print(format("ZoneLoreTracker: New lore discovered: %s", poiEntry.subZone or poiEntry.zoneName))
end

---Show the lore replay button (called when near a discovered POI)
---@param poiEntry table The POI entry to show replay for
function ZoneLoreTracker:ShowLoreReplayButton(poiEntry)
    if not self.loreReplayButton then return end
    
    -- Only update if different from current
    if self.currentNearbyPOI and self.currentNearbyPOI.audioFile == poiEntry.audioFile then
        return
    end
    
    self.currentNearbyPOI = poiEntry
    self.loreReplayButton:Show()
    
    -- Show thumbnail for the new POI
    self:ShowThumbnail(poiEntry)
    
    Debug:Print(format("ZoneLoreTracker: Showing replay button for %s", poiEntry.subZone or poiEntry.zoneName))
end

---Show thumbnail image on the button
---@param poiEntry table The POI entry to show thumbnail for
function ZoneLoreTracker:ShowThumbnail(poiEntry)
    if not self.loreReplayButton or not poiEntry then return end
    
    -- Get the image path for this POI
    local imagePath = nil
    if poiEntry.audioFile then
        imagePath = format([[Interface\AddOns\AI_LoreTellerData_Vanilla\generated\images\zonelore\%s.tga]], poiEntry.audioFile)
    end
    
    if imagePath and self.loreReplayButton.thumbnail then
        -- Set the thumbnail texture
        self.loreReplayButton.thumbnail:SetTexture(imagePath)
        
        -- Crop to fit square using vertical height (image is 1920x817, ratio ~2.35:1)
        local cropAmount = (1 - (817/1920)) / 2  -- ~0.287
        self.loreReplayButton.thumbnail:SetTexCoord(cropAmount, 1 - cropAmount, 0, 1)
        
        -- Show thumbnail and border, hide normal texture
        self.loreReplayButton.thumbnail:Show()
        self.loreReplayButton:SetNormalTexture("")
        if self.loreReplayButton.border then
            self.loreReplayButton.border:Show()
        end
        self.loreReplayButton.showingThumbnail = true
    end
end

---Revert button to book icon
function ZoneLoreTracker:ShowBookIcon()
    if not self.loreReplayButton then return end
    
    -- Hide thumbnail and border, show book
    if self.loreReplayButton.thumbnail then
        self.loreReplayButton.thumbnail:Hide()
    end
    if self.loreReplayButton.border then
        self.loreReplayButton.border:Hide()
    end
    self.loreReplayButton:SetNormalTexture(self.loreReplayButton.bookTexture or "Interface\\Icons\\INV_Misc_Book_09")
    self.loreReplayButton.showingThumbnail = false
end

---Hide the lore replay button - now just stops glow, doesn't hide
function ZoneLoreTracker:HideLoreReplayButton()
    if not self.loreReplayButton then return end
    
    -- Stop the glow animation but keep button visible
    if self.loreReplayButton.glowAnim then
        self.loreReplayButton.glowAnim:Stop()
        self.loreReplayButton.glow:SetAlpha(0)
    end
    
    -- Revert to last discovered lore if we have one - keep button visible
    if self.lastDiscoveredLore then
        self.currentNearbyPOI = self.lastDiscoveredLore
    end
    -- Don't hide the button - it stays visible with last discovered lore
end

---Get the current zone ID from the zone name
---@param zoneName string The zone name from GetRealZoneText()
---@return number|nil zoneID The zone ID if found in ZoneLoreData
function ZoneLoreTracker:GetZoneIDFromName(zoneName)
    if not zoneName then
        return nil
    end
    
    -- Search through ZoneLoreData to find matching zone name
    for zoneID, loreEntries in pairs(ZoneLoreData) do
        if loreEntries and getn(loreEntries) > 0 then
            -- Check the first entry's zoneName
            if loreEntries[1] and loreEntries[1].zoneName == zoneName then
                return zoneID
            end
        end
    end
    
    return nil
end

---Check if a zone has been discovered
---@param zoneID number The zone ID to check
---@return boolean discovered True if the zone has been discovered
function ZoneLoreTracker:IsZoneDiscovered(zoneID)
    -- Handle edge case: invalid zone ID
    if not zoneID or type(zoneID) ~= "number" then
        return false
    end
    
    if not Addon.db.char.discoveredLore or not Addon.db.char.discoveredLore.zones then
        return false
    end
    return Addon.db.char.discoveredLore.zones[zoneID] == true
end

---Check if a POI has been discovered
---@param zoneID number The zone ID
---@param subZone string The subzone/POI name
---@return boolean discovered True if the POI has been discovered
function ZoneLoreTracker:IsPOIDiscovered(zoneID, subZone)
    -- Handle edge case: invalid parameters
    if not zoneID or type(zoneID) ~= "number" or not subZone or subZone == "" then
        return false
    end
    
    if not Addon.db.char.discoveredLore or not Addon.db.char.discoveredLore.pois then
        return false
    end
    local poiKey = format("%d-%s", zoneID, subZone)
    return Addon.db.char.discoveredLore.pois[poiKey] == true
end

---Mark a zone as discovered
---@param zoneID number The zone ID to mark as discovered
function ZoneLoreTracker:MarkZoneDiscovered(zoneID)
    if not Addon.db.char.discoveredLore then
        Addon.db.char.discoveredLore = { zones = {}, pois = {} }
    end
    if not Addon.db.char.discoveredLore.zones then
        Addon.db.char.discoveredLore.zones = {}
    end
    
    -- Get zone name for better logging
    local zoneName = "Unknown"
    local loreEntries = ZoneLoreData[zoneID]
    if loreEntries and loreEntries[1] then
        zoneName = loreEntries[1].zoneName
    end
    
    Addon.db.char.discoveredLore.zones[zoneID] = true
    Debug:Print(format("ZoneLoreTracker: Discovery state changed - Zone '%s' (ID: %d) marked as discovered", zoneName, zoneID))
end

---Mark a POI as discovered
---@param zoneID number The zone ID
---@param subZone string The subzone/POI name
function ZoneLoreTracker:MarkPOIDiscovered(zoneID, subZone)
    if not Addon.db.char.discoveredLore then
        Addon.db.char.discoveredLore = { zones = {}, pois = {} }
    end
    if not Addon.db.char.discoveredLore.pois then
        Addon.db.char.discoveredLore.pois = {}
    end
    local poiKey = format("%d-%s", zoneID, subZone)
    Addon.db.char.discoveredLore.pois[poiKey] = true
    Debug:Print(format("ZoneLoreTracker: Discovery state changed - POI '%s' in zone %d marked as discovered (key: %s)", 
        subZone, zoneID, poiKey))
end

---Handle zone change events
function ZoneLoreTracker:OnZoneChanged()
    -- Get current zone name - try multiple sources
    local zoneName = GetRealZoneText()
    local zoneID = nil
    
    -- Try to get zone ID from the zone name
    if zoneName and zoneName ~= "" then
        zoneID = self:GetZoneIDFromName(zoneName)
    end
    
    -- If not found, try GetZoneText (might be different in some cases)
    if not zoneID then
        local altZone = GetZoneText()
        if altZone and altZone ~= "" then
            zoneID = self:GetZoneIDFromName(altZone)
            if zoneID then
                zoneName = altZone
            end
        end
    end
    
    -- If still not found, try GetMinimapZoneText (usually shows main zone)
    if not zoneID then
        local minimapZone = GetMinimapZoneText()
        if minimapZone and minimapZone ~= "" then
            zoneID = self:GetZoneIDFromName(minimapZone)
            if zoneID then
                zoneName = minimapZone
            end
        end
    end
    
    -- If still not found, we might be in a subzone (like "Lion's Pride Inn")
    -- Use the last known valid zone if we have one
    if not zoneID and self.currentZone then
        zoneID = self.currentZone
        Debug:Print(format("ZoneLoreTracker: Using cached zone %d for subzone '%s'", zoneID, zoneName or "unknown"))
    end
    
    -- Hardcoded indoor subzone to parent zone mappings
    local indoorSubzoneToZone = {
        -- Elwynn Forest (12)
        ["Lion's Pride Inn"] = 12,
        -- Stormwind City (1519)
        ["The Stockade"] = 1519,
        ["Wizard's Sanctum"] = 1519,
        ["Cathedral of Light"] = 1519,
        ["SI:7 Headquarters"] = 1519,
        ["Deeprun Tram"] = 1519,
        -- Ironforge (1537)
        ["City of Ironforge"] = 1537,
        ["The High Seat"] = 1537,
        ["Hall of Explorers"] = 1537,
        ["Hall of Mysteries"] = 1537,
        ["The Mystic Ward"] = 1537,
        ["The Military Ward"] = 1537,
        ["The Commons"] = 1537,
        ["The Great Forge"] = 1537,
        ["Tinker Town"] = 1537,
        ["The Forlorn Cavern"] = 1537,
        -- Darnassus (1657)
        ["Temple of the Moon"] = 1657,
    }
    
    if not zoneID and zoneName then
        zoneID = indoorSubzoneToZone[zoneName]
        if zoneID then
            Debug:Print(format("ZoneLoreTracker: Using hardcoded zone %d for indoor subzone '%s'", zoneID, zoneName))
        end
    end
    
    if not zoneID then
        Debug:Print(format("ZoneLoreTracker: No lore data for zone '%s' (edge case: zone not in lore database)", zoneName or "unknown"))
        return
    end
    
    -- Prevent duplicate triggers if we're already in this zone
    if self.currentZone == zoneID then
        Debug:Print(format("ZoneLoreTracker: Already in zone %d, skipping duplicate trigger", zoneID))
        return
    end
    
    -- Update current zone
    self.currentZone = zoneID
    Debug:Print(format("ZoneLoreTracker: Entered zone %s (ID: %d)", zoneName, zoneID))
    
    -- Check if zone lore is enabled
    if not Addon.db.profile.ZoneLore or not Addon.db.profile.ZoneLore.Enabled then
        Debug:Print("ZoneLoreTracker: Zone lore is disabled in configuration")
        return
    end
    
    -- Check if zone already discovered
    if self:IsZoneDiscovered(zoneID) then
        Debug:Print(format("ZoneLoreTracker: Zone %d already discovered in this session", zoneID))
        return
    end
    
    -- Find zone lore entry (entry without subZone)
    local loreEntries = ZoneLoreData[zoneID]
    if not loreEntries or getn(loreEntries) == 0 then
        Debug:Print(format("ZoneLoreTracker: No lore entries for zone %d (edge case: empty lore data)", zoneID))
        return
    end
    
    local zoneLoreEntry = nil
    for _, entry in ipairs(loreEntries) do
        if not entry.subZone then
            zoneLoreEntry = entry
            break
        end
    end
    
    if not zoneLoreEntry then
        Debug:Print(format("ZoneLoreTracker: No zone lore entry found for zone %d (edge case: only POI entries exist)", zoneID))
        return
    end
    
    -- Validate zone lore entry has required fields
    if not zoneLoreEntry.audioFile then
        Debug:Print(format("ZoneLoreTracker: Zone lore entry for zone %d is incomplete (edge case: missing audioFile)", zoneID))
        return
    end
    
    -- Create SoundData for zone lore
    ---@type SoundData
    local soundData = {
        event = Enums.SoundEvent.ZoneLore,
        name = zoneLoreEntry.zoneName,
        title = format("World Lore: %s", zoneLoreEntry.zoneName),
        text = zoneLoreEntry.loreText or "",
        fileName = zoneLoreEntry.audioFile,
        zoneID = zoneID,
        loreSource = zoneLoreEntry.source,
        addedCallback = function(sd)
            Debug:Print(format("Zone lore added to queue: %s", zoneLoreEntry.zoneName))
        end,
        startCallback = function(sd)
            self:MarkZoneDiscovered(zoneID)
            -- Set this as the new discovered lore with glow effect
            self:SetNewDiscoveredLore(zoneLoreEntry)
            Debug:Print(format("Zone lore started playing: %s", zoneLoreEntry.zoneName))
        end,
        stopCallback = function(sd)
            Debug:Print(format("Zone lore stopped: %s", zoneLoreEntry.zoneName))
        end,
    }
    
    -- Add to sound queue
    SoundQueue:AddSoundToQueue(soundData)
    Debug:Print(format("ZoneLoreTracker: Queued zone lore for %s", zoneLoreEntry.zoneName))
end

---Get player position in current zone
---@return number|nil x X coordinate as percentage (0-100)
---@return number|nil y Y coordinate as percentage (0-100)
function ZoneLoreTracker:GetPlayerPosition()
    -- Execute in global environment to avoid setfenv issues with mixins
    local getPos = loadstring([[
        local mapID = C_Map.GetBestMapForUnit("player")
        if not mapID then return nil, nil end
        local pos = C_Map.GetPlayerMapPosition(mapID, "player")
        if not pos then return nil, nil end
        local x, y = pos:GetXY()
        if not x or not y or (x == 0 and y == 0) then return nil, nil end
        return x * 100, y * 100
    ]])
    
    if getPos then
        local ok, x, y = pcall(getPos)
        if ok and x and y then
            return x, y
        end
    end
    
    return nil, nil
end

---Calculate distance between two points
---@param x1 number First point X coordinate
---@param y1 number First point Y coordinate
---@param x2 number Second point X coordinate
---@param y2 number Second point Y coordinate
---@return number distance Distance between the points
function ZoneLoreTracker:CalculateDistance(x1, y1, x2, y2)
    local dx = x2 - x1
    local dy = y2 - y1
    return math.sqrt(dx * dx + dy * dy)
end

---Check if player is within radius of a POI
---@param playerX number Player X coordinate (0-100)
---@param playerY number Player Y coordinate (0-100)
---@param poiX number POI X coordinate (0-100)
---@param poiY number POI Y coordinate (0-100)
---@param radius number Discovery radius in yards
---@return boolean withinRadius True if player is within the radius
function ZoneLoreTracker:IsWithinRadius(playerX, playerY, poiX, poiY, radius)
    -- Calculate distance in coordinate space (0-100 range)
    local distance = self:CalculateDistance(playerX, playerY, poiX, poiY)
    
    -- Convert radius from yards to coordinate space
    -- WoW zones vary but average ~2000-3000 yards across
    -- 100 coord units = ~2500 yards, so 1 yard = 0.04 coord units
    -- For 50 yards: 50 * 0.04 = 2 coord units
    local radiusInCoords = radius * 0.04
    
    return distance <= radiusInCoords
end

---Update function called periodically to check POI proximity
---@param elapsed number Time elapsed since last update
function ZoneLoreTracker:OnUpdate(elapsed)
    -- Throttle checks to every checkInterval seconds
    self.lastCheckTime = self.lastCheckTime + elapsed
    if self.lastCheckTime < self.checkInterval then
        return
    end
    self.lastCheckTime = 0
    
    -- Check if zone lore is enabled
    if not Addon.db.profile.ZoneLore or not Addon.db.profile.ZoneLore.Enabled then
        self:HideLoreReplayButton()
        return
    end
    
    -- Get current subzone text from the game (e.g., "Goldshire", "Lion's Pride Inn")
    -- Try multiple sources: GetSubZoneText, GetMinimapZoneText, GetRealZoneText
    local currentSubZone = GetSubZoneText() or ""
    local minimapZone = GetMinimapZoneText() or ""
    
    -- Prefer minimap zone text if subzone is empty or generic
    if currentSubZone == "" or currentSubZone == "City of Ironforge" then
        if minimapZone ~= "" and minimapZone ~= "Ironforge" then
            currentSubZone = minimapZone
        end
    end
    
    -- If still empty, try using the zone text (for indoor locations)
    if currentSubZone == "" then
        local zoneText = GetRealZoneText() or ""
        if zoneText ~= "" then
            currentSubZone = zoneText
        end
    end
    
    -- Debug: Log current subzone periodically (every 10 seconds to reduce spam)
    self.lastSubZoneLogTime = self.lastSubZoneLogTime or 0
    if GetTime() - self.lastSubZoneLogTime > 10 then
        self.lastSubZoneLogTime = GetTime()
        local playerX, playerY = self:GetPlayerPosition()
        Debug:Print(format("ZoneLoreTracker: subzone='%s', minimap='%s', pos=(%.1f, %.1f)", 
            GetSubZoneText() or "", minimapZone, playerX or 0, playerY or 0))
    end
    
    -- Get player position for radius-based checks
    local playerX, playerY = self:GetPlayerPosition()
    local poiRadius = Addon.db.profile.ZoneLore.POIRadius or 75
    
    -- Indoor locations where coordinates don't work - match by name only
    local indoorOverrides = {
        ["Lion's Pride Inn"] = true,
        ["Deeprun Tram"] = true,
    }
    local isIndoorOverride = indoorOverrides[currentSubZone] or indoorOverrides[minimapZone]
    
    -- STEP 1: Find subzone or zone match by searching ALL zones
    local subZoneMatchedPOI = nil
    local subZoneMatchedDiscovered = nil
    local subZoneMatchedZoneID = nil
    local zoneEntryMatch = nil  -- For zone-level entries (no subZone)
    local zoneEntryMatchZoneID = nil
    
    if currentSubZone ~= "" then
        for zoneID, loreEntries in pairs(ZoneLoreData) do
            if loreEntries then
                for _, entry in ipairs(loreEntries) do
                    -- Check for subZone match (POI-level)
                    if entry.subZone and entry.subZone == currentSubZone then
                        subZoneMatchedZoneID = zoneID
                        if self:IsPOIDiscovered(zoneID, entry.subZone) then
                            subZoneMatchedDiscovered = entry
                            Debug:Print(format("ZoneLoreTracker: Subzone '%s' matched (already discovered)", currentSubZone))
                        else
                            subZoneMatchedPOI = entry
                            Debug:Print(format("ZoneLoreTracker: Subzone '%s' matched (undiscovered)", currentSubZone))
                        end
                        break
                    -- Check for zone-level match (entry without subZone, zoneName matches)
                    elseif not entry.subZone and entry.zoneName and entry.zoneName == currentSubZone then
                        zoneEntryMatchZoneID = zoneID
                        zoneEntryMatch = entry
                    end
                end
            end
            if subZoneMatchedZoneID then break end
        end
    end
    
    -- Update current zone if we found a match
    -- Track zone-level matches separately - they shouldn't block radius checks
    local zoneEntryMatchedPOI = nil
    local zoneEntryMatchedDiscovered = nil
    
    if subZoneMatchedZoneID then
        self.currentZone = subZoneMatchedZoneID
    elseif zoneEntryMatchZoneID then
        self.currentZone = zoneEntryMatchZoneID
        -- Track zone entry match separately (don't mix with subzone matches)
        if self:IsZoneDiscovered(zoneEntryMatchZoneID) then
            zoneEntryMatchedDiscovered = zoneEntryMatch
        else
            zoneEntryMatchedPOI = zoneEntryMatch
        end
    end
    
    -- INDOOR OVERRIDE: For locations like Lion's Pride Inn, skip radius and trigger on name match
    if isIndoorOverride and subZoneMatchedPOI then
        Debug:Print(format("ZoneLoreTracker: Indoor override - triggering '%s' by name", currentSubZone))
        self:TriggerPOILore(subZoneMatchedPOI)
        return
    elseif isIndoorOverride and subZoneMatchedDiscovered then
        -- Already discovered, just show replay button
        self:ShowLoreReplayButton(subZoneMatchedDiscovered)
        return
    end
    
    -- STEP 2: Check radius-based POIs (HIGHEST PRIORITY)
    -- Always check radius first - closest POI wins regardless of subzone name
    local undiscoveredPOIs = {}
    local closestDiscoveredPOI = nil
    local closestDiscoveredDistance = 999999
    
    if self.currentZone and playerX and playerY then
        local loreEntries = ZoneLoreData[self.currentZone]
        if loreEntries then
            for _, entry in ipairs(loreEntries) do
                -- Only check POIs that have coordinates defined
                if entry.subZone and entry.x and entry.y then
                    local radius = entry.radius or poiRadius
                    local distance = self:CalculateDistance(playerX, playerY, entry.x, entry.y)
                    
                    if self:IsWithinRadius(playerX, playerY, entry.x, entry.y, radius) then
                        if self:IsPOIDiscovered(self.currentZone, entry.subZone) then
                            if distance < closestDiscoveredDistance then
                                closestDiscoveredPOI = entry
                                closestDiscoveredDistance = distance
                            end
                        else
                            table.insert(undiscoveredPOIs, {
                                entry = entry,
                                distance = distance,
                            })
                        end
                    end
                end
            end
        end
    end
    
    -- STEP 3: Determine final POI
    -- Priority: 1) Radius-based match (closest), 2) Subzone name match, 3) Zone-level match
    if getn(undiscoveredPOIs) == 0 then
        -- No radius matches - fall back to subzone name match
        if subZoneMatchedPOI and subZoneMatchedPOI.subZone then
            undiscoveredPOIs = {{ entry = subZoneMatchedPOI, distance = 0 }}
        elseif zoneEntryMatchedPOI then
            -- Zone-level entry - trigger it directly here since TriggerPOILore expects subZone
            self:TriggerZoneLore(zoneEntryMatchedPOI, zoneEntryMatchZoneID)
        end
    end
    
    -- For discovered POIs: radius match > subzone match > zone-level match
    if not closestDiscoveredPOI then
        if subZoneMatchedDiscovered then
            closestDiscoveredPOI = subZoneMatchedDiscovered
        elseif zoneEntryMatchedDiscovered then
            closestDiscoveredPOI = zoneEntryMatchedDiscovered
        end
    end
    
    -- Debug: Show what we found (only log "no match" when subzone changes to reduce spam)
    if subZoneMatchedDiscovered or subZoneMatchedPOI then
        Debug:Print(format("ZoneLoreTracker: Subzone match found for '%s'", currentSubZone))
    elseif closestDiscoveredPOI then
        Debug:Print(format("ZoneLoreTracker: Radius match found: %s", closestDiscoveredPOI.subZone or "zone"))
    elseif self.lastNoMatchSubZone ~= currentSubZone then
        -- Only log "no match" once per subzone to reduce spam
        Debug:Print(format("ZoneLoreTracker: No match for '%s' in zone %s", currentSubZone, tostring(self.currentZone)))
        self.lastNoMatchSubZone = currentSubZone
    end
    
    -- Show/hide replay button based on nearby discovered POIs
    if closestDiscoveredPOI then
        -- Get identifier for comparison (use subZone or zoneName for zone-level entries)
        local currentID = closestDiscoveredPOI.subZone or closestDiscoveredPOI.zoneName
        local previousID = self.currentNearbyPOI and (self.currentNearbyPOI.subZone or self.currentNearbyPOI.zoneName)
        
        -- Only update if it's a different POI
        if currentID ~= previousID then
            self:ShowLoreReplayButton(closestDiscoveredPOI)
            self.isRevertedToLastLore = false
        end
    else
        -- No discovered POIs nearby - revert to last lore (only once)
        if not self.isRevertedToLastLore then
            self:HideLoreReplayButton()
            self.isRevertedToLastLore = true
        end
    end
    
    -- If multiple undiscovered POIs are in range, trigger the closest one
    if getn(undiscoveredPOIs) > 0 then
        Debug:Print(format("ZoneLoreTracker: Found %d undiscovered POIs in range", getn(undiscoveredPOIs)))
        
        -- Find closest POI manually (avoid table.sort issues in WoW Lua)
        local closestPOI = nil
        local closestDistance = 999999
        for i = 1, getn(undiscoveredPOIs) do
            local poi = undiscoveredPOIs[i]
            if poi and poi.entry and poi.distance < closestDistance then
                closestPOI = poi.entry
                closestDistance = poi.distance
            end
        end
        
        -- Trigger the closest POI
        if closestPOI and closestPOI.subZone then
            Debug:Print(format("ZoneLoreTracker: Triggering closest POI: %s (distance: %.2f)", 
                closestPOI.subZone, closestDistance))
            self:TriggerPOILore(closestPOI)
        else
            Debug:Print("ZoneLoreTracker: ERROR - closestPOI is nil or missing subZone")
        end
    end
end

---Clear any queued (not currently playing) lore sounds
---This prevents queue buildup when running through multiple areas quickly
function ZoneLoreTracker:ClearQueuedLore()
    local queueSize = SoundQueue:GetQueueSize()
    if queueSize <= 1 then return end  -- Nothing queued (only current playing or empty)
    
    -- Get sounds to remove (skip index 1 which is currently playing)
    local toRemove = {}
    for i = 2, queueSize do
        local sound = SoundQueue.sounds[i]
        if sound and Enums.SoundEvent:IsLoreEvent(sound.event) then
            table.insert(toRemove, sound)
        end
    end
    
    -- Remove queued lore sounds
    for _, sound in ipairs(toRemove) do
        SoundQueue:RemoveSoundFromQueue(sound)
        Debug:Print(format("ZoneLoreTracker: Cleared queued lore: %s", sound.name or "Unknown"))
    end
end

---Trigger zone-level lore LoreTeller (for entries without subZone)
---@param zoneEntry table The zone lore entry to trigger
---@param zoneID number The zone ID
function ZoneLoreTracker:TriggerZoneLore(zoneEntry, zoneID)
    if not zoneEntry or not zoneEntry.audioFile or not zoneID then
        Debug:Print("ZoneLoreTracker: Zone lore entry is incomplete")
        return
    end
    
    -- Prevent duplicate triggers
    local currentTime = GetTime()
    local poiKey = format("%d-zone", zoneID)
    if self.lastTriggeredPOI == poiKey and (currentTime - self.lastTriggeredTime) < 5 then
        return
    end
    
    -- Check if already discovered
    if self:IsZoneDiscovered(zoneID) then
        Debug:Print(format("ZoneLoreTracker: Zone %s already discovered", zoneEntry.zoneName))
        return
    end
    
    Debug:Print(format("ZoneLoreTracker: Triggering zone lore for %s", zoneEntry.zoneName))
    
    self.lastTriggeredPOI = poiKey
    self.lastTriggeredTime = currentTime
    
    -- Clear queued lore
    self:ClearQueuedLore()
    
    -- Create SoundData for zone lore
    local soundData = {
        event = Enums.SoundEvent.ZoneLore,
        name = zoneEntry.zoneName,
        title = format("World Lore: %s", zoneEntry.zoneName),
        text = zoneEntry.loreText or "",
        fileName = zoneEntry.audioFile,
        zoneID = zoneID,
        loreSource = zoneEntry.source,
        startCallback = function(sd)
            self:MarkZoneDiscovered(zoneID)
            self:SetNewDiscoveredLore(zoneEntry)
            Debug:Print(format("Zone lore started: %s", zoneEntry.zoneName))
        end,
    }
    
    SoundQueue:AddSoundToQueue(soundData)
end

---Trigger POI lore LoreTeller
---@param poiEntry ZoneLoreEntry The POI lore entry to trigger
function ZoneLoreTracker:TriggerPOILore(poiEntry)
    -- Validate POI entry has required fields
    if not poiEntry or not poiEntry.subZone or not poiEntry.audioFile then
        Debug:Print("ZoneLoreTracker: POI lore entry is incomplete (edge case: missing required fields)")
        return
    end
    
    -- Use currentZone since entries don't have zoneID field
    local zoneID = self.currentZone
    if not zoneID then
        Debug:Print("ZoneLoreTracker: No current zone set, cannot trigger POI")
        return
    end
    
    -- Prevent duplicate triggers within same session (edge case: rapid position updates)
    local currentTime = GetTime()
    local poiKey = format("%d-%s", zoneID, poiEntry.subZone)
    if self.lastTriggeredPOI == poiKey and (currentTime - self.lastTriggeredTime) < 5 then
        Debug:Print(format("ZoneLoreTracker: POI '%s' was just triggered %.1f seconds ago, preventing duplicate", 
            poiEntry.subZone, currentTime - self.lastTriggeredTime))
        return
    end
    
    -- Clear any queued (not playing) lore sounds before adding new one
    self:ClearQueuedLore()
    
    Debug:Print(format("ZoneLoreTracker: Triggering POI lore for %s", poiEntry.subZone))
    
    -- Update last triggered tracking
    self.lastTriggeredPOI = poiKey
    self.lastTriggeredTime = currentTime
    
    -- Create SoundData for POI lore
    ---@type SoundData
    local soundData = {
        event = Enums.SoundEvent.POILore,
        name = poiEntry.subZone,
        title = format("World Lore: %s", poiEntry.subZone),
        text = poiEntry.loreText or "",
        fileName = poiEntry.audioFile,
        zoneID = zoneID,
        subZone = poiEntry.subZone,
        loreSource = poiEntry.source,
        addedCallback = function(sd)
            Debug:Print(format("POI lore added to queue: %s", poiEntry.subZone))
        end,
        startCallback = function(sd)
            self:MarkPOIDiscovered(zoneID, poiEntry.subZone)
            -- Set this as the new discovered lore with glow effect
            self:SetNewDiscoveredLore(poiEntry)
            Debug:Print(format("POI lore started playing: %s", poiEntry.subZone))
        end,
        stopCallback = function(sd)
            Debug:Print(format("POI lore stopped: %s", poiEntry.subZone))
        end,
    }
    
    -- Add to sound queue
    SoundQueue:AddSoundToQueue(soundData)
    Debug:Print(format("ZoneLoreTracker: Queued POI lore for %s", poiEntry.subZone))
end
