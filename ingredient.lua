M = {}
M.__index = M

function M.new(id, letterMap, name, desc, img, cost)
  
  local self = setmetatable({
      
      id = id,
      discovered = false,
      name = name,
      desc = desc,
      letterMap = letterMap,
      img = img,
      cost = cost,
      quantity = 0 --currently available to use in a brew
      
      }, M)
  
  return self
  
end

return M