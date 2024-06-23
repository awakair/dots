vim.api.nvim_create_user_command('Config', 'e ~/.config/nvim/', {})
vim.api.nvim_create_user_command('Plugins', 'e ~/.config/nvim/lua/plugins.lua', {})

