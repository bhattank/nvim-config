-- for auto tags - look up the external plugin and add the require() statement
return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false, 
    build = ':TSUpdate',

    config = function() 
	require("nvim-treesitter").setup() -- install to default path - ~/.local/share/nvim 

	-- install the parsers

	require("nvim-treesitter").install({
	    "lua",
            "go",
            "tsx",
            "typescript",
            "javascript",
            "jsdoc",
            "c",
            "python",
            "vim",
            "vimdoc",
            "bash",
	}):wait(300000) -- 5 min wait, good for initial bootstrap

	-- enable treesitter features per filetype 
	-- highlighting, folds, indendation are automatically enabled for matching file type
	
	vim.api.nvim_create_autocmd("FileType", {
	
	    pattern = { 
	    "lua",
            "go",
            "tsx",
            "typescript",
            "javascript",
            "c",
            "python",
            "vim",
            "bash",
	}, 
	callback = function() 
	    vim.treesitter.start() -- syntax highlighting
	    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- treesitter indendation
	end, 
	})
    end,
}

