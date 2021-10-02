M = {}
M.__index = M

function M.new(id, letterMap, name, desc, img, cost)
  
  local self = setmetatable({
      
      id = id,
      discovered = true,
      name = name,
      desc = desc,
      letterMap = letterMap,
      img = img,
      cost = cost
      
      }, M)
  
  return self
  
end

return M