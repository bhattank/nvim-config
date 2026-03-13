-- see examples on lazy.folke.io 
-- lazy wants you to return a table with information about a specific plugins, especially the repository the plugin is located at.

--[[
Plugins in this file: 
- Colour theme - tokyonight 
- Transparency 
- Lua Line 
--]] 






local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
end 

return { 
    { -- colour scheme table 
	"folke/tokyonight.nvim",
	config = function()
	    vim.cmd.background = "dark"
	    vim.cmd.colorscheme "tokyonight" 
	    enable_transparency() -- defined it above and calling it here.
	end 
    },
    { -- lua line plugin 
	"nvim-lualine/lualine.nvim", 
	dependencies = { 
	    "nvim-tree/nvim-web-devicons", 
	}, 
	opts = {
	    theme = 'tokyonight', -- telling lualina to use the tokyonight font 
	}
    },
}
