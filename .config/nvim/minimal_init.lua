-- ~/.config/nvim/minimal_init.lua
vim.opt.encoding = 'utf-8' -- Basic setting
vim.opt.compatible = false -- Important for some features

-- Test 1: Lua function method
vim.keymap.set("n", "<F4>", function()
    print("Minimal config: Executing normal! ]]")
    vim.cmd('normal! ]]')
    print("Minimal config: Finished normal! ]]")
end, { noremap = true, silent = false, desc = "TEST Lua Func" })

-- Test 2: Direct string method (use a different key)
vim.keymap.set("n", "t", ']]', { noremap = true, silent = false, desc = "TEST Direct String" })

print("Minimal config loaded. Test <F5> (Lua func) and <F6> (direct map).")
