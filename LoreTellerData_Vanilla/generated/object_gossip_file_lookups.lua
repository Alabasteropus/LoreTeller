if not LoreTeller or not LoreTeller.DataModules then return end
LoreTellerData_Vanilla.GossipLookupByObjectID = {
	[6751] = {
		["This plant stands out among the normal flora of Teldrassil, and emits a strange, purplish glow."] = "0f706fc37d41cf3594fe06a341572d78"
	},
	[6752] = {
		["This is an exotic sample of flora, unseen in other parts of Teldrassil."] = "4bad0d72daceaeaabe7296045b09c363"
	},
	[20923] = {
		["This monument is dedicated to all those who have fallen in the protection of Stormwind. Our people have weathered unbelievable hardships to retain their freedoms and to control their own destinies. It is here we remember every sacrifice our citizens have made during the first war that riddled our people."] = "18d65bf52e8854e76efbc0c79572690b"
	},
	[142345] = {
		["Brzzzzt!$B$BWelcome to Matrix Punchograph 3005 stroke A, a security level alpha terminal.$B$BYou must posses a white punch card to access terminal functions.  01000100 01101111 01110111 01101110 00100000 01110111 01101001 01110100 01101000 00100000 01110100 01101000 01100101 00100000 01101000 01101111 01110010 01100100 01100101 00100001"] = "76aaa54e5e30fd41bd34c2fe44645123",
		["Brzzzzt!$B$BWelcome to Matrix Punchograph 3005 stroke A, a security level alpha terminal.$B$BWhite punch card detected.  Access Granted.  01010100 01100101 01101100 01101100 00100000 01111001 01101111 01110101 01110010 00100000 01100110 01110010 01101001 01100101 01101110 01100100 01110011 00100000 01110100 01101111 00100000 01110000 01101100 01100001 01111001 00100000 01010111 01101111 01010111"] = "5899e16466b0cfc8aa73b7cd3df8170b",
		["White security card insertion successful...$B$BDispensing security level beta unit.  01010000 01101100 01100001 01111001 00100000 01110100 01101000 01100101 00100000 01010111 01100001 01110010 01100011 01100001 01110010 01100110 01110100 00100000 01110010 01101111 01101100 01100101 01110000 01101100 01100001 01111001 01101001 01101110 01100111 00100000 01100111 01100001 01101101 01100101"] = "6aeeb85288821aec717d313e06a57c8a"
	},
	[142475] = {
		["Brzzzzt!$B$BWelcome to Matrix Punchograph 3005 stroke B, a security level beta terminal.$B$BYou must posses a yellow punch card to access terminal functions.  01000111 01101110 01101111 01101101 01100101 01110010 01100011 01111001 00100001"] = "f965fd5462e15845678ce52c9a61aa55",
		["Brzzzzt!$B$BWelcome to Matrix Punchograph 3005 stroke B, a security level beta terminal.$B$BYellow punch card detected.  Access Granted.  01001011 01101001 01110011 01110011 00100000 01101101 01100101 00101100 00100000 01001001 00100111 01101101 00100000 01100111 01101110 01101111 01101101 01101001 01110011 01101000 00100001"] = "411534682daaf09511478caf8c28d14f",
		["Yellow security card insertion successful.  Dispensing security level chi unit.  01010100 01101000 01100101 00100000 01001100 01101001 01100011 01101000 00100000 01001011 01101001 01101110 01100111 00100000 01101100 01101001 01110110 01100101 01110011 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001"] = "2aee0781189cd0b6e9f66a34a29aad6b",
		["The Matrix Punchograph Technologic Huerist-o-meter has detected your aptitude in engineering.  You may now choose from the following option(s):  01000111 01101111 00100000 01100111 01101111 00100000 01100111 01101111 00100001 00100001"] = "2b848ce2c7406be289254849c2fcae75",
		["Accessing...  Void -- engineer <#skill_level == n3wb>   01000111 01100001 01101101 01100101 00100000 01001111 01110110 01100101 01110010  ACCESS DENIED!"] = "c0b813d22da57212ba256d026ec015ec",
		["Data access granted.  Have a nice day!  01001110 01100001 01110100 01100001 01101100 01101001 01100101 00100000 01010000 01101111 01110010 01110100 01101101 01100001 01101110 00100000 01010010 01101111 01100011 01101011 01110011"] = "fc3083d846e2925d50011736f2c91202"
	},
	[142476] = {
		["Brzzzzt!$B$BWelcome to Matrix Punchograph 3005 stroke C, a security level chi terminal.$B$BYou must posses a blue punch card to access terminal functions.  01010010 01100101 01100011 01101001 01110000 01100101 00111010 00100000 01001101 01100101 01100011 01101000 01100001 01101110 01101001 01100011 01100001 01101100 00100000 01000011 01101000 01101001 01100011 01101011 01100101 01101110 00100000 01010011 01101111 01110101 01110000"] = "f9dff1eba81b73fd231bd745abd765c7",
		["Brzzzzt!$B$BWelcome to Matrix Punchograph 3005 stroke C, a security level chi terminal.$B$BBlue punch card detected.  Access Granted.  01000111 01101110 01101111 01101101 01100101 01110010 01100101 01100111 01100001 01101110 00100000 01100110 01101111 01110010 01100101 01110110 01100101 01110010 00100001"] = "69ec3f694a4c97690ecb6baed8808681",
		["Blue security card insertion successful.  Dispensing security level delta unit.  01010000 01101100 01100001 01111001 00100000 01001101 01101111 01110010 01100101 00100000 01010111 01101111 01010111"] = "beeebc97327918e5cefc7e3a0d2dd137"
	},
	[142696] = {
		["Brzzzzt!$B$BWelcome to Matrix Punchograph 3005 stroke D, a security level delta terminal.$B$BYou must posses a red punch card to access terminal functions.  01010011 01101000 01101111 01110010 01110100 00100000 01100001 01101110 01100100 00100000 01110011 01110111 01100101 01100101 01110100"] = "b049659712ff4a6dae12ce1519d7470a",
		["Brzzzzt!$B$BWelcome to Matrix Punchograph 3005 stroke D, a security level delta terminal.$B$BRed punch card detected.  Access Granted.  01001000 01101111 01110111 00100000 01100001 01101101 00100000 01001001 00100000 01100100 01110010 01101001 01110110 01101001 01101110 01100111 00111111"] = "a12254ed4eafe35d7fbe02ee0a46d1b5",
		["Red security card insertion successful.  Dispensing security level delta data card.  00111100 01101001 01101110 01110011 01100101 01110010 01110100 00100000 01100110 01110101 01101110 01101110 01111001 00100000 01101101 01100101 01110011 01110011 01100001 01100111 01100101 00100000 01101000 01100101 01110010 01100101 00111110"] = "429864f19e4aae8eeb214e94d86bc2a8",
		["The Matrix Punchograph Technologic Huerist-o-meter has detected your aptitude in engineering.  You may now choose from the following option(s):  01000111 01101111 00100000 01100111 01101111 00100000 01100111 01101111 00100001 00100001"] = "2b848ce2c7406be289254849c2fcae75",
		["Accessing...  Void -- engineer <#skill_level == n3wb>   01000111 01100001 01101101 01100101 00100000 01001111 01110110 01100101 01110010  ACCESS DENIED!"] = "c0b813d22da57212ba256d026ec015ec",
		["Data access granted.  Have a nice day!  01001110 01100001 01110100 01100001 01101100 01101001 01100101 00100000 01010000 01101111 01110010 01110100 01101101 01100001 01101110 00100000 01010010 01101111 01100011 01101011 01110011"] = "fc3083d846e2925d50011736f2c91202"
	},
	[142715] = {
		["Eraka no Kimbul$BGod of Tigers, Lord of Beasts, King of Cats, the Prey's Doom$B$BUeetay no Mueh'zala$BGod of Death, Father of Sleep, Son of Time, the Night's Friend."] = "23565b681fd0e1e4b4d5ee631293f067"
	},
	[144063] = {
		["The large shrine was built many years ago by the night elves that once inhabited this land.$B$BWhat secrets could it hold?"] = "bdffb7bd4c1a549ca21fce4994c04b2e"
	},
	[148498] = {
		["The altar seems to beckon to you as if it were alive."] = "547f7a85e9b61fb09fdce63531b6446c"
	},
	[148836] = {
		["The ancient Altar of Hakkar stands silently near the entrance to the room.$B$BLooking to the balconies above it, you notice a large serpent-like statue rests on each. The statues look very much like the ones on the altar before you. They must be related in some way..."] = "91b59c0582fdc11756948115c740b617"
	},
	[160445] = {
		["The remains are covered in flies and maggots."] = "2f784284d20f290e01140cc7e43f3bbc"
	},
	[164955] = {
		["The Crystal Pylons of Un'Goro are a mystery to all. To the few inhabitants here, they are a source of legend, with much speculation as to their purpose."] = "9658dbe477ee985df565821f1fefa775",
		["The secrets hidden within the Pylons of Un'Goro Crater are now yours. Visit the Pylons at any time to access their power and gain useful resources."] = "d639df313298d68d7a237f950f24a630",
		["A closer inspection of the pylon leads you to find a small table containing yellow, red, and green crystals arranged in what seems like a specific formation.$B$BA large yellow circle of crystals is flanked on either side by a smaller circle of red crystals and another of green crystals.$B$BYou carefully take note of the colors of the crystals, knowing that J.D. would be very interested in hearing about what you have found."] = "a9edab8eb63991a1d8f002b277b1332a"
	},
	[164956] = {
		["The Crystal Pylons of Un'Goro are a mystery to all. To the few inhabitants here, they are a source of legend, with much speculation as to their purpose."] = "9658dbe477ee985df565821f1fefa775",
		["The secrets hidden within the Pylons of Un'Goro Crater are now yours. Visit the Pylons at any time to access their power and gain useful resources."] = "d639df313298d68d7a237f950f24a630",
		["A closer inspection of the pylon leads you to find a small table containing red, blue, and green crystals arranged in what seems like a specific formation.$B$BA large red circle of crystals is flanked on either side by a smaller circle of blue crystals and another of green crystals.$B$BYou carefully take note of the colors of the crystals, knowing that J.D. would be very interested in hearing about what you have found."] = "5c6602e9f23f886ebab0f831c71cbfba"
	},
	[164957] = {
		["The Crystal Pylons of Un'Goro are a mystery to all. To the few inhabitants here, they are a source of legend, with much speculation as to their purpose."] = "9658dbe477ee985df565821f1fefa775",
		["The secrets hidden within the Pylons of Un'Goro Crater are now yours. Visit the Pylons at any time to access their power and gain useful resources."] = "d639df313298d68d7a237f950f24a630",
		["A closer inspection of the pylon leads you to find a small table containing blue, yellow, and green crystals arranged in what seems like a specific formation.$B$BA large blue circle of crystals is flanked on either side by a smaller circle of yellow crystals and another of green crystals.$B$BYou carefully take note of the colors of the crystals, knowing that J.D. would be very interested in hearing about what you have found."] = "5c358003a14e69ee6ddd9c6f08651f68"
	},
	[169294] = {
		["Burning Steppes - Tablet of the Seven"] = "d53d78383a00e34fee253b35f4822f53",
		["The symbols on the tablet are carefully transcribed..."] = "1441f593f536c438e86c832a3994399f"
	},
	[173265] = {
		["Hello? "] = "f1066af8c8e6467a6ae99ec3559a06c9",
		["Yeah, no problem, $n! Sorry... thought you were done with it already."] = "927e8ff519d8ba1f7268782502991891"
	},
	[174848] = {
		["The liquids and mixtures all bubble and spasm as you approach. Next to the equipment lies a large pair of tongs that look as though they would be adequate for dropping in samples of ooze.$B$BThere is safety gear present, but it appears to be dusty and well-ignored.$B$BYou don't think touching anything would be wise."] = "4443edbe9f8e5b3bb25037cef6a76549"
	},
	[175265] = {
		["The liquids and mixtures all bubble and spasm as you approach. Next to the equipment lies a large pair of tongs that look as though they would be adequate for dropping in samples of ooze.$B$BThere is safety gear present, but it appears to be dusty and well-ignored.$B$BYou don't think touching anything would be wise."] = "4443edbe9f8e5b3bb25037cef6a76549"
	},
	[175926] = {
		["The title of this book reads with a handwritten flourish: Maureen Dalson's Diary."] = "7ee3700cb7019901b220464a5ab94655",
		["A diary with yellowing pages lies open to the last entry:$B$B'I don't know what's going to happen now that Harold's turned.  It took everything out of me to drag him into the only place I could find that'd lock him up tight and hold him.  I hid the key on me, and I pray it works...$B$BI hope I can get out of here, but I need money to do that.  Our stuff's all in the cabinet I think... and now that I think about it, doesn't Harold keep the key on him?$B$BI'll rest on it, I'm dead tired now.'"] = "717e4452946d86f15f58fb9bae10c1b8"
	},
	[175927] = {
		["The Thorium Brotherhood Fall Catalogue:$B$BInside you will find the hottest deals on all of your adventuring needs! We'll even show you where to pick up those difficult to find components and supplies."] = "76853600f17808d27848257e7a687168",
		["If it's frayed abomination stitchings you be wanting, to Stratholme you'll be jaunting.$B$BFormerly the hometown of the Lightbringer hisself, now overrun by the minions of Kel'Thuzad.$B$BBrave the perils of the burning city and strike down the meaty abominations! Take from them your prize: Frayed abomination stitchings!"] = "3f424f4d79a0f2e7f08530b667b2e442",
		["The final sanctum of crazed zealots. 'Tis where they create their scarlet uniforms, magically imbued by the enchanted scarlet thread!$B$BTo Stratholme, adventurer!"] = "a1ab5bb20b1a4b85596ee4b43ec71cb8",
		["The finest preservative of flesh known to man and Scourge alike - Frostwhisper's embalming fluid.  Only one place an adventurer could find this and one would think that the lich the fluid is named after would not take too kindly to anyone going to said place.$B$BBut... if it's the fluid you want, the Scholomance you'll haunt..."] = "bc097c6ccf37ea8c37e08bf804253ff4",
		["A staple of the Thorium Brotherhood.$B$BArcanite crystals are harvested from rich thorium lodes. Through the alchemical prowess of powerful alchemists, arcanite bars are born.$B$BSeek out a miner, if you aren't one... and find a good alchemist! You'll need both."] = "d46d54093f1260912aed6c305f8d3ca6",
		["The ground upon which the Scholomance was built was given to Kel'Thuzad by the Barov family. In exchange for this land - a place where the Cult of the Damned could learn the foul magics of the Scourge - Kel'Thuzad granted the Barov's immortality through undeath.$B$BIt is in Shadow Vault that you will find both the skin of shadow and its owner, Lady Illucia Barov.$B$BA finer mirror for the vain and dead never existed."] = "33f4d18ce0ab409c37b0395f421b1056"
	},
	[176192] = {
		["The book tells of dragons uniting against another, more powerful dragon, named Deathwing. From what you can make out, the chromatic dragonflight had almost been unleashed upon the world. The Aspects were prepared. "] = "a39f45feb88e61fcb589760afd9818ef"
	},
	[177226] = {
		["The content on the pages of this tome appear to be in constant flux. You feel as if your thoughts are being bled from your mind and consumed by the book."] = "91179f4a7cd672e7c6902020e8567c29"
	},
	[177490] = {
		["The sturdy crate sits in the middle of the lumber mill surrounded by debris and very zealous followers of the Scarlet Crusade."] = "c6e0746701f75c4143389544cdc0709b"
	},
	[177787] = {
		["I am Ulysses Rackmore, captain of the Gallant.  And this is the log of the last few days of my doomed ship.$B$BWe were sailing to Feathermoon Stronghold with a shipment of supplies when naga stormed the sides of the Gallant.  We drove them back but we knew they'd return.  Fearing the loss of my most precious belongings, I steered the Gallant to an island off the coast of Desolace, one with old, night elf ruins.  And there I left my treasure chest."] = "c59de48f730da3b5d7c895e1e6639450",
		["My chest is one of ingenious design, and requires two keys to unlock, one gold and one silver.  The first key, the silver key, I gave to my first mate, and I kept the gold.$B$BBut we were doomed to lose them.  My key was lost during the next naga attack, and my first mate's was lost a day later when drysnap makrura assailed us and pulled him into the deep.$B$BI am sure the naga and makrura have the keys.  I am glad the two are enemies and will not share them."] = "4737220be29ed0b0905a27df23942c8f",
		["After the makrura attack, we could see that the Gallant would not survive another.  So I and the few surviving sailors abandoned my ship.$B$BWe are now ashore and will soon strike out for the town of Nijel's Point, but much danger lies between us and sanctuary, and I fear Desolace will consume us.$B$BI write this now in hopes that someone will know our plight, and some day avenge us against the watery fiends who were our ruin."] = "b7584554dd225ef7e529ef1bd508f29b"
	},
	[178526] = {
		["The pages of the journal seem to be filled with information about trades, buyers  and other miscellaneous business related events."] = "b452639355066c08bc2c04d51231d65d"
	},
	[179544] = {
		["A cursory examination of the skeletal remains indicates that the flesh was seared off. Quite a grisly sight."] = "555ade875b44d8dec7f9becc88523688"
	},
	[179552] = {
		["<You cannot comprehend any of the technical mumbo jumbo on this scroll.>"] = "2ed5f0736f5294f29dc1aa5ff45f2e1e",
		["<Drawn out on this parchment is the schematic for a field repair robot.>"] = "b4e9ed9a4e8de9979239fe2638d5d48a",
		["<The complicated schematics are too much for your meager engineering talents to discern.>"] = "b489dbbcf2f13d9af3fc5054c2777e4e",
		["<You are well versed in the creation and function of this robot.>"] = "0b2909b5910f8e6d10745fafc1b09916"
	},
	[179879] = {
		["A large humanoid hand print is embedded on the surface of the orb. Despite what appears to be constant manipulation and handling, the orb remains unmarred."] = "0f22270c02f48a29cf9c86a0b391518f",
		["The orb's markings match the brand on your hand."] = "bac94d7200b614200b87cee2f536db9b"
	},
	[179888] = {
		["These papers are guarded.  Speak with Zamek to create a distraction!"] = "041b549b37d0c103ea25eda0b9a0c1e5"
	},
	[179913] = {
		["Jobs/Lost & Found/Wanted:"] = "324d50e454c68ca640804647cebfd92d"
	},
	[180437] = {
		["The ashes from the burning wickerman radiate magical power."] = "28dd5a31538999b63e73fb2d316c92e0",
		["The ashes from the burning wickerman radiate magical power.  You have already applied the ashes to your face."] = "9fde842505ae51e2e9603bb246e83c36"
	},
	[180529] = {
		["Be gone, infidel!  May the power of the Abyss smite you down!"] = "01594454427de3b4452e20be980b7818",
		["A faint whisper is heard from within the stone...$B$BGreetings, little one.  Do you have news for the Templar?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180534] = {
		["How dare you commune with a Duke of the Council, worm!"] = "d39f90b279f06892c664f53d9d8191a0",
		["A clear voice rises from within the stone...$B$BWhere is your Medallion of Station, little one?  You may not speak with a Duke without proof of title..."] = "ed63d78e311e71ef7884338ead2cb4d4",
		["A clear voice rises from within the stone...$B$BYou come to us with title and so we will listen, but do not try our patience, $c.  The council has no time for idle gossip from one such as you."] = "37d313298adafe97bca139d3d41d6c87"
	},
	[180665] = {
		["Your quest to learn Draconic is futile, mortal. And why would you ever want to learn to speak in the ancient tongue? Baffling really..."] = "26d2095bf010d5921e9b8e83bc514a84"
	},
	[180666] = {
		["Your quest to learn Draconic is futile, mortal. And why would you ever want to learn to speak in the ancient tongue? Baffling really..."] = "26d2095bf010d5921e9b8e83bc514a84"
	},
	[180667] = {
		["Your quest to learn Draconic is futile, mortal. And why would you ever want to learn to speak in the ancient tongue? Baffling really..."] = "26d2095bf010d5921e9b8e83bc514a84"
	},
	[180368] = {
		["The markings of this tablet show ancient diagrams and hold dire words of power, but their meaning is inscrutable to you."] = "0f473871a39a8811c5b5a7214b981765",
		["The markings on this tablet show ancient diagrams and dire words of power, used to create  Gurubashi Mojo Madness..."] = "8fd8195d0c975f6f3c51d73be763553f"
	},
	[180453] = {
		["The crystal is covered in intricate glyphs and runes. You can't make sense of any of it."] = "580ccf1ef42fead3e20032eee01f307c"
	},
	[180454] = {
		["The crystal is covered in intricate glyphs and runes. You can't make sense of any of it."] = "580ccf1ef42fead3e20032eee01f307c"
	},
	[180455] = {
		["The crystal is covered in intricate glyphs and runes. You can't make sense of any of it."] = "580ccf1ef42fead3e20032eee01f307c"
	},
	[180456] = {
		["Be gone, infidel!  May the power of the Abyss smite you down!"] = "01594454427de3b4452e20be980b7818",
		["A faint whisper is heard from within the stone...$B$BGreetings, little one.  Do you have news for the Templar?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180461] = {
		["How dare you commune with a Duke of the Council, worm!"] = "d39f90b279f06892c664f53d9d8191a0",
		["A clear voice rises from within the stone...$B$BWhere is your Medallion of Station, little one?  You may not speak with a Duke without proof of title..."] = "ed63d78e311e71ef7884338ead2cb4d4",
		["A clear voice rises from within the stone...$B$BYou come to us with title and so we will listen, but do not try our patience, $c.  The council has no time for idle gossip from one such as you."] = "37d313298adafe97bca139d3d41d6c87"
	},
	[180466] = {
		["What bug comes before the lords of the Council?  A bug, no doubt, wishing to be squashed!"] = "9f2e8057a4162af2cc00fd83ab0ece74",
		["A thunderous voice bellows from the stone...$B$BGreetings, commander.  What news of Silithus do you bring the Lords of the Council?"] = "9e096eb8c378bcc66b01591b1b44e830",
		["A thunderous voice bellows from the stone...$B$BI sense your Medallion of Station, cultist, but you have no ring of lordship?  Are you truly a commander of the Twilight's Hammer, or do you merely run errands for your betters?"] = "e9af3f58bfcd009f6ff72f930ea3882f",
		["A thunderous voice bellows from the stone...$B$BWhat is this?  I sense a little cultist scurrying about!  Run along, vermin, or face the wrath of the lords of the Council!"] = "5fb610919b3f9ee9e77b9a37bbabaaea"
	},
	[180518] = {
		["Be gone, infidel!  May the power of the Abyss smite you down!"] = "01594454427de3b4452e20be980b7818",
		["A faint whisper is heard from within the stone...$B$BGreetings, little one.  Do you have news for the Templar?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180539] = {
		["What bug comes before the lords of the Council?  A bug, no doubt, wishing to be squashed!"] = "9f2e8057a4162af2cc00fd83ab0ece74",
		["A thunderous voice bellows from the stone...$B$BGreetings, commander.  What news of Silithus do you bring the Lords of the Council?"] = "9e096eb8c378bcc66b01591b1b44e830",
		["A thunderous voice bellows from the stone...$B$BI sense your Medallion of Station, cultist, but you have no ring of lordship?  Are you truly a commander of the Twilight's Hammer, or do you merely run errands for your betters?"] = "e9af3f58bfcd009f6ff72f930ea3882f",
		["A thunderous voice bellows from the stone...$B$BWhat is this?  I sense a little cultist scurrying about!  Run along, vermin, or face the wrath of the lords of the Council!"] = "5fb610919b3f9ee9e77b9a37bbabaaea"
	},
	[180544] = {
		["Be gone, infidel!  May the power of the Abyss smite you down!"] = "01594454427de3b4452e20be980b7818",
		["A faint whisper is heard from within the stone...$B$BGreetings, little one.  Do you have news for the Templar?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180549] = {
		["Be gone, infidel!  May the power of the Abyss smite you down!"] = "01594454427de3b4452e20be980b7818",
		["A faint whisper is heard from within the stone...$B$BGreetings, little one.  Do you have news for the Templar?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180554] = {
		["How dare you commune with a Duke of the Council, worm!"] = "d39f90b279f06892c664f53d9d8191a0",
		["A clear voice rises from within the stone...$B$BWhere is your Medallion of Station, little one?  You may not speak with a Duke without proof of title..."] = "ed63d78e311e71ef7884338ead2cb4d4",
		["A clear voice rises from within the stone...$B$BYou come to us with title and so we will listen, but do not try our patience, $c.  The council has no time for idle gossip from one such as you."] = "37d313298adafe97bca139d3d41d6c87"
	},
	[180559] = {
		["What bug comes before the lords of the Council?  A bug, no doubt, wishing to be squashed!"] = "9f2e8057a4162af2cc00fd83ab0ece74",
		["A thunderous voice bellows from the stone...$B$BGreetings, commander.  What news of Silithus do you bring the Lords of the Council?"] = "9e096eb8c378bcc66b01591b1b44e830",
		["A thunderous voice bellows from the stone...$B$BI sense your Medallion of Station, cultist, but you have no ring of lordship?  Are you truly a commander of the Twilight's Hammer, or do you merely run errands for your betters?"] = "e9af3f58bfcd009f6ff72f930ea3882f",
		["A thunderous voice bellows from the stone...$B$BWhat is this?  I sense a little cultist scurrying about!  Run along, vermin, or face the wrath of the lords of the Council!"] = "5fb610919b3f9ee9e77b9a37bbabaaea"
	},
	[180564] = {
		["Be gone, infidel!  May the power of the Abyss smite you down!"] = "01594454427de3b4452e20be980b7818",
		["A faint whisper is heard from within the stone...$B$BGreetings, little one.  Do you have news for the Templar?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180601] = {
		["You see large cavernous tunnels and corridors reflected inside the crystal. You recognize the area as the Molten Core."] = "fa367d2c3c569877041b7b066d0093b9"
	},
	[180747] = {
		["There is a pile of wrapped gifts here."] = "8ba566373c8454ba2c9076cbe5ab1416"
	},
	[180748] = {
		["There is a pile of wrapped gifts here."] = "8ba566373c8454ba2c9076cbe5ab1416"
	},
	[180793] = {
		["There is a pile of wrapped gifts here."] = "8ba566373c8454ba2c9076cbe5ab1416"
	},
	[180794] = {
		["The journal of Jandice Barov is filled with rantings and ravings about the undead. Towards the end of the book is what appears to be a tailoring pattern for the creation of a bag of some sort. Your understanding of tailoring is insufficient to decipher the pattern."] = "ac3bf49b09e574e839ef683378f6e79d",
		["The journal of Jandice Barov is filled with rantings and ravings about the undead. Towards the end of the book is what appears to be a tailoring pattern for the creation of a felcloth bag. This bag is used by warlocks to store soul shards. Do you wish to copy the pattern into your own journal?"] = "2e4d9884e93c29c98746aa5d29d39c35",
		["The journal of Jandice Barov is filled with rantings and ravings about the undead. Towards the end of the book is what appears to be a tailoring pattern for the creation of a felcloth bag. This bag is used by warlocks to store soul shards. You already know how to create this bag."] = "36abb8fc0a6fcba22ad534dedab0826c"
	},
	[180574] = {
		["The ashes from the burning wickerman radiate magical power."] = "28dd5a31538999b63e73fb2d316c92e0",
		["The ashes from the burning wickerman radiate magical power.  You have already applied the ashes to your face."] = "9fde842505ae51e2e9603bb246e83c36"
	},
	[2076] = {
		["This cauldron churns with thick, green bubbles.  Skulls, bones and organs of unknown creatures swim within its viscous broth...$B$BAnd rising lazily to the surface are the skulls of two, once mighty trolls:$B$BGan'zulah and Nezzliok."] = "e2a6c270301c181b6c1842c0f1642d01"
	},
	[2713] = {
		["This wooden board holds roughly-made wanted posters."] = "579f81628d1a733b0ce65a03da79fa94"
	},
	[1738] = {
		["This collection of scrolls contains various logistic and strategic information, as well as coded correspondences."] = "123d940c52a3286b7fe6e73378e8284c"
	},
	[138492] = {
		["These shards glint with an unnatural sheen.  It is clear that they hide a deep power within."] = "0bb4ea429a6648cd1a3a092485b0d1df"
	},
	[1740] = {
		["This collection of scrolls contains various logistic and strategic information, as well as coded correspondences."] = "123d940c52a3286b7fe6e73378e8284c"
	},
	[142487] = {
		["A wild-looking contraption stands before you with a simple plaque heralding the name of the device: 'The Sparklematic 5200'.  The machine seems to be designed to make items shiny and new again."] = "8030f26db9332fe8f6471b48dd9c8dd0"
	}
}
