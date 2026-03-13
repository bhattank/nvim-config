vim.opt.number = true -- line numbers
vim.opt.cursorline = true -- line where the cursor is currently positioned
vim.opt.relativenumber = true -- line number (n) + j (down) or k (up) 
vim.opt.shiftwidth = 4 -- changes tab spaces to a length of 4
vim.opt.clipboard = 'unnamedplus' -- sync map clipboard so 'p' works. 
vim.diagnostic.config({
    virtual_text = true, -- shows error inline on the right  
    signs = true, 	 -- the E on the left gutter 
    underline = true,    -- underlines the problem 
    update_in_insert = false, -- only show errors when you stop typing 
    float = {
	focusable = false, 
	style = "minimal", 
	border = "rounded", 
	source = true,
    }, 
}) 
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function ()
	vim.diagnostic.open_float() 	
    end
}) 	
vim.opt.updatetime = 500 -- float appears after 0.5 seconds of stillness

