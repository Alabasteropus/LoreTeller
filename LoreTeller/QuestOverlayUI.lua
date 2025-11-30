setfenv(1, LoreTeller)

---@class QuestPlayButton : Button
---@field soundData SoundData

QuestOverlayUI = {
    ---@type table<number, QuestPlayButton>
    questPlayButtons = {},
    ---@type QuestPlayButton[]
    displayedButtons = {},
    ---@type table<string, QuestPlayButton>
    loreButtons = {},
    ---@type QuestPlayButton[]
    displayedLoreButtons = {},
}

function QuestOverlayUI:CreatePlayButton(questID)
    local playButton = CreateFrame("Button", nil, QuestLogFrame)
    playButton:SetWidth(20)
    playButton:SetHeight(20)
    playButton:SetHitRectInsets(2, 2, 2, 2)
    playButton:SetNormalTexture([[Interface\AddOns\AI_LoreTeller\Textures\QuestLogPlayButton]])
    playButton:SetDisabledTexture([[Interface\AddOns\AI_LoreTeller\Textures\QuestLogPlayButton]])
    playButton:GetDisabledTexture():SetDesaturated(true)
    playButton:GetDisabledTexture():SetAlpha(0.33)
    playButton:SetHighlightTexture("Interface\\BUTTONS\\UI-Panel-MinimizeButton-Highlight")
    ---@cast playButton QuestPlayButton
    self.questPlayButtons[questID] = playButton
end

function QuestOverlayUI:CreateLorePlayButton(loreKey)
    local playButton = CreateFrame("Button", nil, QuestLogFrame)
    playButton:SetWidth(20)
    playButton:SetHeight(20)
    playButton:SetHitRectInsets(2, 2, 2, 2)
    playButton:SetNormalTexture([[Interface\AddOns\AI_LoreTeller\Textures\QuestLogPlayButton]])
    playButton:SetDisabledTexture([[Interface\AddOns\AI_LoreTeller\Textures\QuestLogPlayButton]])
    playButton:GetDisabledTexture():SetDesaturated(true)
    playButton:GetDisabledTexture():SetAlpha(0.33)
    playButton:SetHighlightTexture("Interface\\BUTTONS\\UI-Panel-MinimizeButton-Highlight")
    ---@cast playButton QuestPlayButton
    self.loreButtons[loreKey] = playButton
end

local prefix
function QuestOverlayUI:UpdateQuestTitle(questLogTitleFrame, playButton, normalText, questCheck)
    if not prefix then
        local text = normalText:GetText()
        for i = 1, 20 do
            normalText:SetText(string.rep(" ", i))
            if normalText:GetStringWidth() >= 24 then
                prefix = normalText:GetText()
                break
            end
        end
        prefix = prefix or "  "
        normalText:SetText(text)
    end

    playButton:SetPoint("LEFT", normalText, "LEFT", 4, 0)

    local formatedText = prefix .. string.trim(normalText:GetText() or "")

    normalText:SetText(formatedText)
    QuestLogDummyText:SetText(formatedText)

    questCheck:SetPoint("LEFT", normalText, "LEFT", normalText:GetStringWidth(), 0)
end

function QuestOverlayUI:UpdatePlayButtonTexture(questID)
    local button = self.questPlayButtons[questID]
    if button then
        local isPlaying = button.soundData and SoundQueue:Contains(button.soundData)
        local texturePath = isPlaying and [[Interface\AddOns\AI_LoreTeller\Textures\QuestLogStopButton]] or [[Interface\AddOns\AI_LoreTeller\Textures\QuestLogPlayButton]]
        button:SetNormalTexture(texturePath)
    end
end

function QuestOverlayUI:UpdateLoreButtonTexture(loreKey)
    local button = self.loreButtons[loreKey]
    if button then
        local isPlaying = button.soundData and SoundQueue:Contains(button.soundData)
        local texturePath = isPlaying and [[Interface\AddOns\AI_LoreTeller\Textures\QuestLogStopButton]] or [[Interface\AddOns\AI_LoreTeller\Textures\QuestLogPlayButton]]
        button:SetNormalTexture(texturePath)
    end
end

function QuestOverlayUI:UpdatePlayButton(soundTitle, questID, questLogTitleFrame, normalText, questCheck)
    self.questPlayButtons[questID]:SetParent(questLogTitleFrame:GetParent())
    self.questPlayButtons[questID]:SetFrameLevel(questLogTitleFrame:GetFrameLevel() + 2)

    QuestOverlayUI:UpdateQuestTitle(questLogTitleFrame, self.questPlayButtons[questID], normalText, questCheck)

    self.questPlayButtons[questID]:SetScript("OnClick", function(self)
        if not QuestOverlayUI.questPlayButtons[questID].soundData then
            local type, id = DataModules:GetQuestLogQuestGiverTypeAndID(questID)
            QuestOverlayUI.questPlayButtons[questID].soundData = {
                event = Enums.SoundEvent.QuestAccept,
                questID = questID,
                name = id and DataModules:GetObjectName(type, id) or "Unknown Name",
                title = soundTitle,
                unitGUID = id and Enums.GUID:CanHaveID(type) and Utils:MakeGUID(type, id) or nil
            }
        end

        local soundData = self.soundData
        local questID = soundData.questID
        local isPlaying = SoundQueue:Contains(soundData)

        if not isPlaying then
            SoundQueue:AddSoundToQueue(soundData)
            QuestOverlayUI:UpdatePlayButtonTexture(questID)

            soundData.stopCallback = function()
                QuestOverlayUI:UpdatePlayButtonTexture(questID)
                self.soundData = nil
            end
        else
            SoundQueue:RemoveSoundFromQueue(soundData)
        end
    end)
end

function QuestOverlayUI:UpdateLoreDisplay()
    -- Hide all lore buttons in displayedLoreButtons
    for _, button in pairs(self.displayedLoreButtons) do
        button:Hide()
    end
    
    -- Clear displayedLoreButtons
    table.wipe(self.displayedLoreButtons)
    
    -- Check if zone lore is enabled and should be shown in quest log
    if not Addon.db.profile.ZoneLore or not Addon.db.profile.ZoneLore.Enabled or not Addon.db.profile.ZoneLore.ShowInQuestLog then
        return
    end
    
    -- Check if we have discovered lore data
    if not Addon.db.char.discoveredLore then
        return
    end
    
    -- Collect all discovered lore entries
    local discoveredLoreEntries = {}
    
    -- Add discovered zones
    if Addon.db.char.discoveredLore.zones then
        for zoneID, _ in pairs(Addon.db.char.discoveredLore.zones) do
            local zoneLoreData = ZoneLoreData[zoneID]
            if zoneLoreData then
                for _, loreEntry in ipairs(zoneLoreData) do
                    if not loreEntry.subZone then
                        -- This is a zone entry
                        local loreKey = format("zone-%d", zoneID)
                        table.insert(discoveredLoreEntries, {
                            key = loreKey,
                            displayName = format("World Lore: %s", loreEntry.zoneName),
                            loreText = loreEntry.loreText,
                            source = loreEntry.source,
                            loreEntry = loreEntry,
                        })
                    end
                end
            end
        end
    end
    
    -- Add discovered POIs
    if Addon.db.char.discoveredLore.pois then
        for poiKey, _ in pairs(Addon.db.char.discoveredLore.pois) do
            -- Parse the POI key (format: "zoneID-subZone")
            local zoneID, subZone = string.match(poiKey, "(%d+)-(.+)")
            if zoneID and subZone then
                zoneID = tonumber(zoneID)
                local zoneLoreData = ZoneLoreData[zoneID]
                if zoneLoreData then
                    for _, loreEntry in ipairs(zoneLoreData) do
                        if loreEntry.subZone == subZone then
                            local loreKey = format("poi-%s", poiKey)
                            table.insert(discoveredLoreEntries, {
                                key = loreKey,
                                displayName = format("World Lore: %s", subZone),
                                loreText = loreEntry.loreText,
                                source = loreEntry.source,
                                loreEntry = loreEntry,
                            })
                        end
                    end
                end
            end
        end
    end
    
    -- Display lore entries (for now, we'll just create the buttons)
    -- In a full implementation, these would be positioned in the quest log UI
    for _, discoveredLore in ipairs(discoveredLoreEntries) do
        if not self.loreButtons[discoveredLore.key] then
            self:CreateLorePlayButton(discoveredLore.key)
        end
        
        local button = self.loreButtons[discoveredLore.key]
        local loreKey = discoveredLore.key
        
        -- Create sound data for this lore entry
        button.soundData = {
            event = discoveredLore.loreEntry.subZone and Enums.SoundEvent.POILore or Enums.SoundEvent.ZoneLore,
            fileName = discoveredLore.loreEntry.audioFile,
            title = discoveredLore.displayName,
            loreText = discoveredLore.loreText,
            source = discoveredLore.source,
        }
        
        -- Set up OnClick handler for lore replay
        button:SetScript("OnClick", function(self)
            local soundData = self.soundData
            local isPlaying = SoundQueue:Contains(soundData)
            
            if not isPlaying then
                -- Queue the lore sound for replay
                SoundQueue:AddSoundToQueue(soundData)
                QuestOverlayUI:UpdateLoreButtonTexture(loreKey)
                
                -- Set up callback to update button when playback stops
                soundData.stopCallback = function()
                    QuestOverlayUI:UpdateLoreButtonTexture(loreKey)
                end
            else
                -- Stop the currently playing lore
                SoundQueue:RemoveSoundFromQueue(soundData)
            end
        end)
        
        -- Update button texture based on playback state
        self:UpdateLoreButtonTexture(loreKey)
        
        -- Note: In a full implementation, we would position these buttons in the quest log
        -- For now, we're just creating and tracking them
        table.insert(self.displayedLoreButtons, button)
    end
end

function QuestOverlayUI:Update()
    if not QuestLogFrame:IsShown() then
        return
    end

    local numEntries, numQuests = GetNumQuestLogEntries()

    -- Hide all buttons in displayedButtons
    for _, button in pairs(self.displayedButtons) do
        button:Hide()
    end

    if numEntries == 0 then
        return
    end

    -- Clear displayedButtons
    table.wipe(self.displayedButtons)

    -- Traverse through the quests displayed in the UI
    for i = 1, QUESTS_DISPLAYED do
        local questIndex = i + Utils:GetQuestLogScrollOffset();
        if questIndex > numEntries then
            break
        end

        -- Get quest title
        local questLogTitleFrame = Utils:GetQuestLogTitleFrame(i)
        local normalText = Utils:GetQuestLogTitleNormalText(i)
        local questCheck = Utils:GetQuestLogTitleCheck(i)
        local title, level, suggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(
            questIndex)

        if not isHeader then
            if not self.questPlayButtons[questID] then
                self:CreatePlayButton(questID)
            end

            if DataModules:PrepareSound({ event = Enums.SoundEvent.QuestAccept, questID = questID }) then
                self:UpdatePlayButton(title, questID, questLogTitleFrame, normalText, questCheck)
                self.questPlayButtons[questID]:Enable()
            else
                self:UpdateQuestTitle(questLogTitleFrame, self.questPlayButtons[questID], normalText, questCheck)
                self.questPlayButtons[questID]:Disable()
            end

            self.questPlayButtons[questID]:Show()
            self:UpdatePlayButtonTexture(questID)

            -- Add the button to displayedButtons
            table.insert(self.displayedButtons, self.questPlayButtons[questID])
        end
    end
    
    -- Update lore display
    self:UpdateLoreDisplay()
end
