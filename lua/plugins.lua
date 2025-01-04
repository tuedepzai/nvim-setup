local ok, packer = pcall(require, 'packer')

if not ok then
	
	require("notify")("Error :(", "Error")
else
	packer.startup(function(use)
		use 'wbthomason/packer.nvim'
		use{
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v3.x",
			requires = {
				"nvim-lua/plenary.nvim",
      				"nvim-tree/nvim-web-devicons", 
      				"MunifTanjim/nui.nvim",
			}
		}
		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.8',
  			requires = { {'nvim-lua/plenary.nvim'} }
		}

		use 'navarasu/onedark.nvim'
		use {
			'neoclide/coc.nvim',
			branch = 'release'
		}
		use({
  			"aurum77/live-server.nvim",
    			run = function()
      			require("live_server.util").install()
    			end,
    			cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
  		})
		use 'nvim-tree/nvim-web-devicons'
		use 'rcarriga/nvim-notify'
		use { 'feline-nvim/feline.nvim', branch = '0.5-compat' }
		use {"stevearc/conform.nvim"}
	end)
end




