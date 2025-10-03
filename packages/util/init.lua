local M = {}

function M.debugText(text, x, y)
  love.graphics.setColor(1, 1, 1, 0.9)
  love.graphics.print(text, x, y)
  love.graphics.setColor(1, 1, 1, 1)
end

return M
