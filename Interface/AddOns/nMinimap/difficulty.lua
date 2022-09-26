
local _, nMinimap = ...
local cfg = nMinimap.Config

local function HideDifficultyFrame()
    MiniMapInstanceDifficulty:EnableMouse(false)
    MiniMapInstanceDifficulty:SetAlpha(0)
end

function GetDifficultyText()
    local inInstance, instancetype = IsInInstance()
    local _, _, difficultyIndex, _, maxPlayers, playerDifficulty, _ = GetInstanceInfo()

    local instanceText = ''
    local guildStyle
    local heroStyle = '|cffff00ffH|r'
    local lookingForRaidStyle = '|cffffffffLFR'

    local isHeroicIndex = {
        [DIFFICULTY_DUNGEON_HEROIC] = true,
        [DIFFICULTY_RAID10_HEROIC] = true,
        [DIFFICULTY_RAID25_HEROIC] = true,
        [DIFFICULTY_DUNGEON_CHALLENGE] = true,
    }

    if (inInstance) then
        instanceText = maxPlayers

        if (isHeroicIndex[difficultyIndex]) then
            instanceText = instanceText..heroStyle
        end
    end

    return instanceText
end

local f = Minimap
f.InstanceText = f:CreateFontString(nil, 'OVERLAY')
f.InstanceText:SetFont('Fonts\\ARIALN.ttf', 15, 'OUTLINE')
f.InstanceText:SetPoint('TOP', Minimap, 0, -3.5)
f.InstanceText:SetTextColor(1, 1, 1)
f.InstanceText:Show()

hooksecurefunc(MiniMapInstanceDifficulty, 'Show', function()
    HideDifficultyFrame()
end)

MiniMapInstanceDifficulty:HookScript('OnEvent', function(self)
    Minimap.InstanceText:SetText(GetDifficultyText())
end)

if (cfg.mouseover.instanceDifficulty) then
    Minimap.InstanceText:SetAlpha(0)

    Minimap:HookScript('OnEnter', function(self)
        securecall('UIFrameFadeIn', self.InstanceText, 0.235, 0, 1)
    end)

    Minimap:HookScript('OnLeave', function(self)
        securecall('UIFrameFadeOut', self.InstanceText, 0.235, 1, 0)
    end)
end
