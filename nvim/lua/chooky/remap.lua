vim.g.mapleader = " "

-- open file explorer
vim.keymap.set("n", "<leader>pf", vim.cmd.Ex)

-- move selected down / up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- scroll down / up
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search next / previous and center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without overwriting clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy (line) to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete without overwriting clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- disable Q (often enters Ex mode accidentally)
vim.keymap.set("n", "Q", "<nop>")

-- format code using LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- search and replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- stay in visual mode when indenting left / right
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- tabs
-- vim.keymap.set("n", "<leader>a", ":tabnew `=expand('%:p')`<CR>")
-- vim.keymap.set("n", "<S-h>", ":tabprevious<CR>")
-- vim.keymap.set("n", "<S-l>", ":tabnext<CR>")
-- vim.keymap.set("n", "<C-e>", ":tabs<CR>")
-- vim.keymap.set("n", "<C-ESC><C-ESC>", ":qa<CR>")

-- marks
vim.keymap.set("n", "<C-E>", ":marks ABCDEFGHIJKLMNOPQRSTUVWXYZ<CR>")

local function set_next_global_mark()
    local marks = vim.fn.getmarklist()
    local used_marks = {}
    
    for _, mark in pairs(marks) do
        if mark.mark:match("^'[A-Z]$") then
            used_marks[mark.mark:sub(2)] = true
        end
    end

    for i = 65, 90 do -- ASCII values for 'A' to 'Z'
        local mark = string.char(i)
        if not used_marks[mark] then
            vim.cmd("mark " .. mark)
            print("Mark set: " .. mark)
            return
        end
    end

    print("No available global marks")
end

vim.keymap.set("n", "<leader>a", set_next_global_mark, { desc = "Set next available global mark" })
vim.keymap.set("n", "<C-ESC><C-ESC>", ":delmarks ABCDEFGHIJKLMNOPQRSTUVWXYZ<CR>")
