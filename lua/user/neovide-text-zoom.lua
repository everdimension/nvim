-- Initial scale factor configured in settings.lua
-- vim.g.neovide_scale_factor = 1.15 -- 1.2 is more like my default

local initial_scale_factor = vim.g.neovide_scale_factor

local function text_zoom_in()
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.05
end
local function text_zoom_out()
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.05
end
local function text_zoom_reset()
  vim.g.neovide_scale_factor = initial_scale_factor
end

vim.keymap.set("n", "<D-=>", text_zoom_in, {}) -- Command +
vim.keymap.set("n", "<D-->", text_zoom_out, {}) -- Command -
vim.keymap.set("n", "<D-0>", text_zoom_reset, {}) -- Command 0
