M = {}
M.__index = M

function M.new(id, name, wants, givesHints, givesIngredients, img, greeting, want, success, failure)
  
  local self = setmetatable({
      
      id = id,
      visited = false,
      name = name,
      want = want,
      givesHint = givesHint,
      givesIngredient = givesIngredient,
      img = img,
      content = {
      greeting,
      want,
      success,
      failure
    }
      }, M)
  
  return self
  
end

return M