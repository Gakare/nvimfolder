vim.g.mapleader = " "

-- Normal mode ---------------------------------------------------------
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>cp0", "<cmd>cd ~<CR><bar><cmd>pwd<CR>")
vim.keymap.set("n", "<leader>cp1", "<cmd>cd %:p:h<CR><bar><cmd>pwd<CR>")

vim.keymap.set("n", "<leader><C-e>", "<cmd>cd %:p:h<CR><bar><cmd>!Explorer.exe .<CR><CR>")

--WHAT THIS DOES IS THAT IT LETS ME YANK TO SYSTEM CLIPBOARD
--Helpful yankings: asbjorHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<C-\\>e", "<cmd>cd %:p:h<CR><bar><C-w>v<cmd>terminal<cr>i" )


-- Insert mode ---------------------------------------------------------
--local inoremap = require("gakare.keymap").inoremap


-- Visual mode ---------------------------------------------------------
local vnoremap = require("gakare.keymap").vnoremap

vnoremap("<leader>y", "\"+y")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")









-- Command mode ---------------------------------------------------------
local xnoremap = require("gakare.keymap").xnoremap
xnoremap("<leader>p", "\"_dP")





-- Terminal mode --------------------------------------------------------
local tnoremap = require("gakare.keymap").tnoremap
tnoremap("<escape>", "<C-\\><C-N>")
tnoremap("<C-\\>e", "exit<cr>")
tnoremap("<escape><escape>", "exit<cr>")
tnoremap("<leader>ctl", "<C-l>")
