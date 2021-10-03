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
      'What water *isn\'t* questionably potable until you drink it?', --desc
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
  
  customers = {
    
    c.new(1,'Matilda',34,74,19,g.newImage('assets/c.png'),'Hi there, party person!','I\'m looking for a substance called *'.. potions[34].name ..'*. Can I have some?','Huzzah!','Darn. See ya.'),
c.new(2,'Hannah',85,3,20,g.newImage('assets/c.png'),'How\'re you this not-so-fine day?','I\'m in serious need of a particular item called  *'.. potions[85].name ..'*. How about it?','You won\'t regret this!','Maybe next time.'),
c.new(3,'Lewis',14,77,17,g.newImage('assets/c.png'),'What\'s shakin\'? Aside from the earth\'s tectonic plates on an alarmingly regular basis, that is.','Do you happen to have any vials in stock of *'.. potions[14].name ..'*. What say you?','Oh, joy.','What a jerk. Adios.'),
c.new(4,'Maude',12,11,19,g.newImage('assets/c.png'),'Good day sir and/or ma\'am!','Help! I need some *'.. potions[12].name ..'*. Pretty please?','You\'re not so bad, are you?','WHY NOT :-('),
c.new(5,'Isabella',49,48,3,g.newImage('assets/c.png'),'Hello hello hello hello! That\'s four hellos! All for you!','I wouldn\'t say no right about now to an order of  *'.. potions[49].name ..'*. I think that\'s a reasonable request, don\'t you?','Owe you one.','Next time I will wear a disguise.'),
c.new(6,'Joseph',19,79,21,g.newImage('assets/c.png'),'Oh gosh, I\'m so happy you\'re open. I\'m desperate!','My pocket full of units would like to say hello to their good friend *'.. potions[19].name ..'*. So? Yes?','YOU WILL BE SPARED.','I\'m reporting this to the Better Business Bureau.'),
c.new(7,'Sandra',33,7,24,g.newImage('assets/c.png'),'Good insert your time of day here.','I AM NOT ROBOT I REQUIRE  *'.. potions[33].name ..'*. Can you help?','Great! Wonderful! Stupenderous!','Well now I\'m sad.'),
c.new(8,'Brooke',95,84,7,g.newImage('assets/c.png'),'Oh yeeaaahhh, the store is open! Time to party!','Jiminy Christmas, it sure is raining fire out there! Anyway. Do you have any  *'.. potions[95].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','Well, I won\'t believe a thing they say anymore, you\'re nice.','They were right about you.'),
c.new(9,'John',5,34,23,g.newImage('assets/c.png'),'Please, you have to help me.','You wouldn\'t happen to have some *'.. potions[5].name ..'*. Help yes can you?','OH thank God.','Fine, I didn\'t want it anyway.'),
c.new(10,'Kristina',92,103,17,g.newImage('assets/c.png'),'Take a break to chat with me for a sec.','I\'d like some of a particular potion called... *'.. potions[92].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','Jeez, so expensive! Oh well, I need it.','Darn. See ya.'),
c.new(11,'Lena',13,18,16,g.newImage('assets/c.png'),'Look at you, hard at work. It warms my cold heart.','The world has gone to shit, I tell you! The only thing that can help me is  *'.. potions[13].name ..'*. Is it in stock?','Wasn\'t it cheaper last week? Alas.','Maybe next time.'),
c.new(12,'Daniel',58,81,24,g.newImage('assets/c.png'),'I never expected to find myself here.','Please for the love of God I hope you have  *'.. potions[58].name ..'*. Gosh is it available?','Didn\'t the other shop have it for less?','What a jerk. Adios.'),
c.new(13,'William',7,24,15,g.newImage('assets/c.png'),'Ugh I hope you\'re efficient.','Could you possibly spare for not too much money some *'.. potions[7].name ..'*. What say you?','Cannot wait to consume or otherwise use this!','WHY NOT :-('),
c.new(14,'Alyssa',83,13,13,g.newImage('assets/c.png'),'BRO. WHAT UP.','I\'m looking for a substance called *'.. potions[83].name ..'*. Pretty please?','Is it safe to eat? I hope so! I\'m hungry.','Next time I will wear a disguise.'),
c.new(15,'Lois',33,86,10,g.newImage('assets/c.png'),'Hi there, party person!','I\'m in serious need of a particular item called  *'.. potions[33].name ..'*. I think that\'s a reasonable request, don\'t you?','Golly, what a treat.','I\'m reporting this to the Better Business Bureau.'),
c.new(16,'Sophia',48,33,11,g.newImage('assets/c.png'),'How\'re you this not-so-fine day?','Do you happen to have any vials in stock of *'.. potions[48].name ..'*. So? Yes?','Thank you so much!','Well now I\'m sad.'),
c.new(17,'Pamela',38,75,11,g.newImage('assets/c.png'),'What\'s shakin\'? Aside from the earth\'s tectonic plates on an alarmingly regular basis, that is.','Help! I need some *'.. potions[38].name ..'*. Can you help?','Yay, thanks, see ya later!','They were right about you.'),
c.new(18,'Charlotte',55,4,14,g.newImage('assets/c.png'),'Good day sir and/or ma\'am!','I wouldn\'t say no right about now to an order of  *'.. potions[55].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','Huzzah!','Fine, I didn\'t want it anyway.'),
c.new(19,'Laura',42,26,19,g.newImage('assets/c.png'),'Hello hello hello hello! That\'s four hellos! All for you!','My pocket full of units would like to say hello to their good friend *'.. potions[42].name ..'*. Help yes can you?','You won\'t regret this!','Darn. See ya.'),
c.new(20,'Helen',20,82,24,g.newImage('assets/c.png'),'Oh gosh, I\'m so happy you\'re open. I\'m desperate!','I AM NOT ROBOT I REQUIRE  *'.. potions[20].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','Oh, joy.','Maybe next time.'),
c.new(21,'Arthur',3,64,10,g.newImage('assets/c.png'),'Good insert your time of day here.','Jiminy Christmas, it sure is raining fire out there! Anyway. Do you have any  *'.. potions[3].name ..'*. Is it in stock?','You\'re not so bad, are you?','What a jerk. Adios.'),
c.new(22,'Quinn',75,93,4,g.newImage('assets/c.png'),'Oh yeeaaahhh, the store is open! Time to party!','You wouldn\'t happen to have some *'.. potions[75].name ..'*. Gosh is it available?','Owe you one.','WHY NOT :-('),
c.new(23,'Vivian',74,102,9,g.newImage('assets/c.png'),'Please, you have to help me.','I\'d like some of a particular potion called... *'.. potions[74].name ..'*. What say you?','YOU WILL BE SPARED.','Next time I will wear a disguise.'),
c.new(24,'Stanley',66,50,17,g.newImage('assets/c.png'),'Take a break to chat with me for a sec.','The world has gone to shit, I tell you! The only thing that can help me is  *'.. potions[66].name ..'*. Pretty please?','Great! Wonderful! Stupenderous!','I\'m reporting this to the Better Business Bureau.'),
c.new(25,'Angelina',97,1,16,g.newImage('assets/c.png'),'Look at you, hard at work. It warms my cold heart.','Please for the love of God I hope you have  *'.. potions[97].name ..'*. I think that\'s a reasonable request, don\'t you?','Well, I won\'t believe a thing they say anymore, you\'re nice.','Well now I\'m sad.'),
c.new(26,'Nellie',8,6,11,g.newImage('assets/c.png'),'I never expected to find myself here.','Could you possibly spare for not too much money some *'.. potions[8].name ..'*. So? Yes?','OH thank God.','They were right about you.'),
c.new(27,'Mary',2,4,5,g.newImage('assets/c.png'),'Ugh I hope you\'re efficient.','I\'m looking for a substance called *'.. potions[2].name ..'*. Can you help?','Jeez, so expensive! Oh well, I need it.','Fine, I didn\'t want it anyway.'),
c.new(28,'Gertrude',5,20,7,g.newImage('assets/c.png'),'BRO. WHAT UP.','I\'m in serious need of a particular item called  *'.. potions[5].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','Wasn\'t it cheaper last week? Alas.','Darn. See ya.'),
c.new(29,'Marguerite',16,59,13,g.newImage('assets/c.png'),'Hi there, party person!','Do you happen to have any vials in stock of *'.. potions[16].name ..'*. Help yes can you?','Didn\'t the other shop have it for less?','Maybe next time.'),
c.new(30,'Hugh',19,98,5,g.newImage('assets/c.png'),'How\'re you this not-so-fine day?','Help! I need some *'.. potions[19].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','Cannot wait to consume or otherwise use this!','What a jerk. Adios.'),
c.new(31,'Matthew',63,41,6,g.newImage('assets/c.png'),'What\'s shakin\'? Aside from the earth\'s tectonic plates on an alarmingly regular basis, that is.','I wouldn\'t say no right about now to an order of  *'.. potions[63].name ..'*. Is it in stock?','Is it safe to eat? I hope so! I\'m hungry.','WHY NOT :-('),
c.new(32,'Har[er',64,14,13,g.newImage('assets/c.png'),'Good day sir and/or ma\'am!','My pocket full of units would like to say hello to their good friend *'.. potions[64].name ..'*. Gosh is it available?','Golly, what a treat.','Next time I will wear a disguise.'),
c.new(33,'Horace',22,101,9,g.newImage('assets/c.png'),'Hello hello hello hello! That\'s four hellos! All for you!','I AM NOT ROBOT I REQUIRE  *'.. potions[22].name ..'*. What say you?','Thank you so much!','I\'m reporting this to the Better Business Bureau.'),
c.new(34,'Vernon',31,21,10,g.newImage('assets/c.png'),'Oh gosh, I\'m so happy you\'re open. I\'m desperate!','Jiminy Christmas, it sure is raining fire out there! Anyway. Do you have any  *'.. potions[31].name ..'*. Pretty please?','Yay, thanks, see ya later!','Well now I\'m sad.'),
c.new(35,'Lisa',22,35,5,g.newImage('assets/c.png'),'Good insert your time of day here.','You wouldn\'t happen to have some *'.. potions[22].name ..'*. I think that\'s a reasonable request, don\'t you?','Huzzah!','They were right about you.'),
c.new(36,'Ryan',81,66,12,g.newImage('assets/c.png'),'Oh yeeaaahhh, the store is open! Time to party!','I\'d like some of a particular potion called... *'.. potions[81].name ..'*. So? Yes?','You won\'t regret this!','Fine, I didn\'t want it anyway.'),
c.new(37,'Kevin',37,9,23,g.newImage('assets/c.png'),'Please, you have to help me.','The world has gone to shit, I tell you! The only thing that can help me is  *'.. potions[37].name ..'*. Can you help?','Oh, joy.','Darn. See ya.'),
c.new(38,'Jocelyn',100,25,12,g.newImage('assets/c.png'),'Take a break to chat with me for a sec.','Please for the love of God I hope you have  *'.. potions[100].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','You\'re not so bad, are you?','Maybe next time.'),
c.new(39,'Thomas',17,10,6,g.newImage('assets/c.png'),'Look at you, hard at work. It warms my cold heart.','Could you possibly spare for not too much money some *'.. potions[17].name ..'*. Help yes can you?','Owe you one.','What a jerk. Adios.'),
c.new(40,'Ashley',84,65,5,g.newImage('assets/c.png'),'I never expected to find myself here.','I\'m looking for a substance called *'.. potions[84].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','YOU WILL BE SPARED.','WHY NOT :-('),
c.new(41,'Amelia',59,28,20,g.newImage('assets/c.png'),'Ugh I hope you\'re efficient.','I\'m in serious need of a particular item called  *'.. potions[59].name ..'*. Is it in stock?','Great! Wonderful! Stupenderous!','Next time I will wear a disguise.'),
c.new(42,'Florence',103,87,9,g.newImage('assets/c.png'),'BRO. WHAT UP.','Do you happen to have any vials in stock of *'.. potions[103].name ..'*. Gosh is it available?','Well, I won\'t believe a thing they say anymore, you\'re nice.','I\'m reporting this to the Better Business Bureau.'),
c.new(43,'Patricia',10,35,6,g.newImage('assets/c.png'),'Hi there, party person!','Help! I need some *'.. potions[10].name ..'*. What say you?','OH thank God.','Well now I\'m sad.'),
c.new(44,'Santiago',73,32,14,g.newImage('assets/c.png'),'How\'re you this not-so-fine day?','I wouldn\'t say no right about now to an order of  *'.. potions[73].name ..'*. Pretty please?','Jeez, so expensive! Oh well, I need it.','They were right about you.'),
c.new(45,'Harriet',25,46,19,g.newImage('assets/c.png'),'What\'s shakin\'? Aside from the earth\'s tectonic plates on an alarmingly regular basis, that is.','My pocket full of units would like to say hello to their good friend *'.. potions[25].name ..'*. I think that\'s a reasonable request, don\'t you?','Wasn\'t it cheaper last week? Alas.','Fine, I didn\'t want it anyway.'),
c.new(46,'Chloe',86,24,18,g.newImage('assets/c.png'),'Good day sir and/or ma\'am!','I AM NOT ROBOT I REQUIRE  *'.. potions[86].name ..'*. So? Yes?','Didn\'t the other shop have it for less?','Darn. See ya.'),
c.new(47,'Alex',53,23,22,g.newImage('assets/c.png'),'Hello hello hello hello! That\'s four hellos! All for you!','Jiminy Christmas, it sure is raining fire out there! Anyway. Do you have any  *'.. potions[53].name ..'*. Can you help?','Cannot wait to consume or otherwise use this!','Maybe next time.'),
c.new(48,'Savannah',68,89,16,g.newImage('assets/c.png'),'Oh gosh, I\'m so happy you\'re open. I\'m desperate!','You wouldn\'t happen to have some *'.. potions[68].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','Is it safe to eat? I hope so! I\'m hungry.','What a jerk. Adios.'),
c.new(49,'Dorothy',12,34,15,g.newImage('assets/c.png'),'Good insert your time of day here.','I\'d like some of a particular potion called... *'.. potions[12].name ..'*. Help yes can you?','Golly, what a treat.','WHY NOT :-('),
c.new(50,'Raymond',9,90,15,g.newImage('assets/c.png'),'Oh yeeaaahhh, the store is open! Time to party!','The world has gone to shit, I tell you! The only thing that can help me is  *'.. potions[9].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','Thank you so much!','Next time I will wear a disguise.'),
c.new(51,'Clara',105,2,3,g.newImage('assets/c.png'),'Please, you have to help me.','Please for the love of God I hope you have  *'.. potions[105].name ..'*. Is it in stock?','Yay, thanks, see ya later!','I\'m reporting this to the Better Business Bureau.'),
c.new(52,'Lydia',17,19,14,g.newImage('assets/c.png'),'Take a break to chat with me for a sec.','Could you possibly spare for not too much money some *'.. potions[17].name ..'*. Gosh is it available?','Huzzah!','Well now I\'m sad.'),
c.new(53,'Scott',39,94,22,g.newImage('assets/c.png'),'Look at you, hard at work. It warms my cold heart.','I\'m looking for a substance called *'.. potions[39].name ..'*. What say you?','You won\'t regret this!','They were right about you.'),
c.new(54,'Chloe',62,104,21,g.newImage('assets/c.png'),'I never expected to find myself here.','I\'m in serious need of a particular item called  *'.. potions[62].name ..'*. Pretty please?','Oh, joy.','Fine, I didn\'t want it anyway.'),
c.new(55,'Emil',29,27,23,g.newImage('assets/c.png'),'Ugh I hope you\'re efficient.','Do you happen to have any vials in stock of *'.. potions[29].name ..'*. I think that\'s a reasonable request, don\'t you?','You\'re not so bad, are you?','Darn. See ya.'),
c.new(56,'George',15,49,3,g.newImage('assets/c.png'),'BRO. WHAT UP.','Help! I need some *'.. potions[15].name ..'*. So? Yes?','Owe you one.','Maybe next time.'),
c.new(57,'Susan',24,58,14,g.newImage('assets/c.png'),'Hi there, party person!','I wouldn\'t say no right about now to an order of  *'.. potions[24].name ..'*. Can you help?','YOU WILL BE SPARED.','What a jerk. Adios.'),
c.new(58,'Ava',51,1,24,g.newImage('assets/c.png'),'How\'re you this not-so-fine day?','My pocket full of units would like to say hello to their good friend *'.. potions[51].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','Great! Wonderful! Stupenderous!','WHY NOT :-('),
c.new(59,'Michelle',30,36,18,g.newImage('assets/c.png'),'What\'s shakin\'? Aside from the earth\'s tectonic plates on an alarmingly regular basis, that is.','I AM NOT ROBOT I REQUIRE  *'.. potions[30].name ..'*. Help yes can you?','Well, I won\'t believe a thing they say anymore, you\'re nice.','Next time I will wear a disguise.'),
c.new(60,'James',3,9,21,g.newImage('assets/c.png'),'Good day sir and/or ma\'am!','Jiminy Christmas, it sure is raining fire out there! Anyway. Do you have any  *'.. potions[3].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','OH thank God.','I\'m reporting this to the Better Business Bureau.'),
c.new(61,'Lillian',106,57,8,g.newImage('assets/c.png'),'Hello hello hello hello! That\'s four hellos! All for you!','You wouldn\'t happen to have some *'.. potions[106].name ..'*. Is it in stock?','Jeez, so expensive! Oh well, I need it.','Well now I\'m sad.'),
c.new(62,'Genevieve',35,62,21,g.newImage('assets/c.png'),'Oh gosh, I\'m so happy you\'re open. I\'m desperate!','I\'d like some of a particular potion called... *'.. potions[35].name ..'*. Gosh is it available?','Wasn\'t it cheaper last week? Alas.','They were right about you.'),
c.new(63,'Ethel',104,76,3,g.newImage('assets/c.png'),'Good insert your time of day here.','The world has gone to shit, I tell you! The only thing that can help me is  *'.. potions[104].name ..'*. What say you?','Didn\'t the other shop have it for less?','Fine, I didn\'t want it anyway.'),
c.new(64,'Clarence',1,69,18,g.newImage('assets/c.png'),'Oh yeeaaahhh, the store is open! Time to party!','Please for the love of God I hope you have  *'.. potions[1].name ..'*. Pretty please?','Cannot wait to consume or otherwise use this!','Darn. See ya.'),
c.new(65,'Robert',1,32,23,g.newImage('assets/c.png'),'Please, you have to help me.','Could you possibly spare for not too much money some *'.. potions[1].name ..'*. I think that\'s a reasonable request, don\'t you?','Is it safe to eat? I hope so! I\'m hungry.','Maybe next time.'),
c.new(66,'Deborah',34,17,3,g.newImage('assets/c.png'),'Take a break to chat with me for a sec.','I\'m looking for a substance called *'.. potions[34].name ..'*. So? Yes?','Golly, what a treat.','What a jerk. Adios.'),
c.new(67,'Victor',23,95,16,g.newImage('assets/c.png'),'Look at you, hard at work. It warms my cold heart.','I\'m in serious need of a particular item called  *'.. potions[23].name ..'*. Can you help?','Thank you so much!','WHY NOT :-('),
c.new(68,'Brian',41,22,8,g.newImage('assets/c.png'),'I never expected to find myself here.','Do you happen to have any vials in stock of *'.. potions[41].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','Yay, thanks, see ya later!','Next time I will wear a disguise.'),
c.new(69,'Evelyn',60,39,18,g.newImage('assets/c.png'),'Ugh I hope you\'re efficient.','Help! I need some *'.. potions[60].name ..'*. Help yes can you?','Huzzah!','I\'m reporting this to the Better Business Bureau.'),
c.new(70,'Violet',69,29,4,g.newImage('assets/c.png'),'BRO. WHAT UP.','I wouldn\'t say no right about now to an order of  *'.. potions[69].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','You won\'t regret this!','Well now I\'m sad.'),
c.new(71,'Olga',36,20,11,g.newImage('assets/c.png'),'Hi there, party person!','My pocket full of units would like to say hello to their good friend *'.. potions[36].name ..'*. Is it in stock?','Oh, joy.','They were right about you.'),
c.new(72,'Richard',9,30,16,g.newImage('assets/c.png'),'How\'re you this not-so-fine day?','I AM NOT ROBOT I REQUIRE  *'.. potions[9].name ..'*. Gosh is it available?','You\'re not so bad, are you?','Fine, I didn\'t want it anyway.'),
c.new(73,'Emma',44,45,13,g.newImage('assets/c.png'),'What\'s shakin\'? Aside from the earth\'s tectonic plates on an alarmingly regular basis, that is.','Jiminy Christmas, it sure is raining fire out there! Anyway. Do you have any  *'.. potions[44].name ..'*. What say you?','Owe you one.','Darn. See ya.'),
c.new(74,'Nancy',18,52,4,g.newImage('assets/c.png'),'Good day sir and/or ma\'am!','You wouldn\'t happen to have some *'.. potions[18].name ..'*. Pretty please?','YOU WILL BE SPARED.','Maybe next time.'),
c.new(75,'Mark',27,38,4,g.newImage('assets/c.png'),'Hello hello hello hello! That\'s four hellos! All for you!','I\'d like some of a particular potion called... *'.. potions[27].name ..'*. I think that\'s a reasonable request, don\'t you?','Great! Wonderful! Stupenderous!','What a jerk. Adios.'),
c.new(76,'Ethan',78,100,9,g.newImage('assets/c.png'),'Oh gosh, I\'m so happy you\'re open. I\'m desperate!','The world has gone to shit, I tell you! The only thing that can help me is  *'.. potions[78].name ..'*. So? Yes?','Well, I won\'t believe a thing they say anymore, you\'re nice.','WHY NOT :-('),
c.new(77,'Madison',56,67,22,g.newImage('assets/c.png'),'Good insert your time of day here.','Please for the love of God I hope you have  *'.. potions[56].name ..'*. Can you help?','OH thank God.','Next time I will wear a disguise.'),
c.new(78,'Mason',50,21,23,g.newImage('assets/c.png'),'Oh yeeaaahhh, the store is open! Time to party!','Could you possibly spare for not too much money some *'.. potions[50].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','Jeez, so expensive! Oh well, I need it.','I\'m reporting this to the Better Business Bureau.'),
c.new(79,'Jordan',70,106,6,g.newImage('assets/c.png'),'Please, you have to help me.','I\'m looking for a substance called *'.. potions[70].name ..'*. Help yes can you?','Wasn\'t it cheaper last week? Alas.','Well now I\'m sad.'),
c.new(80,'Kimberly',26,71,20,g.newImage('assets/c.png'),'Take a break to chat with me for a sec.','I\'m in serious need of a particular item called  *'.. potions[26].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','Didn\'t the other shop have it for less?','They were right about you.'),
c.new(81,'Xavier',71,7,7,g.newImage('assets/c.png'),'Look at you, hard at work. It warms my cold heart.','Do you happen to have any vials in stock of *'.. potions[71].name ..'*. Is it in stock?','Cannot wait to consume or otherwise use this!','Fine, I didn\'t want it anyway.'),
c.new(82,'Benjamin',57,11,8,g.newImage('assets/c.png'),'I never expected to find myself here.','Help! I need some *'.. potions[57].name ..'*. Gosh is it available?','Is it safe to eat? I hope so! I\'m hungry.','Darn. See ya.'),
c.new(83,'Linda',28,53,23,g.newImage('assets/c.png'),'Ugh I hope you\'re efficient.','I wouldn\'t say no right about now to an order of  *'.. potions[28].name ..'*. What say you?','Golly, what a treat.','Maybe next time.'),
c.new(84,'Joan',14,40,3,g.newImage('assets/c.png'),'BRO. WHAT UP.','My pocket full of units would like to say hello to their good friend *'.. potions[14].name ..'*. Pretty please?','Thank you so much!','What a jerk. Adios.'),
c.new(85,'Charles',11,6,7,g.newImage('assets/c.png'),'Hi there, party person!','I AM NOT ROBOT I REQUIRE  *'.. potions[11].name ..'*. I think that\'s a reasonable request, don\'t you?','Yay, thanks, see ya later!','WHY NOT :-('),
c.new(86,'Liam',45,16,24,g.newImage('assets/c.png'),'How\'re you this not-so-fine day?','Jiminy Christmas, it sure is raining fire out there! Anyway. Do you have any  *'.. potions[45].name ..'*. So? Yes?','Huzzah!','Next time I will wear a disguise.'),
c.new(87,'Jasmine',88,8,3,g.newImage('assets/c.png'),'What\'s shakin\'? Aside from the earth\'s tectonic plates on an alarmingly regular basis, that is.','You wouldn\'t happen to have some *'.. potions[88].name ..'*. Can you help?','You won\'t regret this!','I\'m reporting this to the Better Business Bureau.'),
c.new(88,'Percy',28,85,13,g.newImage('assets/c.png'),'Good day sir and/or ma\'am!','I\'d like some of a particular potion called... *'.. potions[28].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','Oh, joy.','Well now I\'m sad.'),
c.new(89,'Edna',107,92,8,g.newImage('assets/c.png'),'Hello hello hello hello! That\'s four hellos! All for you!','The world has gone to shit, I tell you! The only thing that can help me is  *'.. potions[107].name ..'*. Help yes can you?','You\'re not so bad, are you?','They were right about you.'),
c.new(90,'Daisy',77,99,13,g.newImage('assets/c.png'),'Oh gosh, I\'m so happy you\'re open. I\'m desperate!','Please for the love of God I hope you have  *'.. potions[77].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','Owe you one.','Fine, I didn\'t want it anyway.'),
c.new(91,'Jason',96,80,10,g.newImage('assets/c.png'),'Good insert your time of day here.','Could you possibly spare for not too much money some *'.. potions[96].name ..'*. Is it in stock?','YOU WILL BE SPARED.','Darn. See ya.'),
c.new(92,'Zach',87,23,12,g.newImage('assets/c.png'),'Oh yeeaaahhh, the store is open! Time to party!','I\'m looking for a substance called *'.. potions[87].name ..'*. Gosh is it available?','Great! Wonderful! Stupenderous!','Maybe next time.'),
c.new(93,'Isaac',94,25,15,g.newImage('assets/c.png'),'Please, you have to help me.','I\'m in serious need of a particular item called  *'.. potions[94].name ..'*. What say you?','Well, I won\'t believe a thing they say anymore, you\'re nice.','What a jerk. Adios.'),
c.new(94,'Caleb',91,55,20,g.newImage('assets/c.png'),'Take a break to chat with me for a sec.','Do you happen to have any vials in stock of *'.. potions[91].name ..'*. Pretty please?','OH thank God.','WHY NOT :-('),
c.new(95,'Lucille',24,12,7,g.newImage('assets/c.png'),'Look at you, hard at work. It warms my cold heart.','Help! I need some *'.. potions[24].name ..'*. I think that\'s a reasonable request, don\'t you?','Jeez, so expensive! Oh well, I need it.','Next time I will wear a disguise.'),
c.new(96,'Morgan',90,78,5,g.newImage('assets/c.png'),'I never expected to find myself here.','I wouldn\'t say no right about now to an order of  *'.. potions[90].name ..'*. So? Yes?','Wasn\'t it cheaper last week? Alas.','I\'m reporting this to the Better Business Bureau.'),
c.new(97,'Steven',32,5,6,g.newImage('assets/c.png'),'Ugh I hope you\'re efficient.','My pocket full of units would like to say hello to their good friend *'.. potions[32].name ..'*. Can you help?','Didn\'t the other shop have it for less?','Well now I\'m sad.'),
c.new(98,'Wyatt',99,47,7,g.newImage('assets/c.png'),'BRO. WHAT UP.','I AM NOT ROBOT I REQUIRE  *'.. potions[99].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','Cannot wait to consume or otherwise use this!','They were right about you.'),
c.new(99,'Miguel',76,88,14,g.newImage('assets/c.png'),'Hi there, party person!','Jiminy Christmas, it sure is raining fire out there! Anyway. Do you have any  *'.. potions[76].name ..'*. Help yes can you?','Is it safe to eat? I hope so! I\'m hungry.','Fine, I didn\'t want it anyway.'),
c.new(100,'Nicholas',80,73,12,g.newImage('assets/c.png'),'How\'re you this not-so-fine day?','You wouldn\'t happen to have some *'.. potions[80].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','Golly, what a treat.','Darn. See ya.'),
c.new(101,'Autumn',101,29,17,g.newImage('assets/c.png'),'What\'s shakin\'? Aside from the earth\'s tectonic plates on an alarmingly regular basis, that is.','I\'d like some of a particular potion called... *'.. potions[101].name ..'*. Is it in stock?','Thank you so much!','Maybe next time.'),
c.new(102,'Jacob',47,105,19,g.newImage('assets/c.png'),'Good day sir and/or ma\'am!','The world has gone to shit, I tell you! The only thing that can help me is  *'.. potions[47].name ..'*. Gosh is it available?','Yay, thanks, see ya later!','What a jerk. Adios.'),
c.new(103,'Olivia',46,91,16,g.newImage('assets/c.png'),'Hello hello hello hello! That\'s four hellos! All for you!','Please for the love of God I hope you have  *'.. potions[46].name ..'*. What say you?','Huzzah!','WHY NOT :-('),
c.new(104,'Aubrey',65,42,19,g.newImage('assets/c.png'),'Oh gosh, I\'m so happy you\'re open. I\'m desperate!','Could you possibly spare for not too much money some *'.. potions[65].name ..'*. Pretty please?','You won\'t regret this!','Next time I will wear a disguise.'),
c.new(105,'Margaret',16,70,15,g.newImage('assets/c.png'),'Good insert your time of day here.','I\'m looking for a substance called *'.. potions[16].name ..'*. I think that\'s a reasonable request, don\'t you?','Oh, joy.','I\'m reporting this to the Better Business Bureau.'),
c.new(106,'Jack',93,44,18,g.newImage('assets/c.png'),'Oh yeeaaahhh, the store is open! Time to party!','I\'m in serious need of a particular item called  *'.. potions[93].name ..'*. So? Yes?','You\'re not so bad, are you?','Well now I\'m sad.'),
c.new(107,'Glenn',27,36,6,g.newImage('assets/c.png'),'Please, you have to help me.','Do you happen to have any vials in stock of *'.. potions[27].name ..'*. Can you help?','Owe you one.','They were right about you.'),
c.new(108,'Julia',89,33,6,g.newImage('assets/c.png'),'Take a break to chat with me for a sec.','Help! I need some *'.. potions[89].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','YOU WILL BE SPARED.','Fine, I didn\'t want it anyway.'),
c.new(109,'Hazel',72,43,18,g.newImage('assets/c.png'),'Look at you, hard at work. It warms my cold heart.','I wouldn\'t say no right about now to an order of  *'.. potions[72].name ..'*. Help yes can you?','Great! Wonderful! Stupenderous!','Darn. See ya.'),
c.new(110,'Ruth',102,72,15,g.newImage('assets/c.png'),'I never expected to find myself here.','My pocket full of units would like to say hello to their good friend *'.. potions[102].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','Well, I won\'t believe a thing they say anymore, you\'re nice.','Maybe next time.'),
c.new(111,'Cynthia',31,8,22,g.newImage('assets/c.png'),'Ugh I hope you\'re efficient.','I AM NOT ROBOT I REQUIRE  *'.. potions[31].name ..'*. Is it in stock?','OH thank God.','What a jerk. Adios.'),
c.new(112,'Abigail',52,54,14,g.newImage('assets/c.png'),'BRO. WHAT UP.','Jiminy Christmas, it sure is raining fire out there! Anyway. Do you have any  *'.. potions[52].name ..'*. Gosh is it available?','Jeez, so expensive! Oh well, I need it.','WHY NOT :-('),
c.new(113,'Howard',10,13,10,g.newImage('assets/c.png'),'Hi there, party person!','You wouldn\'t happen to have some *'.. potions[10].name ..'*. What say you?','Wasn\'t it cheaper last week? Alas.','Next time I will wear a disguise.'),
c.new(114,'Edith',7,19,21,g.newImage('assets/c.png'),'How\'re you this not-so-fine day?','I\'d like some of a particular potion called... *'.. potions[7].name ..'*. Pretty please?','Didn\'t the other shop have it for less?','I\'m reporting this to the Better Business Bureau.'),
c.new(115,'Camila',67,26,8,g.newImage('assets/c.png'),'What\'s shakin\'? Aside from the earth\'s tectonic plates on an alarmingly regular basis, that is.','The world has gone to shit, I tell you! The only thing that can help me is  *'.. potions[67].name ..'*. I think that\'s a reasonable request, don\'t you?','Cannot wait to consume or otherwise use this!','Well now I\'m sad.'),
c.new(116,'Michael',21,17,20,g.newImage('assets/c.png'),'Good day sir and/or ma\'am!','Please for the love of God I hope you have  *'.. potions[21].name ..'*. So? Yes?','Is it safe to eat? I hope so! I\'m hungry.','They were right about you.'),
c.new(117,'Sally',20,22,4,g.newImage('assets/c.png'),'Hello hello hello hello! That\'s four hellos! All for you!','Could you possibly spare for not too much money some *'.. potions[20].name ..'*. Can you help?','Golly, what a treat.','Fine, I didn\'t want it anyway.'),
c.new(118,'Archie',21,27,3,g.newImage('assets/c.png'),'Oh gosh, I\'m so happy you\'re open. I\'m desperate!','I\'m looking for a substance called *'.. potions[21].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','Thank you so much!','Darn. See ya.'),
c.new(119,'Walter',2,10,22,g.newImage('assets/c.png'),'Good insert your time of day here.','I\'m in serious need of a particular item called  *'.. potions[2].name ..'*. Help yes can you?','Yay, thanks, see ya later!','Maybe next time.'),
c.new(120,'Tammy',36,96,17,g.newImage('assets/c.png'),'Oh yeeaaahhh, the store is open! Time to party!','Do you happen to have any vials in stock of *'.. potions[36].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','Huzzah!','What a jerk. Adios.'),
c.new(121,'Donna',29,2,15,g.newImage('assets/c.png'),'Please, you have to help me.','Help! I need some *'.. potions[29].name ..'*. Is it in stock?','You won\'t regret this!','WHY NOT :-('),
c.new(122,'Diego',98,12,4,g.newImage('assets/c.png'),'Take a break to chat with me for a sec.','I wouldn\'t say no right about now to an order of  *'.. potions[98].name ..'*. Gosh is it available?','Oh, joy.','Next time I will wear a disguise.'),
c.new(123,'Christopher',79,18,9,g.newImage('assets/c.png'),'Look at you, hard at work. It warms my cold heart.','My pocket full of units would like to say hello to their good friend *'.. potions[79].name ..'*. What say you?','You\'re not so bad, are you?','I\'m reporting this to the Better Business Bureau.'),
c.new(124,'Pearl',6,16,3,g.newImage('assets/c.png'),'I never expected to find myself here.','I AM NOT ROBOT I REQUIRE  *'.. potions[6].name ..'*. Pretty please?','Owe you one.','Well now I\'m sad.'),
c.new(125,'Noah',43,37,12,g.newImage('assets/c.png'),'Ugh I hope you\'re efficient.','Jiminy Christmas, it sure is raining fire out there! Anyway. Do you have any  *'.. potions[43].name ..'*. I think that\'s a reasonable request, don\'t you?','YOU WILL BE SPARED.','They were right about you.'),
c.new(126,'Shirley',8,107,4,g.newImage('assets/c.png'),'BRO. WHAT UP.','You wouldn\'t happen to have some *'.. potions[8].name ..'*. So? Yes?','Great! Wonderful! Stupenderous!','Fine, I didn\'t want it anyway.'),
c.new(127,'Pauline',15,30,12,g.newImage('assets/c.png'),'Hi there, party person!','I\'d like some of a particular potion called... *'.. potions[15].name ..'*. Can you help?','Well, I won\'t believe a thing they say anymore, you\'re nice.','Darn. See ya.'),
c.new(128,'Bernice',26,97,20,g.newImage('assets/c.png'),'How\'re you this not-so-fine day?','The world has gone to shit, I tell you! The only thing that can help me is  *'.. potions[26].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','OH thank God.','Maybe next time.'),
c.new(129,'Rose',4,15,5,g.newImage('assets/c.png'),'What\'s shakin\'? Aside from the earth\'s tectonic plates on an alarmingly regular basis, that is.','Please for the love of God I hope you have  *'.. potions[4].name ..'*. Help yes can you?','Jeez, so expensive! Oh well, I need it.','What a jerk. Adios.'),
c.new(130,'Emily',54,63,21,g.newImage('assets/c.png'),'Good day sir and/or ma\'am!','Could you possibly spare for not too much money some *'.. potions[54].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','Wasn\'t it cheaper last week? Alas.','WHY NOT :-('),
c.new(131,'Donald',13,31,12,g.newImage('assets/c.png'),'Hello hello hello hello! That\'s four hellos! All for you!','I\'m looking for a substance called *'.. potions[13].name ..'*. Is it in stock?','Didn\'t the other shop have it for less?','Next time I will wear a disguise.'),
c.new(132,'Timothy',35,3,24,g.newImage('assets/c.png'),'Oh gosh, I\'m so happy you\'re open. I\'m desperate!','I\'m in serious need of a particular item called  *'.. potions[35].name ..'*. Gosh is it available?','Cannot wait to consume or otherwise use this!','I\'m reporting this to the Better Business Bureau.'),
c.new(133,'Carl',11,31,20,g.newImage('assets/c.png'),'Good insert your time of day here.','Do you happen to have any vials in stock of *'.. potions[11].name ..'*. What say you?','Is it safe to eat? I hope so! I\'m hungry.','Well now I\'m sad.'),
c.new(134,'Ella',61,68,22,g.newImage('assets/c.png'),'Oh yeeaaahhh, the store is open! Time to party!','Help! I need some *'.. potions[61].name ..'*. Pretty please?','Golly, what a treat.','They were right about you.'),
c.new(135,'Lori',40,56,11,g.newImage('assets/c.png'),'Please, you have to help me.','I wouldn\'t say no right about now to an order of  *'.. potions[40].name ..'*. I think that\'s a reasonable request, don\'t you?','Thank you so much!','Fine, I didn\'t want it anyway.'),
c.new(136,'Barbara',6,51,9,g.newImage('assets/c.png'),'Take a break to chat with me for a sec.','My pocket full of units would like to say hello to their good friend *'.. potions[6].name ..'*. So? Yes?','Yay, thanks, see ya later!','Darn. See ya.'),
c.new(137,'Betty',4,61,5,g.newImage('assets/c.png'),'Look at you, hard at work. It warms my cold heart.','I AM NOT ROBOT I REQUIRE  *'.. potions[4].name ..'*. Can you help?','Huzzah!','Maybe next time.'),
c.new(138,'Ora',30,28,17,g.newImage('assets/c.png'),'I never expected to find myself here.','Jiminy Christmas, it sure is raining fire out there! Anyway. Do you have any  *'.. potions[30].name ..'*. HELP PLEASE HUMAN OF INDETERMINATE GENDER.','You won\'t regret this!','What a jerk. Adios.'),
c.new(139,'Karen',25,83,11,g.newImage('assets/c.png'),'Ugh I hope you\'re efficient.','You wouldn\'t happen to have some *'.. potions[25].name ..'*. Help yes can you?','Oh, joy.','WHY NOT :-('),
c.new(140,'David',23,15,8,g.newImage('assets/c.png'),'BRO. WHAT UP.','I\'d like some of a particular potion called... *'.. potions[23].name ..'*. It\'s such a ...day outside. Great opportunity to say yes?','You\'re not so bad, are you?','Next time I will wear a disguise.'),
c.new(141,'Leon',18,5,15,g.newImage('assets/c.png'),'Hi there, party person!','The world has gone to shit, I tell you! The only thing that can help me is  *'.. potions[18].name ..'*. Is it in stock?','Owe you one.','I\'m reporting this to the Better Business Bureau.'),
c.new(142,'Grace',82,60,13,g.newImage('assets/c.png'),'How\'re you this not-so-fine day?','Please for the love of God I hope you have  *'.. potions[82].name ..'*. Gosh is it available?','YOU WILL BE SPARED.','Well now I\'m sad.'),
c.new(143,'Gilbert',32,14,10,g.newImage('assets/c.png'),'What\'s shakin\'? Aside from the earth\'s tectonic plates on an alarmingly regular basis, that is.','Could you possibly spare for not too much money some *'.. potions[32].name ..'*. What say you?','Great! Wonderful! Stupenderous!','They were right about you.'),
  
  }

  
  hints = {
    
    'test hint',
    
    ''
    
  }
  
  
  introPage2 = "Welcome to Gonzo Alchemy! A game in which you use strange objects in your post-apocalyptic world to create even stranger potions, which you can then sell to the strangest of customers."
  
  introPage3 = "BUT!!!!!!! Beware. If you mix a potion improperly, you'll need to add it to the Unstable Mixture barrel (where else would you put it? you're not a litterer, and garbage collection was suspended in the apocalypse). If you fill the barrel up, it's game over!"
  
  introPage4 = "You might want to get a pen and paper handy to write down clues that customers give you (they're usually standing there but they're not in a rush, so take your time). As you meet more and more people, you'll get more ingredients and be able to sell more potions. Thank you for giving this game a try!"
  
  gameOverText = "Welp, you filled up your barrel. Your SHOP HAS EXPLODED!!!!! OH NO ..... !!!! If you want to try again, go ahead and restart the game (this will un-explode your shop). The potions are the same, so you can use your knowledge to build on your previous run. Don't forget to let me know what you thought! Thanks for playing!!!!"  
  
end

return M