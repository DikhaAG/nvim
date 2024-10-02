---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
-- local highlights = require("highlights")
local overrides = require("configs.overrides")

M.ui = {
	theme = "onedark",
	-- theme_toggle = { "onedark", "one_light" },

	-- hl_override = highlights.override,
	-- hl_add = highlights.add,
}

M.ui = overrides.ui

return M
