local i = require 'ingredient'
local c = require 'customer'
local p = require 'potion'

M = {}

function M.initialize()
  
  --ingredients: function M.new(id, letterMap, name, desc (max 160 char), img, cost)
  ingredients = {
    
    i.new(
      1, --id
      'a', --key
      'Irradiated grass', --name
      'Non-irradiated grass might work better, but this is what\'s available, so...', --desc
      g.newImage('assets/grass.png'), --img
      1 --cost
    ),
    
    i.new(
      2, --id
      'b', --key
      'Dirt (from outside)', --name
      '', --desc
      g.newImage('assets/dirt.png'), --img
      1 --cost
    ),
    
    i.new(
      3, --id
      'c', --key
      'Questionably potable water', --name
      '', --desc
      g.newImage('assets/water.png'), --img
      1 --cost
    ),
    
    i.new(
      4, --id
      'd', --key
      'Pee in a jar (yours)', --name
      '', --desc
      g.newImage('assets/pee.png'), --img
      1 --cost
    ),
    
    i.new(
      5, --id
      'e', --key
      'Shredded $10 bills', --name
      '', --desc
      g.newImage('assets/bills.png'), --img
      1 --cost
    ),
    
    i.new(
      6, --id
      'f', --key
      'Mosquito netting', --name
      '', --desc
      g.newImage('assets/netting.png'), --img
      1 --cost
    ),
    
    i.new(
      7, --id
      'g', --key
      'Silicone remote control buttons', --name
      '', --desc
      g.newImage('assets/buttons.png'), --img
      1 --cost
    ),
    
    i.new(
      8, --id
      'h', --key
      'Rusty microchips', --name
      '', --desc
      g.newImage('assets/chips.png'), --img
      1 --cost
    ),
    
    i.new(
      9, --id
      'i', --key
      'Bat whiskers (gently used)', --name
      '', --desc
      g.newImage('assets/whiskers.png'), --img
      1 --cost
    ),
    
    i.new(
      10, --id
      'j', --key
      'Powdered bicycle frame', --name
      '', --desc
      g.newImage('assets/bicycle.png'), --img
      1 --cost
    ),
    
    i.new(
      11, --id
      'k', --key
      'Perfectly round pebble', --name
      '', --desc
      g.newImage('assets/pebble.png'), --img
      1 --cost
    ),
    
    i.new(
      12, --id
      'l', --key
      'Cheeto dust', --name
      '', --desc
      g.newImage('assets/cheeto.png'), --img
      1 --cost
    ),
    
    i.new(
      13, --id
      'm', --key
      'A bit of Lorraine\'s hair', --name
      '', --desc
      g.newImage('assets/hair.png'), --img
      1 --cost
    ),
    
    i.new(
      14, --id
      'n', --key
      'Fireflies (pink)', --name
      '', --desc
      g.newImage('assets/fireflies.png'), --img
      1 --cost
    ),
    
    i.new(
      15, --id
      'o', --key
      'Lime gelatin packet', --name
      '', --desc
      g.newImage('assets/gelatin.png'), --img
      1 --cost
    ),
    
    i.new(
      16, --id
      'p', --key
      'Sweetened uranium', --name
      '', --desc
      g.newImage('assets/uranium.png'), --img
      1 --cost
    ),
    
    i.new(
      17, --id
      'q', --key
      'Mirror that once reflected the moon', --name
      '', --desc
      g.newImage('assets/mirror.png'), --img
      1 --cost
    ),
    
    i.new(
      18, --id
      'r', --key
      'Moose sweat', --name
      '', --desc
      g.newImage('assets/moose.png'), --img
      1 --cost
    ),
    
    i.new(
      19, --id
      's', --key
      'Honeycomb (populated)', --name
      '', --desc
      g.newImage('assets/honeycomb.png'), --img
      1 --cost
    ),
    
    i.new(
      20, --id
      't', --key
      'Toaster coils (used)', --name
      '', --desc
      g.newImage('assets/coils.png'), --img
      1 --cost
    ),
    
    i.new(
      21, --id
      'u', --key
      'The alphabet recited into a balloon', --name
      '', --desc
      g.newImage('assets/alphabet.png'), --img
      1 --cost
    ),
    
    i.new(
      22, --id
      'v', --key
      'Shard of a record by The Smiths', --name
      '', --desc
      g.newImage('assets/record.png'), --img
      1 --cost
    ),
    
    i.new(
      23, --id
      'w', --key
      'Ashes of a notarized document', --name
      '', --desc
      g.newImage('assets/document.png'), --img
      1 --cost
    ),
    
    i.new(
      24, --id
      'x', --key
      'Foil scraped from a 1st Ed. Charizard', --name
      '', --desc
      g.newImage('assets/foil.png'), --img
      1 --cost
    )
    
  }
  
  
  
  customers = {
    
    c.new(
      1, --id
      'Gertrude', --name,
      0, --want (potion id)
      0, --give (hint id)
      0, --give (ingredient id)
      g.newImage('assets/c.png'), --img
      'Good day!', --greeting text
      'I would truly love some BLAH.', --want text
      'Good show old chap.', --success text
      'Maybe next time.' --failure text
    )
  
  }

  
  hints = {
    
    'test hint',
    
    ''
    
  }
  
  
  potions = {
    
    --(id, name, ingredients, sell)
    p.new(
      1, --id
      'name', --name
      {1, 2}, --ingredients
      3 --sell
    )
    
  }
  
    
  
end

return M