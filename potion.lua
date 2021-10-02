M = {}
M.__index = M

potionSheet = love.graphics.newImage("assets/potiongrid.png")

function M.new(id, name, ingredients, sell)
  
  local self = setmetatable({
      
      id = id,
      discovered = false,
      name = name,
      ingredients = ingredients,
      sell = sell,
      quantity = 0,
      forSale = false,
      letterMap = nil
      
      }, M)
  
  self.img = potionImage(self.id)
  
  return self
  
end

function potionImage(id)
  
  local y = math.floor((id-1) / 12)
  local x = (id-1) / 12
  p = g.newQuad(48*x, 48*y, 48, 48, potionSheet:getDimensions())
  
  return p
  
end


return M