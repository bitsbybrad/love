local base = love.filesystem.getSourceBaseDirectory()
package.path = package.path
  .. ";"
  .. base
  .. "/../packages/?.lua"
  .. ";"
  .. base
  .. "/../packages/?/init.lua"

local core = require "core"
local util = require "util"

local game = require "game"

local dt_accum = 0

function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")
  core.init()
  game.init()
end

function love.update(dt)
  dt_accum = dt_accum + dt
  game.update(dt)
end

function love.draw()
  game.draw()
  util.debugText(("dt: %.3f"):format(dt_accum), 10, 10)
end

function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  end
  game.keypressed(key)
end
