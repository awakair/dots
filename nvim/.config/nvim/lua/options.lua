-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python
vim.optautoindent = true            -- indent a new line the same amount as the line just typed

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true       -- add numbers to each line on the left side
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
-- vim.opt.showmatch = true            -- show matching brackets
vim.opt.cc = '80,120'               -- column border at 80 and 120 symbols
vim.opt.syntax = on                 -- syntax highlighting
vim.opt.spell = on                  -- enable spell check TODO: download language packages
-- vim.opt.termguicolors = true        -- enable 24-bit RGB color in the TUI
-- vim.opt.showmode = false            -- don't need the "-- INSERT --" mode hint

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = true             -- highlight matches
vim.opt.showmatch = true            -- show match TODO: diff from hlsearch?
vim.opt.incsearch = true            -- TODO: ???
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

-- Swap/Backup
vim.opt.swapfile = false            -- disable creating swap file

-- set wildmode=longest,list   " get bash-like tab completions

