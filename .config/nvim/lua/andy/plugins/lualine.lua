local status, lualine = pcall(require, "lualine")
if not status then
    return
end
-- local lualine_nord =  require("lualine.themes.nord")
lualine.setup({
    options = {
        theme = 'nord'
    }
})
