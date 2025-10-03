local M = {}
local player = { x = 100, y = 100, speed = 120 }

function M.init() end

function M.update(dt)
  local dx, dy = 0, 0
  if love.keyboard.isDown("left", "a") then
    dx = dx - 1
  end
  if love.keyboard.isDown("right", "d") then
    dx = dx + 1
  end
  if love.keyboard.isDown("up", "w") then
    dy = dy - 1
  end
  if love.keyboard.isDown("down", "s") then
    dy = dy + 1
  end
  local len = math.sqrt(dx * dx + dy * dy)
  if len > 0 then
    dx, dy = dx / len, dy / len
  end
  player.x = player.x + dx * player.speed * dt
  player.y = player.y + dy * player.speed * dt
end

function M.draw()
  love.graphics.clear(0.1, 0.12, 0.14)
  love.graphics.setColor(1, 1, 1)
  love.graphics.rectangle("fill", player.x, player.y, 16, 16)
end

function M.keypressed(_) end

return M
