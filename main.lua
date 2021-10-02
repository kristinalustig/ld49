local Ing = require "ingredient"
local Pot = require "potion"
local Cust = require "customer"
local GC = require "gameContent"
local GI = require "gameImages"
g = love.graphics

function love.load()

  GC.initialize()
  GI.initialize()
  print(ingredients[1].name)
  
  keyFont = g.newImageFont("assets/keycaps.png", 'abcdefghijklmnopqrstuvwxyz./1234567890') 
  potionSheet = g.newImage("assets/potiongrid.png")
  
  --important vars that manage game state which isn't janky at all
  isBrewing = false
  customerPresent = false
  isSelling = false
  

end

function love.update()

end

function love.draw()

  g.draw(background)
  
  
  --show the ingredients that are discovered
  g.setFont(keyFont)
  for i=1, table.getn(ingredients) do
    if ingredients[i].discovered == true then
      y = 42 + (62 * math.floor((i-1)/6))
      x = 26 + math.floor((350 * (i-1)) / 6) % 350
      g.draw(ingredients[i].img, x, y)
      g.printf(ingredients[i].letterMap, x, y + 35, 30)
    end
  end
  
  g.draw(potionSheet, potions[1].img, 300, 300)

end

function love.keyreleased(k)
  
  
  
end