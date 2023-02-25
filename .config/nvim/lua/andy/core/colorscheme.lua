-- vim.cmd("colorscheme nord")

local status, _ = pcall(vim.cmd, "colorscheme nord")
if not status then
    print("color scheme not found!!!")
    return
end
