return {
    "saghen/blink.cmp",
    version = "1.*",
    opts = {
        keymap = {
	    ["<Tab>"] = { "select_next", "fallback" },
	    ["<S-Tab>"] = { "select_prev", "fallback" },
	    ["<CR>"] = { "accept", "fallback" },
	    ["C-e>"] = { "cancel", "fallback" },
	    ["C-b>"] = { "scroll_documentation_up", "fallback" },
	    ["C-f>"] = { "scroll_documentation_down", "fallback" },
	},

        sources = {
            default = { "lsp", "path", "buffer" },
        },
	appearance = {
	    nerd_font_variant = "mono",
	},
    },
}

--[[
Mostly default keymaps:
    - Next and previous (fallback) are changed. 

Navigating Menu:
    Tab - next item
    Tab + Shift - previous item 

Accepting 
    Enter - accept the selected completion 

Closing 
    Ctrl + e - close/cancel the menu 

Scrolling docs 
    Ctrl + b - scroll up 
    Ctrl + f - scroll down 
--]]
