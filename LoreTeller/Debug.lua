setfenv(1, LoreTeller)
Debug = {}

function Debug:Print(msg, header)
    if Addon.db.profile.DebugEnabled then
        if header then
            print(Utils:ColorizeText("LoreTeller", NORMAL_FONT_COLOR_CODE) ..
                Utils:ColorizeText(" (" .. header .. ")", GRAY_FONT_COLOR_CODE) ..
                " - " .. msg)
        else
            print(Utils:ColorizeText("LoreTeller", NORMAL_FONT_COLOR_CODE) ..
                " - " .. msg)
        end
    end
end
