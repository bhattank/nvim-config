return {
    "mason-org/mason.nvim",
    dependencies = {
        "mason-org/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig", -- provides the config vim.lsp.enable() reads - inside ~/.local/share/nvim/lazy/nvim-lspconfig/lsp/
    },
    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup({
            ensure_installed = {
                "gopls",     -- Go
                "pyright",   -- Python
                "ts_ls",     -- TypeScript & JavaScript
                "clangd",    -- C
		"lua_ls",    -- Lua 
            },
        })

        vim.lsp.enable({ -- built-in Neovim 0.11 function 
            "gopls",
            "pyright",
            "ts_ls",
            "clangd",
	    "lua_ls",
        })
    end,
}

