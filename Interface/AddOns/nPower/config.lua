
local _, nPower = ...

nPower.Config = {
    position = {"CENTER", UIParent, 0, -62},
    sizeWidth = 200,
    scale = 1.0,
	
	showCombatRegen = true,

    activeAlpha = 0.8,
    inactiveAlpha = 0.2,
    emptyAlpha = 0,

    valueAbbrev = true,

    valueFont = "Fonts\\ARIALN.ttf",
    valueFontSize = 20,
    valueFontOutline = true,
    valueFontAdjustmentX = 0,
	
	hp = {
        show = true,
        hpFont = "Fonts\\ARIALN.ttf",
        hpFontOutline = true,
        hpFontSize = 32,
        hpFontColor = {0.0, 1.0, 0.0},
        hpFontHeightAdjustment = 20,
    },

    -- Resource text shown above the bar.
    showComboPoints = true,
	showRunes = true,

    extraFont = "Fonts\\ARIALN.ttf",
    extraFontSize = 32,
    extraFontOutline = true,

    -- Power Bar
    showPowerType = {
        ["MANA"] = true,
        ["ENERGY"] = true,
        ["RAGE"] = true,
        ["FOCUS"] = true,
        ["RUNIC_POWER"] = true,
        ["FURY"] = true,
        ["PAIN"] = true,
        ["LUNAR_POWER"] = true,
        ["INSANITY"] = true,
        ["MAELSTROM"] = true,
    },
	
	holyPower = {
        -- Displays holy power as a rune (#) instead of a number.
        showRunes = false,

        holyFont = "Fonts\\ARIALN.ttf",
        holyFontSize = 24,
        holyFontOutline = true,
    },
	
	rune = {
        show = true,

        runeFont = "Fonts\\ARIALN.ttf",
        runeFontSize = 24,
        runeFontOutline = true,
    },
}
