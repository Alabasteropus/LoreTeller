setfenv(1, LoreTeller)

---@class LoreDisplayUI
LoreDisplayUI = {}

-- Landscape image dimensions (1920x817 at 1/3 scale = 640x272)
local LANDSCAPE_WIDTH = 640
local LANDSCAPE_HEIGHT = 272

function LoreDisplayUI:Initialize()
    self:CreateLoreFrame()
end

function LoreDisplayUI:CreateLoreFrame()
    if self.frame then return end

    -- Use loadstring to create frame in global environment
    local createFrame = loadstring([[
        local frame = CreateFrame("Frame", "LoreTellerLoreDisplayFrame", UIParent)
        frame:SetSize(640, 320)  -- Extra height for title
        frame:SetPoint("TOP", UIParent, "TOP", 0, -50)
        frame:SetFrameStrata("HIGH")
        frame:SetMovable(true)
        frame:SetResizable(true)
        frame:SetResizeBounds(200, 100, 1920, 900)
        frame:EnableMouse(true)
        frame:RegisterForDrag("LeftButton")
        frame:SetClampedToScreen(true)
        frame:Hide()
        
        -- Store base dimensions for aspect ratio
        frame.baseWidth = 640
        frame.baseHeight = 272
        frame.aspectRatio = 640 / 272

        -- Title text above the image
        frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
        frame.title:SetPoint("TOP", frame, "TOP", 0, -5)
        frame.title:SetTextColor(1, 0.82, 0)  -- Gold color
        frame.title:SetShadowOffset(1, -1)
        frame.title:SetText("")

        -- Landscape image
        frame.image = frame:CreateTexture(nil, "ARTWORK")
        frame.image:SetSize(640, 272)
        frame.image:SetPoint("TOP", frame.title, "BOTTOM", 0, -10)

        -- Border around the image
        frame.border = CreateFrame("Frame", nil, frame, "BackdropTemplate")
        frame.border:SetPoint("TOPLEFT", frame.image, "TOPLEFT", -4, 4)
        frame.border:SetPoint("BOTTOMRIGHT", frame.image, "BOTTOMRIGHT", 4, -4)
        frame.border:SetBackdrop({
            edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Border",
            edgeSize = 16,
        })
        
        -- Resize handle in bottom-right corner
        frame.resizer = CreateFrame("Button", nil, frame)
        frame.resizer:SetSize(16, 16)
        frame.resizer:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 0)
        frame.resizer:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
        frame.resizer:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
        frame.resizer:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
        
        frame.resizer:SetScript("OnMouseDown", function(self)
            self:GetParent():StartSizing("BOTTOMRIGHT")
        end)
        
        frame.resizer:SetScript("OnMouseUp", function(self)
            local parent = self:GetParent()
            parent:StopMovingOrSizing()
            -- Save size
            local width = parent:GetWidth()
            LoreTeller.Addon.db.profile.ZoneLore = LoreTeller.Addon.db.profile.ZoneLore or {}
            LoreTeller.Addon.db.profile.ZoneLore.LoreFrameWidth = width
        end)

        -- Dragging handlers
        frame:SetScript("OnDragStart", function(self)
            self:StartMoving()
        end)

        frame:SetScript("OnDragStop", function(self)
            self:StopMovingOrSizing()
            -- Save position
            local point, _, relPoint, x, y = self:GetPoint()
            LoreTeller.Addon.db.profile.ZoneLore = LoreTeller.Addon.db.profile.ZoneLore or {}
            LoreTeller.Addon.db.profile.ZoneLore.LoreFramePos = {point, relPoint, x, y}
        end)
        
        -- Update image size when frame is resized
        frame:SetScript("OnSizeChanged", function(self, width, height)
            local imageWidth = width - 20  -- Padding
            local imageHeight = imageWidth / self.aspectRatio
            self.image:SetSize(imageWidth, imageHeight)
            -- Adjust frame height to fit
            self:SetHeight(imageHeight + 48)  -- Title + padding
        end)

        return frame
    ]])

    if createFrame then
        local ok, frame = pcall(createFrame)
        if ok and frame then
            self.frame = frame

            -- Restore saved position
            local pos = Addon.db.profile.ZoneLore and Addon.db.profile.ZoneLore.LoreFramePos
            if pos then
                frame:ClearAllPoints()
                frame:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
            end
            
            -- Restore saved size
            local savedWidth = Addon.db.profile.ZoneLore and Addon.db.profile.ZoneLore.LoreFrameWidth
            if savedWidth then
                frame:SetWidth(savedWidth)
                -- Height will auto-adjust via OnSizeChanged
            end
            
            -- Apply lock state
            self:RefreshLockState()

            Debug:Print("LoreDisplayUI: Lore display frame created")
        end
    end
end

---Show the lore display for a sound
---@param soundData SoundData The sound data to display
function LoreDisplayUI:Show(soundData)
    if not self.frame then return end
    if not soundData then
        self:Hide()
        return
    end

    -- Only show for lore events
    if not Enums.SoundEvent:IsLoreEvent(soundData.event) then
        self:Hide()
        return
    end

    -- Set the title
    local title = soundData.title or soundData.name or "World Lore"
    self.frame.title:SetText(title)

    -- Try to load the landscape image
    local imagePath = self:GetImagePath(soundData)
    if imagePath then
        self.frame.image:SetTexture(imagePath)
        self.frame.image:Show()
        self.frame.border:Show()
    else
        -- No image available, use a default or hide
        self.frame.image:SetTexture([[Interface\AddOns\AI_LoreTeller\Textures\Book]])
        self.frame.image:Show()
        self.frame.border:Show()
    end

    self.frame:Show()
    Debug:Print(format("LoreDisplayUI: Showing lore display for %s", title))
end

---Hide the lore display
function LoreDisplayUI:Hide()
    if not self.frame then return end
    self.frame:Hide()
end

---Get the image path for a sound
---@param soundData SoundData The sound data
---@return string|nil imagePath The path to the image texture
function LoreDisplayUI:GetImagePath(soundData)
    if not soundData.fileName then return nil end

    -- Image path format: Interface\AddOns\AI_LoreTellerData_Vanilla\generated\images\zonelore\<filename>.tga
    -- WoW textures need to be TGA or BLP format (extension required in path)
    local imagePath = format([[Interface\AddOns\AI_LoreTellerData_Vanilla\generated\images\zonelore\%s.tga]], soundData.fileName)

    return imagePath
end

---Update the display based on current sound queue
function LoreDisplayUI:Update()
    local currentSound = SoundQueue:GetCurrentSound()
    if currentSound and Enums.SoundEvent:IsLoreEvent(currentSound.event) then
        self:Show(currentSound)
    else
        self:Hide()
    end
end

---Refresh the lock state for the lore display frame
function LoreDisplayUI:RefreshLockState()
    if not self.frame then return end
    
    local isLocked = Addon.db.profile.SoundQueueUI.LockFrame
    
    -- Show/hide resizer
    if self.frame.resizer then
        self.frame.resizer:SetShown(not isLocked)
    end
    
    -- Enable/disable dragging
    if isLocked then
        self.frame:SetMovable(false)
    else
        self.frame:SetMovable(true)
    end
end
