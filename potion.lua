M = {}
M.__index = M

potionSheet = love.graphics.newImage("assets/potiongrid.png")

function M.new(id, desc, name, ingreds)
  
  local self = setmetatable({
      
      id = id,
      desc = desc,
      discovered = false,
      name = name,
      ingreds = ingreds,
      quantity = 0,
      forSale = false,
      letterMap = nil
      
      }, M)
  
  self.img = potionImage(self.id)
  self.sell = math.floor(ingredients[ingreds[1]].cost + ingredients[ingreds[2]].cost * 1.5)
  
  return self
  
end

function potionImage(id)
  
  local y = math.floor((id-1) / 12)
  local x = (id-1) % 12
  p = g.newQuad(48*x, 48*y, 48, 48, potionSheet:getDimensions())
  
  return p
  
end


return M