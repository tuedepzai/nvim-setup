local n_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end
local i_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('i', lhs, rhs, { noremap = true, silent = true, expr = true })
end
-- nerd tree settings --


n_keymap('<Tab>', ":Neotree toggle dir="..vim.fn.getcwd().." <CR>")
n_keymap('<a-t>', ":Telescope".." <CR>")
-- telescope --
-- coc settings--
i_keymap("<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]])
-- split screen --


n_keymap('<C-J>',"<C-W><C-J>")
n_keymap('<C-K>',"<C-W><C-K>")
n_keymap('<C-L>',"<C-W><C-L>")
n_keymap('<C-H>',"<C-W><C-H>")
