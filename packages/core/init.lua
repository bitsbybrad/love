local M = {}

function M.init()
  -- put global init here (random seed, font, asset cache, etc.)
  math.randomseed(os.time())
end

return M
