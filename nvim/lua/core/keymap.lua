vim.g.mapleader = " "
vim.g.maplocalleader = ","
local keymap = vim.keymap
local opts = { silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Undo/redo
keymap.set({ "n", "i" }, "<C-z>", "<Cmd>:undo<Return>", opts)
keymap.set({ "n", "i" }, "<C-y>", "<Cmd>:redo<Return>", opts)

-- Save
keymap.set({ "n", "i" }, "<C-s>", "<Cmd>:w!<Return>", opts)
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)
-- Quit
keymap.set("n", "<C-q>", "<Cmd>:q<Return>", opts)

-- Vsplit/split
keymap.set("n", "sv", "<Cmd>:vsplit<Return>", opts)
keymap.set("n", "ss", "<Cmd>:split<Return>", opts)
keymap.set("n", "<leader>sv", "<Cmd>:vsplit<Return>", opts)
keymap.set("n", "<leader>ss", "<Cmd>:split<Return>", opts)

-- Move window
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sl", "<C-w>l")
keymap.set("n", "<leader>sk", "<C-w>k")
keymap.set("n", "<leader>sj", "<C-w>j")
keymap.set("n", "<leader>sh", "<C-w>h")
keymap.set("n", "<leader>sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")

-- Use terminal
keymap.set({ "n", "i" }, "<C-`>", "<Cmd>:terminal<Return>", opts)
keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Lazy
keymap.set("n", "<leader>L", ":Lazy<Return>", opts)
