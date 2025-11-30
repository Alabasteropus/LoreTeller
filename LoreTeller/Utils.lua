setfenv(1, LoreTeller)
Utils = {}

--- Returns `Enum.GUID` type of the provided GUID.
---@param guid string GUID returned by the API
---@return GUID guid
function Utils:GetGUIDType(guid)
    return guid and Enums.GUID[select(1, strsplit("-", guid, 2))]
end

--- Returns WorldObject ID of the provided GUID.
---@param guid string GUID returned by the API
---@return number id
function Utils:GetIDFromGUID(guid)
    local type, rest = strsplit("-", guid, 2)
    type = assert(Enums.GUID[type], format("Unknown GUID type %s", type))
    assert(Enums.GUID:CanHaveID(type), format([[GUID "%s" does not contain ID]], guid))
    return assert(tonumber((select(5, strsplit("-", rest)))), format([[Failed to retrieve ID from GUID "%s"]], guid))
end

--- Returns a dummy WorldObject GUID using the provided `Enums.GUID` type and ID.
---@param type GUID
---@param id number
---@return string|nil guid
function Utils:MakeGUID(type, id)
    assert(Enums.GUID:CanHaveID(type), format("GUID of type %d (%s) cannot contain ID", type, Enums.GUID:GetName(type) or "Unknown"))
    local typeName = assert(Enums.GUID:GetName(type), format("Unknown GUID type %d", type))
    return format("%s-%d-%d-%d-%d-%d-%d", typeName, 0, 0, 0, 0, id, 0)
end

--- Returns the name of the NPC that's being interacted with while a GossipFrame or QuestFrame is visible.
---@return string|nil name
function Utils:GetNPCName()
    return UnitName("questnpc") or UnitName("npc")
end

--- Returns the GUID of the NPC that's being interacted with while a GossipFrame or QuestFrame is visible.
---@return string|nil guid
function Utils:GetNPCGUID()
    return UnitGUID("questnpc") or UnitGUID("npc")
end

--- Returns whether the NPC that's being interacted with while a GossipFrame or QuestFrame is visible is a GameObject or Item.
---@return boolean isObjectOrItem
function Utils:IsNPCObjectOrItem()
    return not (UnitExists("questnpc") or UnitExists("npc"))
end

--- Returns whether the NPC that's being interacted with while a GossipFrame or QuestFrame is visible is a Player.
---@return boolean isPlayer
function Utils:IsNPCPlayer()
    return UnitIsPlayer("questnpc") or UnitIsPlayer("npc")
end

--- Returns whether the player's sound options will allow the playback of sound files.
---@return boolean enabled
function Utils:IsSoundEnabled()
    if tonumber(GetCVar("Sound_EnableAllSound")) ~= 1 then
        return false
    end

    if tonumber(GetCVar("Sound_EnableSFX")) ~= 1 then
        return false
    end

    local channel = Enums.SoundChannel:GetName(Addon.db.profile.Audio.SoundChannel)
    return channel == "Master" or tonumber(GetCVar(format("Sound_Enable%s", channel))) == 1
end

--- Attempts to play the sound and immediately stops it to check if the sound file exists.
---@param soundData SoundData
---@return boolean willPlay
function Utils:TestSound(soundData)
    local willPlay, handle = PlaySoundFile(soundData.filePath)
    if willPlay then
        StopSound(handle)
    end
    return willPlay
end

--- Plays the sound from SoundData on the configured sound channel.
---@param soundData SoundData
function Utils:PlaySound(soundData)
    local channel = Enums.SoundChannel:GetName(Addon.db.profile.Audio.SoundChannel)
    local willPlay, handle = PlaySoundFile(soundData.filePath, channel)
    soundData.handle = handle
end

--- Stops the sound started by `Utils:PlaySound(soundData)`.
---@param soundData SoundData
function Utils:StopSound(soundData)
    StopSound(soundData.handle)
    soundData.handle = nil
end

--- Returns the button index offset of the virtualized Quest Log scroll frame.
---@return number offset
function Utils:GetQuestLogScrollOffset()
    return FauxScrollFrame_GetOffset(QuestLogListScrollFrame)
end

--- Returns the `Button` that represents the quest in the Quest Log frame.
---@return Button button
function Utils:GetQuestLogTitleFrame(index)
    return _G["QuestLogTitle" .. index]
end

--- Returns the title `FontString` of the button that represents the quest in the Quest Log frame.
---@return FontString title
function Utils:GetQuestLogTitleNormalText(index)
    return _G["QuestLogTitle" .. index .. "NormalText"]
end

--- Returns the quest tracking check mark `Texture` of the button that represents the quest in the Quest Log frame.
---@return Texture check
function Utils:GetQuestLogTitleCheck(index)
    return _G["QuestLogTitle" .. index .. "Check"]
end

--- Returns the provided text enclosed in the provided color tag.
---@param text string
---@param color string Color tag in "|cAARRGGBB" format
---@return string colorizedText
function Utils:ColorizeText(text, color)
    return color .. text .. "|r"
end

--- Returns an iterator to the table sorted with the provided function.
---@generic K, V
---@param tbl table<K, V>
---@param sorter fun(valueA: V, valueB: V, keyA: K, keyB: K): boolean Should return whether A should precede B
---@return function iterator
---@return table tbl
---@return nil
function Utils:Ordered(tbl, sorter)
    local orderedIndex = {}
    for key in pairs(tbl) do
        table.insert(orderedIndex, key)
    end
    if sorter then
        table.sort(orderedIndex, function(a, b)
            return sorter(tbl[a], tbl[b], a, b)
        end)
    else
        table.sort(orderedIndex)
    end

    local i = 0
    local function orderedNext(t)
        i = i + 1
        return orderedIndex[i], t[orderedIndex[i]]
    end

    return orderedNext, tbl, nil
end

local animationDurations = {
    ["Original"] = {
        [130737]  = { [60] = 1533 },
        [116921]  = { [60] = 4000 },
        [1100258] = { [60] = 4000 },
        [117170]  = { [60] = 2000 },
        [1100087] = { [60] = 2000 },
        [117400]  = { [60] = 2934 },
        [117412]  = { [60] = 2934 },
        [117437]  = { [60] = 3000 },
        [1022598] = { [60] = 3000 },
        [117721]  = { [60] = 3334 },
        [1005887] = { [60] = 3334 },
        [118135]  = { [60] = 2000 },
        [950080]  = { [60] = 2000 },
        [118355]  = { [60] = 2000 },
        [878772]  = { [60] = 2000 },
        [118652]  = { [60] = 2000 },
        [118653]  = { [60] = 2000 },
        [118654]  = { [60] = 2000 },
        [118667]  = { [60] = 2000 },
        [118798]  = { [60] = 2500 },
        [119063]  = { [60] = 4000 },
        [940356]  = { [60] = 4000 },
        [119159]  = { [60] = 4000 },
        [900914]  = { [60] = 4000 },
        [119369]  = { [60] = 1800 },
        [119376]  = { [60] = 1800 },
        [119563]  = { [60] = 2667 },
        [1000764] = { [60] = 2667 },
        [119940]  = { [60] = 2000 },
        [1011653] = { [60] = 2000 },
        [232863]  = { [60] = 2500 },
        [120263]  = { [60] = 3000 },
        [120294]  = { [60] = 3000 },
        [120590]  = { [60] = 2100 },
        [921844]  = { [60] = 2100 },
        [120791]  = { [60] = 2000 },
        [974343]  = { [60] = 2000 },
        [233367]  = { [60] = 3600 },
        [121087]  = { [60] = 2000 },
        [949470]  = { [60] = 2000 },
        [121287]  = { [60] = 2000 },
        [917116]  = { [60] = 2000 },
        [121608]  = { [60] = 2000 },
        [997378]  = { [60] = 2467 },
        [121768]  = { [60] = 2667 },
        [959310]  = { [60] = 2667 },
        [121942]  = { [60] = 2667 },
        [233878]  = { [60] = 2934 },
        [121961]  = { [60] = 2934 },
        [986648]  = { [60] = 2934 },
        [122055]  = { [60] = 2934 },
        [968705]  = { [60] = 2934 },
        [122414]  = { [60] = 2500 },
        [1018060] = { [60] = 2500 },
        [122560]  = { [60] = 2500 },
        [1022938] = { [60] = 2500 },
        [122738]  = { [60] = 3000 },
        [122815]  = { [60] = 3600 },
    },
    ["HD"] = {
        [119369]  = { [60] = 4667 },
        [119376]  = { [60] = 4667 },
    },
}
if Version.IsLegacyVanilla or Version.IsRetailVanilla then
    animationDurations["Original"][119369][60] = 0
    animationDurations["Original"][119376][60] = 0
end

--- Returns the model set used by `Utils:GetModelAnimationDuration`.
---@return string|"Original"|"HD"
function Utils:GetCurrentModelSet()
    return "Original"
end

--- Returns the duration in milliseconds of the provided animation in the provided 3D model.
---@param model number Model's FileDataID
---@param animation number Animation ID
---@return number|nil duration Animation duration in milliseconds
function Utils:GetModelAnimationDuration(model, animation)
    if not model or model == 123 then return end
    local models = animationDurations[Utils:GetCurrentModelSet()] or animationDurations["Original"]
    local animations = models[model] or animationDurations["Original"][model]
    local duration = animations and animations[animation]
    return duration and duration / 1000
end

--- Stores a `DressUpModel` in `SoundData.modelFrame`.
---@param soundData SoundData
function Utils:CreateNPCModelFrame(soundData)
end

--- Frees the `DressUpModel` stored in `SoundData.modelFrame`.
---@param soundData SoundData
function Utils:FreeNPCModelFrame(soundData)
end
