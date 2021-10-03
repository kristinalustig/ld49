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
  regFont = g.newImageFont("assets/regular.png", 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!?.,()\'":;@+-*/%#^= ')
  regSmFont = g.newImageFont("assets/regularSm.png", 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!?.,()\'":;@+-*/%#^= ')
  potionSheet = g.newImage("assets/potiongrid.png")
  
  --important vars that manage game state which isn't janky at all
  state = {
    isBrewing = false,
    customerPresent = true,
    isSelling = false,
    isTalking = false,
    isBookOpen = false,
    isInspectingIngredients = false,
    isInspectingPotions = false,
    congratsPopover = nil,
    inspecting = nil,
    currentCustomer = nil,
    convoState = nil,
    currPage = 0
  }
  
  barrelContents = 0
  brewContents = {}
  forSale = {potions[1]}
  onTable = {potions[1], potions[1]}
  minPage = 0
  maxPage = 2

end

function love.update(dt)
  for i=1, table.getn(customers)+1 do
    if dt % i == 0 and customers[i].visited == false then
      state.currentCustomer = customers[i]
      state.customerPresent = true
      return
    end
  end
  
end

function love.draw()
  
  g.draw(background)
  
  --show the ingredients that are discovered - currently testing has them all discovered
  g.setFont(keyFont)
  for i=1, table.getn(ingredients) do
    if ingredients[i].discovered == true then
      y = 42 + (62 * math.floor((i-1)/6))
      x = 26 + math.floor((350 * (i-1)) / 6) % 350
      if ingredients[i].quantity == 0 then
        g.setColor(1, 1, 1, .5)
        g.draw(ingredients[i].img, x, y)
        g.reset()
      else
        g.draw(ingredients[i].img, x, y)
      end
      
      if state.isBrewing or state.isInspectingIngredients then
        g.printf(ingredients[i].letterMap, x, y + 35, 30)
      end
      
    end
  end
  
  --show the potions on the table
  for i=1, table.getn(onTable) do
    x = 50 + (60 * i)
    y = 330
    g.draw(potionSheet, onTable[i].img, x, y)
    if state.isBrewing or state.isInspectingPotions then
      g.printf("1", x, y+35, 30)
    end
    
  end
  
  --show details about a potion
  if state.isInspectingPotions then
    g.draw(brewBox, 420, 370)
    if state.inspecting then
      g.printf(state.inspecting.letterMap, 430, 390, 30)
    end
  end
  
  --show details about an ingredient
  if state.isInspectingIngredients then
    g.draw(brewBox, 420, 370)
    if state.inspecting then
      g.setFont(regFont)
      g.draw(state.inspecting.img, 430, 390)
      g.printf(state.inspecting.name, 488, 390, 300)
      g.setFont(regSmFont)
      g.printf(state.inspecting.desc, 430, 480, 360)
      g.printf("COST: "..state.inspecting.cost, 430, 550, 100)
      g.setFont(keyFont)
    end
  end
  
  --show the potions that are for sale
  for i=1, table.getn(forSale) do
    g.draw(potionSheet, forSale[i].img, 670, 30)
  end
  
  
  --if a customer is here then open the door
  if state.customerPresent then
    g.draw(customer, 500, 116)
    if not state.isTalking then
      g.draw(customerSign, 510, 230)
      g.printf('3', 515, 235, 30)
    end
    
  else
    g.draw(door, 528, 69)
  end
  
  --if you're brewing, open the brew box
  if state.isBrewing then
    g.draw(brewBox, 420, 370)
    if table.getn(brewContents) > 0 then
      for i=1, table.getn(brewContents) do
        g.printf(brewContents[i].letterMap, 430, 390, 30)
      end
    end
  elseif state.isBookOpen then
    g.draw(openBook)
    populateBook(state.currPage)
  elseif state.congratsPopover then
    g.draw(congrats)
  elseif state.isTalking then
    g.draw(dialogBox, 10, 340)
    g.draw(state.currentCustomer.img, 26, 352)
    g.setFont(regFont)
    g.printf(state.currentCustomer.name, 28, 540, 200)
    g.printf(state.convoState, 200, 380, 400)
    g.setFont(keyFont)
  end

end


--pretty much everything happens here!
function love.keyreleased(k)
  
  if k == 'right' and state.isBookOpen == true then
    state.currPage = math.min(state.currPage + 2, maxPage)
    return
  elseif k == 'left' and state.isBookOpen == true then
    state.currPage = math.max(state.currPage - 2, minPage)
  end
  

  if not checkExit(k) then
    
    if state.isBrewing then
      tryAddIngredient(k)
    elseif state.isSelling then
      trySellPotion(k)
    elseif state.isTalking then
      conversation(k)
    elseif state.isBookOpen then
      navigateBook(k)
    elseif state.isInspectingIngredients then
      setInspectI(k)
    elseif state.isInspectingPotions then
      setInspectP(k)
    else
      tryChangeState(k)
    end
    
  else 
    exitStates()
  end  

end

--make sure that the user isn't trying to get out of the current state
function checkExit(k)
  if k == '0' or k == 'escape' then
    return true
  end
end

function setInspectI(k)
  state.inspecting = findIngredient(k)
end

function setInspectP(k)
  state.inspecting = findPotion(k)
end


--validate that the ingredient can be added to brewContents
function tryAddIngredient(k)
  
  if table.getn(brewContents) == 2 then
    if k == '8' then
      tryCompleteBrew()
    end
    return
  end  
  
  ingred = findIngredient(k)
  
  if ingred == nil then
    ingred = findPotion(k)
    if ingred == nil then
      return
    end
  end
  
  if ingred.quantity >= 1 then
    table.insert(brewContents, ingred)
  end
  
end

--talking to a customer
function conversation(k)
  
end

--reading the logbook
function navigateBook(k)
  
end

--enter a different game state (exits other game states as well)
function tryChangeState(k)
  
  exitStates()
  
  if k == '1' then --start brew!
    state.isBrewing = true
  elseif k == '2' then --put potion up for sale!
    state.isSelling = true
  elseif k == '3' then --talk to customer!
    state.isTalking = true
  elseif k == '4' then --inspect ingredients
    state.isInspectingIngredients = true
  elseif k == '5' then --inspect potions
    state.isInspectingPotions = true
  elseif k == '6' then --book open
    state.isBookOpen = true
  end
  
end

--go back to totally neutral "nothing happening"
function exitStates()
  state.isBrewing = false
  state.isSelling = false
  state.isTalking = false
  state.isBookOpen = false
  state.isInspectingIngredients = false
  state.isInspectingPotions = false
  state.congratsPopover = nil
  state.inspecting = nil
  state.convoState = 0
  brewContents = {}
end

--check to see if the created potion is legit or not, add potion to table, congrats popover
function tryCompleteBrew()
  
  local i1 = brewContents[1].id
  local i2 = brewContents[2].id
  exitStates()
  local finalBrew = {i1, i2}
  ingredients[i1].quantity = ingredients[i1].quantity - 1
  ingredients[i2].quantity = ingredients[i2].quantity - 1

  table.sort(finalBrew)
  
  for i = 1, table.getn(potions) do
    if ingredientsMatch(potions[i].ingredients, finalBrew) then
      if potions[i].discovered == false then
        state.congratsPopover = potions[i]
        potions[i].discovered = true
      end
      potions[i].quantity = potions[i].quantity + 1
      return
    end
  end
  
  barrelContents = barrelContents + 1
  
end

function ingredientsMatch(a, b)
  
    if a[1] == b[1] and a[2] == b[2] then
      return true
    elseif a[1] == b[2] and a[2] == b[1] then
      return true
    end
    
    return false
  
  end

--return relevant ingredient based on matched keystroke
function findIngredient(k)
  
  for i=1, table.getn(ingredients) do
    if ingredients[i].letterMap == k then
      return ingredients[i]
    end
    
  end
  
  return nil
  
end

--return relevant ingredient based on matched keystroke
function findPotion(k)
  
  for i=1, table.getn(onTable) do
    if onTable[i].letterMap == k then
      return onTable[i]
    end
  end
  
  return nil
  
end

function trySellPotion(k)
  
  table.insert(forSale, p)
  
end

--validation happens in tryCompleteBrew()
function addTablePotion(p)
  
end

--validation happens in conversation()
function removeForSale(p)
  table.remove(forSale, p)
end

--validation happens in tryAddIngredient() and trySellPotion()
function removeTablePotion(p)
  if p.quantity == 1 then
    table.remove(onTable, p)
  else
    p.quantity = p.quantity - 1
  end
  
end

function populateBook(page)
  
  --ingredients pages 0 - 2
  local start = (page * 6) + 1
  local opp = 0
  g.setFont(regFont)
  g.printf("INGREDIENTS", 60, 36, 300)
  g.setFont(regSmFont)
  for i=start, table.getn(ingredients)-((2-page)*6) do
    ing = ingredients[i]
    if ing.id - 6 >= start then
        opp = 350
      end
    if ing.discovered == true then
      x = 60 + opp
      y = 70 * (i % 12) + 10 - (opp + math.floor(opp/3))
      g.draw(ing.img, x, y)
      g.printf(ing.name..': '..ing.desc, x + 56, y + 10, 290)
    else
      g.printf('#'..ing.id..' is undiscovered', 56 + opp, 70 * (i%12) +20 - (opp + math.floor(opp/3)), 300)
    end
  end
  
end

