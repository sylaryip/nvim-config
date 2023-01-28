vim.g.mapleader = " "

local keymap = vim.keymap
local Terminal  = require('toggleterm.terminal').Terminal
local opts = {noremap = true, silent = true }

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "<leader>k", ":m '<-2<CR>gv=gv")
keymap.set("v", "<leader>j", ":m '>+1<CR>gv=gv")
keymap.set("v", "<leader>u", "~")
-- ---------- 正常模式 ---------- ---
keymap.set({"n","v"}, "J", "5j")
keymap.set({"n"}, "<leader>j", "J")
keymap.set({"n","v"}, "K", "5k")
keymap.set({"n","v"}, "H", "^")
keymap.set({"n","v"}, "L", "g_")
keymap.set({"n","v"}, "p", "pgvy")

keymap.set({"n","v"}, "<leader>u", "~")
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
keymap.set("n", "gt", ":bnext<CR>", opts)
keymap.set("n", "gT", ":bprevious<CR>", opts)
keymap.set("n", "<C-w>", ":bdelete<CR>", opts)

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

keymap.set("n", "<F5>", ":ToggleTerm direction=float<CR>", opts)
keymap.set("v", "<F5>", "<Esc>:ToggleTerm<CR>", opts)
keymap.set("t", "<F5>", "<C-\\><C-n>:ToggleTerm<CR>", opts)
keymap.set("n", "<leader>t", ":ToggleTerm direction=horizontal<CR>", opts)
keymap.set("v", "<leader>t", "<Esc>:ToggleTerm<CR>", opts)
keymap.set("t", "<leader>t", "<C-\\><C-n>:ToggleTerm<CR>", opts)

-- lazygit
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
  lazygit:toggle()
end
keymap.set("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", opts)

keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)
keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)
keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", opts)


keymap.set('n', '<leader>[', vim.diagnostic.goto_prev, opts)
keymap.set('n', '<leader>]', vim.diagnostic.goto_next, opts) 
