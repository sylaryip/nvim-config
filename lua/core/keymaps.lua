vim.g.mapleader = " "

local keymap = vim.keymap
local Terminal  = require('toggleterm.terminal').Terminal
local opt = {noremap = true, silent = true }

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "<leader>k", ":m '<-2<CR>gv=gv")
keymap.set("v", "<leader>j", ":m '>+1<CR>gv=gv")
keymap.set("v", "<leader>u", "~")
-- ---------- 正常模式 ---------- ---
keymap.set("n", "J", "5j")
keymap.set("n", "<leader>j", "J")
keymap.set("n", "K", "5k")
keymap.set("n", "H", "^")
keymap.set("n", "L", "g_")
keymap.set("n", "<leader>f", "=G")

keymap.set("n", "<leader>u", "~")
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<leader>sc", "<C-w>c") -- 关闭窗口
keymap.set("n", "<A-h>", "<C-w>h")
keymap.set("n", "<A-j>", "<C-w>j")
keymap.set("n", "<A-k>", "<C-w>k")
keymap.set("n", "<A-l>", "<C-w>l")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "gt", ":bnext<CR>", opt)
keymap.set("n", "gT", ":bprevious<CR>", opt)
keymap.set("n", "<C-w>", ":bdelete<CR>", opt)

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opt)

keymap.set("n", "<F5>", ":ToggleTerm direction=float<CR>", opt)
keymap.set("v", "<F5>", "<Esc>:ToggleTerm<CR>", opt)
keymap.set("t", "<F5>", "<C-\\><C-n>:ToggleTerm<CR>", opt)
keymap.set("n", "<leader>t", ":ToggleTerm direction=horizontal<CR>", opt)
keymap.set("v", "<leader>t", "<Esc>:ToggleTerm<CR>", opt)
keymap.set("t", "<leader>t", "<C-\\><C-n>:ToggleTerm<CR>", opt)

-- lazygit
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
  lazygit:toggle()
end
keymap.set("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", opt)

keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opt)
keymap.set("n", "gD", "<cmd>Lspsaga peek_definition<CR>", opt)
keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opt)
