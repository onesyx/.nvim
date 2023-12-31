vim.o.guifont = "Iosevka:h17"
vim.g.neovide_hide_mouse_when_typing = true

local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end

vim.keymap.set("n", "<C-0>", function()
    vim.g.neovide_scale_factor = 1.0
end)
vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.10)
end)
vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.10)
end)
vim.keymap.set({ "c", "i" }, "<C-v>", "<C-R>+")
