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
      'Right outside your front door. Local, artisinal dirt.', --desc
      g.newImage('assets/dirt.png'), --img
      1 --cost
    ),
    
    i.new(
      3, --id
      'c', --key
      'Questionably potable water', --name
      'What water *isn\t* questionably potable until you drink it?', --desc
      g.newImage('assets/water.png'), --img
      1 --cost
    ),
    
    i.new(
      4, --id
      'd', --key
      'Pee in a jar (yours)', --name
      'It\'d be free except you have to pay for the water.', --desc
      g.newImage('assets/pee.png'), --img
      1 --cost
    ),
    
    i.new(
      5, --id
      'e', --key
      'Shredded $10 bills', --name
      'Cash isn\'t worth much nowadays, except for shredding.', --desc
      g.newImage('assets/bills.png'), --img
      2 --cost
    ),
    
    i.new(
      6, --id
      'f', --key
      'Mosquito netting', --name
      '', --desc
      g.newImage('assets/netting.png'), --img
      2 --cost
    ),
    
    i.new(
      7, --id
      'g', --key
      'Silicone remote control buttons', --name
      '', --desc
      g.newImage('assets/buttons.png'), --img
      2 --cost
    ),
    
    i.new(
      8, --id
      'h', --key
      'Rusty microchips', --name
      '', --desc
      g.newImage('assets/chips.png'), --img
      3 --cost
    ),
    
    i.new(
      9, --id
      'i', --key
      'Bat whiskers (gently used)', --name
      '', --desc
      g.newImage('assets/whiskers.png'), --img
      2 --cost
    ),
    
    i.new(
      10, --id
      'j', --key
      'Powdered bicycle frame', --name
      '', --desc
      g.newImage('assets/bicycle.png'), --img
      4 --cost
    ),
    
    i.new(
      11, --id
      'k', --key
      'Perfectly round pebble', --name
      '', --desc
      g.newImage('assets/pebble.png'), --img
      2 --cost
    ),
    
    i.new(
      12, --id
      'l', --key
      'Cheeto dust', --name
      '', --desc
      g.newImage('assets/cheeto.png'), --img
      2 --cost
    ),
    
    i.new(
      13, --id
      'm', --key
      'A bit of Lorraine\'s hair', --name
      '', --desc
      g.newImage('assets/hair.png'), --img
      4 --cost
    ),
    
    i.new(
      14, --id
      'n', --key
      'Fireflies (pink)', --name
      '', --desc
      g.newImage('assets/fireflies.png'), --img
      3 --cost
    ),
    
    i.new(
      15, --id
      'o', --key
      'Lime gelatin packet', --name
      '', --desc
      g.newImage('assets/gelatin.png'), --img
      3 --cost
    ),
    
    i.new(
      16, --id
      'p', --key
      'Sweetened uranium', --name
      '', --desc
      g.newImage('assets/uranium.png'), --img
      8 --cost
    ),
    
    i.new(
      17, --id
      'q', --key
      'Mirror that once reflected the moon', --name
      '', --desc
      g.newImage('assets/mirror.png'), --img
      5 --cost
    ),
    
    i.new(
      18, --id
      'r', --key
      'Moose sweat', --name
      '', --desc
      g.newImage('assets/moose.png'), --img
      4 --cost
    ),
    
    i.new(
      19, --id
      's', --key
      'Honeycomb (populated)', --name
      '', --desc
      g.newImage('assets/honeycomb.png'), --img
      2 --cost
    ),
    
    i.new(
      20, --id
      't', --key
      'Toaster coils (used)', --name
      '', --desc
      g.newImage('assets/coils.png'), --img
      4 --cost
    ),
    
    i.new(
      21, --id
      'u', --key
      'The alphabet recited into a balloon', --name
      '', --desc
      g.newImage('assets/alphabet.png'), --img
      3 --cost
    ),
    
    i.new(
      22, --id
      'v', --key
      'Shard of a record by The Smiths', --name
      '', --desc
      g.newImage('assets/record.png'), --img
      7 --cost
    ),
    
    i.new(
      23, --id
      'w', --key
      'Ashes of a notarized document', --name
      '', --desc
      g.newImage('assets/document.png'), --img
      5 --cost
    ),
    
    i.new(
      24, --id
      'x', --key
      'Foil scraped from a 1st Ed. Charizard', --name
      '', --desc
      g.newImage('assets/foil.png'), --img
      9 --cost
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
    
    --(id, desc, name, ingredients, sell)
 p.new(1,'Your next lawsuit will result in cash! For someone! Guaranteed! Warning: may accidentally rename you to Sue.','Sue potion',{5,23}),
p.new(2,'Definitely makes things taste better and definitely doesn\'t make them taste like a mixture of dirt and cheese.','Flavor enhancer',{2,12}),
p.new(3,'Stops you and your children and maybe even your childhood self from spending all the money on trading cards.','Pokemania prevention serum',{5,24}),
p.new(4,'Does what it says on the tin. Want to avoid kidney stones? Use this. Some percent effective!','Anti kidney stone solution',{4,11}),
p.new(5,'Mysterious wobbly substance. The most mysterious potion you will create, for sure.','Wiggly jiggly',{3,15}),
p.new(6,'Chester Cheeto was based off of Morrissey for sure. Look at those cool sunglasses.','Handsome devil',{12,22}),
p.new(7,'You may have thought "what about bees or flies?" Everyone knows the best combat animal is a moose.','Combat animal summoner',{16,18}),
p.new(8,'You know what they say: busy bees make bank. That\'s what they say, right?','Busy bee potion',{5,19}),
p.new(9,'Aww, so cute! Let\'s make a jillion of these potions!!!!','Puppy creator',{1,4}),
p.new(10,'Rubber, silicone, whatever, close enough. A sad fact, widely known.','Rubber ring',{7,22}),
p.new(11,'When you combine hair and water, you get shampoo. Who knew?','Shampoo',{3,13}),
p.new(12,'Take me anywhere, I don\'t care, I don\'t care, I don\'t care...','There is a light that never goes out',{14,22}),
p.new(13,'If anyone can pull off wearing sunglasses at night, it\'s Chester Cheeto. And now, whoever drinks your new potion!','Nighttime sunglasses enhancer',{12,17}),
p.new(14,'With this serum, you too can have the world\'s tallest hair. May cause burnt hair smell.','Bride of Frankenstein serum',{13,20}),
p.new(15,'Did you know that bat whiskers are used to echolocate their prey? That\'s because it\'s fake. Bats have whiskers though.','Sonar potion',{8,9}),
p.new(16,'Now you know how to make your own kale shake at home. Congratulations.','Kale shake',{1,3}),
p.new(17,'The name of this beer is definitely not a reference via synonym to a very bad beer.','Real Chill Ale TM',{3,4}),
p.new(18,'Careful. We\'re not totally sure yet what these drones will do when you let them out, but they\'re SUPER cool-looking.','Swarm of drones',{8,19}),
p.new(19,'Mmmm, my favorite food and now yours.','Cheeto soup',{3,12}),
p.new(20,'Lorraine had quite a lot of hair. "And if you have 5 seconds to spare, then I\'ll tell you the story of my life..."','Half a person',{13,22}),
p.new(21,'Get in there and get that voucher! Zoom around the Kanto region with reckless abandon!','Vermillion City Pokemon Club pass',{10,24}),
p.new(22,'"It\'s serious. I know, it\'s really serious." No, really. She\'s allergic to bees.','Girlfriend in a coma',{19,22}),
p.new(23,'Whoever takes this will be unable to see themselves in a mirror. They aren\'t vampires, they just have dirty mirrors.','Ignorance is bliss',{2,17}),
p.new(24,'I will avoid further description of this potion in order to maintain a PG-13 rating for this game.','Fetish cream',{4,13}),
p.new(25,'Ironically, cheeto dust falls right through.','Cheesecloth',{6,12}),
p.new(26,'Use this potion to more effectively whack your way through thick jungle brush!','Jungle potion',{1,6}),
p.new(27,'Glowy, slimy, mushy stuff? Yep, that\'s Gak!','Gak',{14,15}),
p.new(28,'I won\'t tell anyone about the secret ingredient if you won\'t.','Downhome Mountain Whiskey TM',{3,18}),
p.new(29,'Make anything electronic with this cream! Pencils? Electronic! Your little brother? Yep - electronic! ','Electronification cream',{7,8}),
p.new(30,'Pick up the tiniest bits first, and work your way up. This little ball of joy is basically a cleaner\'s miracle!','Instant katamari!',{7,11}),
p.new(31,'This launders money by costing a lot to make, and the only person who will buy it is you. Bam! Instant legitimization.','Money laundering potion',{2,5}),
p.new(32,'Another cool new recipe to try. You\'re welcome.','Nacho cheese',{12,15}),
p.new(33,'Got a nuclear reactor that\'s in danger of an imminent breach? You\'re in luck with this fancy new solution!','Nuclear containment solution',{3,16}),
p.new(34,'The sycophantic slags all say: the vulgarest of all pictures is that of a fire-breathing, scaly orange dragon.','Paint a vulgar picture',{22,24}),
p.new(35,'Sure, you\'ll die, but you\'ll really enjoy doing it.','Sweet, sweet death',{16,19}),
p.new(36,'WOAH this is SUPER serum! What kind of super? Who knows! What\'s it do? Only the ingester of this serum will find out!','Super serum',{4,16}),
p.new(37,'It\'s amazing how much a balloon full of stale breath can teach you.','Can you even spell "Perfectly"?',{11,21}),
p.new(38,'Rage Against the Machine subsisted entirely on this juice for the whole of their first US tour. Today you learned.','Disrespect for authority juice',{4,23}),
p.new(39,'I\'d make a joke about pissing money away but I think the ingredients of this potion already did that.','Money waster',{4,5}),
p.new(40,'Get it? Because bicycle tires oscillate wildly? Let me have this one please.','Oscillate wildly',{10,22}),
p.new(41,'Want to make something rusty? Just add the Rustmaker! Microchips optional.','Rustmaker',{3,8}),
p.new(42,'Words will never hurt you, unless they\'re mixed in with water in a projectile balloon thrown at your head.','Sticks and stones',{3,21}),
p.new(43,'Did you know that key limes and regular limes are different, and they taste different? Make a pie with this potion and find out.','Key lime pie',{15,19}),
p.new(44,'Not sure what kind of designer drug this is but both ingredients are powdery so you could definitely give it a snort.','Designer drug',{2,10}),
p.new(45,'I refuse to make a joke about phoning home.','ET summoner',{10,17}),
p.new(46,'You just, like, gotta burn that grass, man.','Wacky tobaccy',{1,20}),
p.new(47,'Oh, you did a bad thing (by making this potion) / And I\'m not happy / And I\'m not sad.','The night has opened my eyes',{17,22}),
p.new(48,'Learn everything there is about entomology by taking this potion! Unfortunately you\'ll forget it as soon as it wears off. Better stock up.','Entomologist potion',{6,14}),
p.new(49,'Make any dessert more expensive by adding this topping! It\'s only expensive because it\'s made of money.','Expensive dessert maker',{5,15}),
p.new(50,'Why would you make a toaster wifi-enabled? Well I\'ll tell you. The real question is: why not?','Wifi-enabled toaster',{8,20}),
p.new(51,'More effective than bug spray, and about 93% more likely to result in containers of delicious honey.','Beekeeping serum',{6,19}),
p.new(52,'This is another joke that I will not spell out, so that people who understand the joke will have a private chuckle, and others will think that the creator of this game is just making things up.','Small paper tubes',{5,17}),
p.new(53,'Poor Bulbasaur.','"It\'s super effective!"',{1,24}),
p.new(54,'Give this to your worst enemy: the mean girl in high school who somehow had perfect hair and looked great in sweatpants.','De-perfectifier',{2,11}),
p.new(55,'Yes, this potion will indeed teach you how to fish... but only if you\'re a man. Why would you make such a sexist potion?','Teach a man to fish...',{3,6}),
p.new(56,'"I\'m truly sorry, but it sounds like a wonderful thing."','The queen is dead',{16,22}),
p.new(57,'Want lots of bad luck? Use this mirror-breaking potion to break every mirror you walk past! Is breaking mirrors bad luck? Now it is!','Mirror breaker',{11,17}),
p.new(58,'Drink this potion to instantly sprout your hair by at least 5 inches. Warning: the extra hair may look like bat whiskers.','Insta-weave',{9,13}),
p.new(59,'Luckily, kids don\'t have to pay to learn the alphabet. YET.','Tuition payment manifester',{5,21}),
p.new(60,'Sprinkle this powder on your television set in order to either: get your TV dusty, or make the shows you\'re watching way better. Results may vary.','Television improver',{4,7}),
p.new(61,'Ah, the glorious days of biking around the neighborhood, rolling down hills, the wind in your hair... relive your childhood with Adventure pillz.','Adventure pillz!',{1,10}),
p.new(62,'What does "enriched" even mean? What would it do for ammo? I\'m looking at you, Factorio.','Enriched slingshot ammo',{11,16}),
p.new(63,'"I said money, money changes everything." Take this potion to change... everything.','Money changes everything',{5,22}),
p.new(64,'Just like mom used to make (when she was a child playing in the back garden)!','Mud pie',{2,3}),
p.new(65,'Hated the ending of Chernobyl? Use this potion to change it. Each swig will rewrite the last episode. Maybe even history, who knows?','Chernobyl ending changer',{7,16}),
p.new(66,'Like a cute littly kitty sipping cream from a saucer. That could be you. With this potion. And a saucer.','Dainty sipper',{3,9}),
p.new(67,'WOAH. You could totally sell these blueprints online.','Hoverbike blueprints',{8,10}),
p.new(68,'Want to pirate copywritten content, but keep getting foiled by silly internet laws? One drop of this potion will get The Man off your back for 30 minutes, guaranteed.','DMCA stopper',{8,23}),
p.new(69,'Get it? Micro? Mini? Cleaning up cheeto dust? Imagine how cute a mini Roomba looks. No, really, you\'ll have to imagine it, nobody drew one.','mini-Roomba',{8,12}),
p.new(70,'Pour this solution on anything to see if there\'s gold on it. Guaranteed to work for things like: sweaters, coffee grounds, boxes of crayons, etc. May not work on dirt.','Gold sifter',{2,6}),
p.new(71,'"We all float down here..."','Flotation device',{10,21}),
p.new(72,'Your new favorite smoothie, in potion form!','Green machine',{1,15}),
p.new(73,'Wow, the climate has really changed, hasn\'t it? Warning: accidentally killing this grass could put you in danger of being convicted of manslaughter.','Sentient grass',{2,1}),
p.new(74,'Imagine the epic battle between fireflies and bees. With this potion, you won\'t have to!','Battle potion',{14,19}),
p.new(75,'"What do we get for our trouble and pain?" Well, probably a potion that automatically notarizes any documents you sign. Cool, huh?','Miserable lie',{22,23}),
p.new(76,'Imagine a blinking neon pink flamingo outside a tavern, but the neon sign is actually just a glass tube filled with fireflies? Probably a bit too twee. ','Neon bar sign',{8,14}),
p.new(77,'"...and the land that we stand on is ours." This serum grants the imbiber temporary domain over any dirt they happen to be standing on right that very moment.','A rush and a push...',{2,22}),
p.new(78,'Guaranteed to keep you safe from harm as long as you do not fall off of your bike or get hit by any large motor vehicles. Or small ones. Or other bikes. Or enterprising deer.','Grow-your-own-helmet',{10,13}),
p.new(79,'Drink this potion to order as much pay-per-view as you\'d like without fear of discovery. It\'ll all show up on the cable bill as "Totally legit movie that is not a dirty one." You\'re welcome.','Pay-per-view hider',{2,7}),
p.new(80,'Water balloons, but bad.','World\'s worst prank',{4,21}),
p.new(81,'Someone tell Morrissey that moose sweat isn\'t hurting anybody!','Meat is murder',{18,22}),
p.new(82,'"Golden lights displaying your name..." this serum causes your first name to be displayed behind you in waves of shimmering droplets of an unnamed liquid.','Golden lights',{4,22}),
p.new(83,'Botanical mutations happen at an incredibly rapid pace with this magical potion!','Little shop of plants',{1,16}),
p.new(84,'Hated Bee Movie? Wish it never existed? Take these pills to effectively make it as if Bee Movie had never been made. Results guaranteed to last until the next time you look up Bee Movie on imdb.','Bee Movie eraser',{7,19}),
p.new(85,'This is less of a "potion" and more of an "electrocution" but in any case, it *does* come in drinkable form!','Death potion',{3,20}),
p.new(86,'Sprinkle this on yourself, your significant other, or your dog, to immediately turn the recipient into a Mega Cool Dude wearing sunglasses and riding an Ultra Cool Bike.','Cool powder',{10,12}),
p.new(87,'Give this cream to your enemies. It will prevent them from drowning in cash, but only the good way. They can still literally drown in cash, if they try hard enough.','Cash drowning preventer',{3,5}),
p.new(88,'Do you still know the words to the Pokemon rap? This game designer does.','"Catch \'em, catch \'em, gotta catch \'em all!"',{7,24}),
p.new(89,'Take any small mammal, and then put it on a bike. Cute? We thought so. Make lil animals even adorabler with this nifty powder.','Small mammal adorabilification powder',{9,10}),
p.new(90,'I choose you, Beedrill!','Beedrill summoner',{19,24}),
p.new(91,'What\'s better than a hoverbike? I\'ll tell you: it\'s a hoverbike that can go really, really, really fast.','Rocket bike',{10,16}),
p.new(92,'Taking this potion will immediately put commercials for you or for whatever products you\'re thinking about really hard onto your televison. They may not be good commercials, but hey.','"All PR is good PR"',{5,7}),
p.new(93,'PREVENTS ALL SKIPS. CD skips? Gone. Rock skips? Can\'t happen. Joyful frolicking? NO WAY. This serum stops it all.','Anti-skip serum',{3,11}),
p.new(94,'Pour this juice on any piece of a vehicle to reconstitute it. Warning: do not drink. Unless you are a motorcycle.','Vehicle reconstitution juice',{3,10}),
p.new(95,'With these pills, YOU are the fairest of them all.','Snow White pills',{7,17}),
p.new(96,'Get past those pesky rocks on Route 111 with this TM, I mean, potion.','Rock smash',{11,24}),
p.new(97,'Looks so tasty, hurts so bad: the World\'s Worst Cheese Ball. And it can be yours!','World\'s worst cheese ball',{11,12}),
p.new(98,'Turns whoever drinks this potion into a lunchlady. Nifty way to temporarily switch up your gender, or to serve bland food to screaming children. Or both!','Lunchlady potion',{6,13}),
p.new(99,'Teleports you to a cemetery to hang out with the bats and gravestones and skeletons and stuff. "Let\'s go where we\'re happy."','Cemetry gates',{9,22}),
p.new(100,'Highlights all nearby animal tracks in bright purple, but only in your head. May confuse others.','Hunting potion',{2,18}),
p.new(101,'A mystical guide to skipping school. Because "education is a bad mistake."','The headmaster ritual',{21,22}),
p.new(102,'These pills will do all the power-wasting you couldn\'t do before you started mining Dogecoin!','Cryptocurrency miner',{5,8}),
p.new(103,'Let\'s not talk about the provenance of this rug, and what cheetah may have died in order to create it. The important thing is that it\'s here and it smells like cheetos.','Cheetah print shag rug',{12,13}),
p.new(104,'"Meet me at the fountain / shove me on the patio" This serum causes a blast of water to spurt upwards from your mouth whenever you open it to quote Smiths lyrics. An improvement, really.','Reel around the fountain',{3,22}),
p.new(105,'"Don\'t come to the house tonight, because there\'s somebody here, who\'ll" put a toaster in your bathtub.','Death at one\'s elbow',{20,22}),
p.new(106,'Makes you totally great at planning dates. Especially picnics. Ants not included.','Picnic date planner',{1,13}),
p.new(107,'Surf GeoCities like it\'s 1999. No, really. This potion allows you to time travel, but only in Internet Explorer 5. Godspeed.','Net surfer',{6,8})
    
  }
  
    
  
end

return M