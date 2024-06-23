local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Theme
    "ellisonleao/gruvbox.nvim",
    -- Vscode-like pictograms
	{
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
	},
    -- Syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate",
        config = function()
            require('config.treesitter')
        end,
    },
	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
		config = function()
			require("config.nvim-cmp")
		end,
	},
	-- Code snippet engine
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},
    -- LSP manager
    {
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim",
	    "neovim/nvim-lspconfig",
      config = function()
        require('config.lsp')
      end,
    },
    -- Reopen file at last edit position
    "farmergreg/vim-lastplace",
    -- Statusline
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('config.statusline')
        end,
    },
    -- File tree
    "preservim/nerdtree",
    -- Quoting/parenthesizing/brackets
    -- "tpope/vim-surround", -- surrounding
    {
        'windwp/nvim-autopairs', -- autoclose brackets
        event = "InsertEnter",
        config = true
    },
    -- Git client
    "tpope/vim-fugitive", -- TODO: change
    -- Displays a popup with possible key bindings of the command you started typing
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
      end,
      opts = {},
    },
    -- Smart commenting stuff
    -- gcc/gbc in normal, gc/gb in visual
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        }
    },
    -- Enchance nvim UI
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    },
    -- Highlight word under cursor
    'RRethy/vim-illuminate',
    -- File manager inside nvim
    {
      'stevearc/oil.nvim',
      opts = {},
      dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    -- Ace jump
    {
        'ggandor/leap.nvim',
        opts = {},
        config = function()
            require('leap').create_default_mappings()
        end,
    }
})

-- Potentially use
-- https://github.com/folke/trouble.nvim - list all warnings/error in one place
-- https://github.com/mrsobakin/multilayout.nvim/ - :ц becomes :w
-- https://www.jackfranklin.co.uk/blog/code-folding-in-vim-neovim/ - fold code
-- https://github.com/frabjous/knap - preview markown/etc
-- https://github.com/j-hui/fidget.nvim - ui for LSP notifications and progress messages

