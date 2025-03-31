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

-- stay in visual mode when indenting left / right
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Git blame
vim.keymap.set("n", "<Leader>b", function()
  local line = vim.fn.line(".")
  vim.cmd("!git blame % -L " .. line .. "," .. line)
end, { silent = true })

vim.keymap.set("v", "<Leader>b", function()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "x", false)
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")
  vim.cmd("!git blame % -L " .. start_line .. "," .. end_line)
end, { silent = true })

-- Git log
vim.keymap.set("n", "<Leader>B", function()
  local line = vim.fn.line(".")
  vim.cmd("!git log --pretty=short -u -L " .. line .. "," .. line .. ":%")
end, { silent = true })

vim.keymap.set("v", "<Leader>B", function()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "x", false)
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")
  vim.cmd("!git log --pretty=short -u -L " .. start_line .. "," .. end_line .. ":%")
end, { silent = true })

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

local function retrieve_github_location()
    local remote_url = vim.trim(vim.fn.system("git config --get remote.origin.url"))
    if remote_url == "" then
        print("[ERROR] Not in a Git repo.")
        return
    end

    local line_no = vim.fn.line(".")
    local git_root = vim.trim(vim.fn.system("git rev-parse --show-toplevel"))
    local abs_path = vim.fn.expand("%:p")
    local file = abs_path:gsub("^" .. vim.pesc(git_root .. "/"), "")

    local user, repo
    user, repo = remote_url:match("github.com.*[:/]([%w-_]+)/([%w-_%.]+)")
    if repo then
        repo = repo:gsub("%.git$", "")
    end

    local branch = vim.trim(vim.fn.system("git rev-parse --abbrev-ref HEAD"))
    if string.find(branch, "fatal") then
        branch = "main"
    end

    local url = string.format("https://github.com/%s/%s/blob/%s/%s#L%s", user, repo, branch, file, line_no)
    vim.fn.setreg("+", url)
    print(url)
end
vim.keymap.set("n", "<leader>gl", retrieve_github_location, { desc = "Retrieve a link for the line via GitHub" })
