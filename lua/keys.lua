-- Vimspector
vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F5> <cmd>call vimspector#StepOver()<cr>
nmap <F8> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepOver()<cr>
nmap <F12> <cmd>call vimspector#StepOut()<cr>
nmap <F10> <cmd>call vimspector#StepInto()<cr>
]])

-- Here we use vim.api.nvim_set_keymap instead of map
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', "Db", ":call vimspector#ToggleBreakpoint()<CR>", opts)
vim.api.nvim_set_keymap('n', "Dw", ":call vimspector#AddWatch()<CR>", opts)
vim.api.nvim_set_keymap('n', "De", ":call vimspector#Evaluate()<CR>", opts)

