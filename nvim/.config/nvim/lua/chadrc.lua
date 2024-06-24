-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.general ={
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>","window left"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>","window right"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>","window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>","window up"},
  }
}

M.ui = {
	theme = "catppuccin",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M
