M = {}
M.__index = M

function M.new(id, name, wants, givesHints, givesIngredients, img, greeting, want, success, failure)
  
  local self = setmetatable({
      
      id = id,
      visited = false,
      name = name,
      wants = wants,
      givesHints = givesHints,
      givesIngredients = givesIngredients,
      img = img,
      greeting = greeting,
      want = want,
      success = success,
      failure = failure
      
      }, M)
  
  return self
  
end

return M