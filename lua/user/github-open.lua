local M = {}

-- Define the Lua function
function M.openGitHub()
  -- github-open is currently my local cli tool
  vim.cmd(":!github-open %")
end

return M

