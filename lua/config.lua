require('onedark').load()
vim.cmd("command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument")
-- Set tab width to 4 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Enable autoindentation
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Show trailing whitespaces for better formatting visibility (optional)
vim.opt.list = true
vim.opt.listchars:append("trail:·")

-- Run clang-format on save for C/C++ files
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.c", "*.cpp", "*.h" },
    callback = function()
        vim.cmd("%!clang-format")
    end,
})

vim.cmd("set number")
