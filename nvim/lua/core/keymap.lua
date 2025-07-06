vim.g.mapleader = " "
local keymap = vim.keymap
local opts = { silent = true }

-- Undo
keymap.set({ "n", "i" }, "<C-z>", "<Cmd>:undo<Return>", opts)
-- Redo
keymap.set({ "n", "i" }, "<C-y>", "<Cmd>:redo<Return>", opts)

-- Save
keymap.set({ "n", "i" }, "<C-s>", "<Cmd>:w<Return>", opts)
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)
-- Quit
keymap.set("n", "<C-q>", "<Cmd>:q<Return>", opts)

-- Vsplit
keymap.set("n", "sv", "<Cmd>:vsplit<Return>", opts)
-- Split
keymap.set("n", "ss", "<Cmd>:split<Return>", opts)

--Move window
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sl", "<C-w>l")

--Resize window
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
keymap.set("n", "<C-w><left>", "<C-w>>")
keymap.set("n", "<C-w><right>", "<C-w><")
