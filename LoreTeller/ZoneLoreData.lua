setfenv(1, LoreTeller)

ZoneLoreData = {

    -- ============================================
    -- TIER 1: STARTING ZONES
    -- ============================================
    
    -- Elwynn Forest (Zone ID: 12)
    [12] = {
        {zoneName = "Elwynn Forest", audioFile = "12-zone", radius = 50, faction = "alliance"},
        {subZone = "Northshire Abbey", zoneName = "Elwynn Forest", audioFile = "12-northshire", x = 48.20, y = 42.50, radius = 50, faction = "alliance"},
        {subZone = "Goldshire", zoneName = "Elwynn Forest", audioFile = "12-goldshire", x = 42.10, y = 65.80, radius = 50, faction = "alliance"},
        {subZone = "Lion's Pride Inn", zoneName = "Elwynn Forest", audioFile = "12-lionspride", faction = "alliance"},
        {subZone = "Eastvale Logging Camp", zoneName = "Elwynn Forest", audioFile = "12-eastvale", x = 81.40, y = 66.20, radius = 50, faction = "alliance"},
        {subZone = "Westbrook Garrison", zoneName = "Elwynn Forest", audioFile = "12-westbrook", x = 24.50, y = 74.20, radius = 50, faction = "alliance"},
        {subZone = "Stone Cairn Lake", zoneName = "Elwynn Forest", audioFile = "12-stonecairn", x = 74.00, y = 52.00, radius = 50, faction = "neutral"},
        {subZone = "Crystal Lake", zoneName = "Elwynn Forest", audioFile = "12-crystallake", x = 53.00, y = 66.00, radius = 50, faction = "neutral"},
        {subZone = "Mirror Lake", zoneName = "Elwynn Forest", audioFile = "12-mirrorlake", x = 30.00, y = 63.00, radius = 50, faction = "neutral"},
        {subZone = "Fargodeep Mine", zoneName = "Elwynn Forest", audioFile = "12-fargodeep", x = 39.50, y = 82.00, radius = 50, faction = "neutral"},
        {subZone = "Jasperlode Mine", zoneName = "Elwynn Forest", audioFile = "12-jasperlode", x = 61.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Tower of Azora", zoneName = "Elwynn Forest", audioFile = "12-azora", x = 65.00, y = 69.00, radius = 50, faction = "alliance"},
        {subZone = "Brackwell Pumpkin Patch", zoneName = "Elwynn Forest", audioFile = "12-brackwell", x = 69.00, y = 78.00, radius = 50, faction = "neutral"},
        {subZone = "Maclure Vineyards", zoneName = "Elwynn Forest", audioFile = "12-maclure", x = 43.00, y = 89.00, radius = 50, faction = "alliance"},
        {subZone = "Stonefield Farm", zoneName = "Elwynn Forest", audioFile = "12-stonefield", x = 34.00, y = 84.00, radius = 50, faction = "alliance"},
    },
    
    -- Dun Morogh (Zone ID: 1)
    [1] = {
        {zoneName = "Dun Morogh", audioFile = "1-zone", radius = 50, faction = "alliance"},
        {subZone = "Coldridge Valley", zoneName = "Dun Morogh", audioFile = "1-coldridge", x = 29.00, y = 71.00, radius = 50, faction = "alliance"},
        {subZone = "Anvilmar", zoneName = "Dun Morogh", audioFile = "1-anvilmar", x = 29.80, y = 71.20, radius = 50, faction = "alliance"},
        {subZone = "Kharanos", zoneName = "Dun Morogh", audioFile = "1-kharanos", x = 46.80, y = 52.40, radius = 50, faction = "alliance"},
        {subZone = "Thunderbrew Distillery", zoneName = "Dun Morogh", audioFile = "1-thunderbrew", x = 46.50, y = 52.00, radius = 50, faction = "alliance"},
        {subZone = "Brewnall Village", zoneName = "Dun Morogh", audioFile = "1-brewnall", x = 30.50, y = 45.50, radius = 50, faction = "alliance"},
        {subZone = "Gnomeregan", zoneName = "Dun Morogh", audioFile = "1-gnomeregan", x = 24.00, y = 39.80, radius = 50, faction = "neutral"},
        {subZone = "Frostmane Hold", zoneName = "Dun Morogh", audioFile = "1-frostmane", x = 22.00, y = 52.00, radius = 50, faction = "neutral"},
        {subZone = "Shimmer Ridge", zoneName = "Dun Morogh", audioFile = "1-shimmerridge", x = 42.00, y = 36.00, radius = 50, faction = "neutral"},
        {subZone = "Gol'Bolar Quarry", zoneName = "Dun Morogh", audioFile = "1-golbolar", x = 69.50, y = 56.00, radius = 50, faction = "neutral"},
        {subZone = "Iceflow Lake", zoneName = "Dun Morogh", audioFile = "1-iceflow", x = 36.00, y = 42.00, radius = 50, faction = "neutral"},
        {subZone = "Helm's Bed Lake", zoneName = "Dun Morogh", audioFile = "1-helmsbed", x = 54.00, y = 44.00, radius = 50, faction = "neutral"},
        {subZone = "The Grizzled Den", zoneName = "Dun Morogh", audioFile = "1-grizzledden", x = 42.50, y = 53.50, radius = 50, faction = "neutral"},
        {subZone = "Amberstill Ranch", zoneName = "Dun Morogh", audioFile = "1-amberstill", x = 63.00, y = 50.50, radius = 50, faction = "alliance"},
        {subZone = "Steelgrill's Depot", zoneName = "Dun Morogh", audioFile = "1-steelgrill", x = 57.00, y = 47.00, radius = 50, faction = "alliance"},
        {subZone = "North Gate Outpost", zoneName = "Dun Morogh", audioFile = "1-northgate", x = 86.00, y = 51.00, radius = 50, faction = "alliance"},
        {subZone = "South Gate Outpost", zoneName = "Dun Morogh", audioFile = "1-southgate", x = 84.00, y = 53.00, radius = 50, faction = "alliance"},
    },
    
    -- Teldrassil (Zone ID: 141)
    [141] = {
        {zoneName = "Teldrassil", audioFile = "141-zone", radius = 50, faction = "alliance"},
        {subZone = "Shadowglen", zoneName = "Teldrassil", audioFile = "141-shadowglen", x = 58.60, y = 33.40, radius = 50, faction = "alliance"},
        {subZone = "Aldrassil", zoneName = "Teldrassil", audioFile = "141-aldrassil", x = 58.80, y = 33.60, radius = 50, faction = "alliance"},
        {subZone = "Dolanaar", zoneName = "Teldrassil", audioFile = "141-dolanaar", x = 55.50, y = 52.00, radius = 50, faction = "alliance"},
        {subZone = "Darnassus", zoneName = "Teldrassil", audioFile = "141-darnassus", x = 30.00, y = 45.00, radius = 50, faction = "alliance"},
        {subZone = "Ban'ethil Barrow Den", zoneName = "Teldrassil", audioFile = "141-banethil", x = 45.00, y = 58.00, radius = 50, faction = "neutral"},
        {subZone = "The Oracle Glade", zoneName = "Teldrassil", audioFile = "141-oracleglade", x = 44.50, y = 33.00, radius = 50, faction = "alliance"},
        {subZone = "Starbreeze Village", zoneName = "Teldrassil", audioFile = "141-starbreeze", x = 66.00, y = 58.00, radius = 50, faction = "neutral"},
        {subZone = "Gnarlpine Hold", zoneName = "Teldrassil", audioFile = "141-gnarlpine", x = 46.00, y = 73.00, radius = 50, faction = "neutral"},
        {subZone = "Lake Al'Ameth", zoneName = "Teldrassil", audioFile = "141-alameth", x = 60.00, y = 60.00, radius = 50, faction = "neutral"},
        {subZone = "Pools of Arlithrien", zoneName = "Teldrassil", audioFile = "141-arlithrien", x = 43.00, y = 46.00, radius = 50, faction = "neutral"},
        {subZone = "Wellspring Lake", zoneName = "Teldrassil", audioFile = "141-wellspring", x = 51.00, y = 37.00, radius = 50, faction = "neutral"},
        {subZone = "Rut'theran Village", zoneName = "Teldrassil", audioFile = "141-ruttheran", x = 55.00, y = 88.00, radius = 50, faction = "alliance"},
        {subZone = "The Cleft", zoneName = "Teldrassil", audioFile = "141-cleft", x = 52.00, y = 63.00, radius = 50, faction = "neutral"},
        {subZone = "Fel Rock", zoneName = "Teldrassil", audioFile = "141-felrock", x = 54.00, y = 28.00, radius = 50, faction = "neutral"},
    },

    -- ============================================
    -- TIER 2: CORE LEVELING ZONES (10-40)
    -- ============================================
    
    -- Westfall (Zone ID: 40)
    [40] = {
        {zoneName = "Westfall", audioFile = "40-zone", radius = 50, faction = "alliance"},
        {subZone = "Sentinel Hill", zoneName = "Westfall", audioFile = "40-sentinelhill", x = 56.30, y = 47.50, radius = 50, faction = "alliance"},
        {subZone = "Moonbrook", zoneName = "Westfall", audioFile = "40-moonbrook", x = 42.00, y = 72.00, radius = 50, faction = "neutral"},
        {subZone = "The Deadmines", zoneName = "Westfall", audioFile = "40-deadmines", x = 42.50, y = 72.00, radius = 50, faction = "neutral"},
        {subZone = "Furlbrow's Pumpkin Farm", zoneName = "Westfall", audioFile = "40-furlbrow", x = 49.50, y = 19.50, radius = 50, faction = "alliance"},
        {subZone = "Saldean's Farm", zoneName = "Westfall", audioFile = "40-saldean", x = 56.00, y = 31.00, radius = 50, faction = "alliance"},
        {subZone = "Alexston Farmstead", zoneName = "Westfall", audioFile = "40-alexston", x = 36.00, y = 51.00, radius = 50, faction = "neutral"},
        {subZone = "Jangolode Mine", zoneName = "Westfall", audioFile = "40-jangolode", x = 44.00, y = 53.00, radius = 50, faction = "neutral"},
        {subZone = "Gold Coast Quarry", zoneName = "Westfall", audioFile = "40-goldcoast", x = 32.00, y = 42.00, radius = 50, faction = "neutral"},
        {subZone = "Longshore", zoneName = "Westfall", audioFile = "40-longshore", x = 27.00, y = 32.00, radius = 50, faction = "neutral"},
        {subZone = "The Dagger Hills", zoneName = "Westfall", audioFile = "40-daggerhills", x = 45.00, y = 78.00, radius = 50, faction = "neutral"},
        {subZone = "The Dust Plains", zoneName = "Westfall", audioFile = "40-dustplains", x = 60.00, y = 65.00, radius = 50, faction = "neutral"},
        {subZone = "Westfall Lighthouse", zoneName = "Westfall", audioFile = "40-lighthouse", x = 30.00, y = 86.00, radius = 50, faction = "neutral"},
        {subZone = "The Molsen Farm", zoneName = "Westfall", audioFile = "40-molsen", x = 44.00, y = 36.00, radius = 50, faction = "neutral"},
        {subZone = "The Dead Acre", zoneName = "Westfall", audioFile = "40-deadacre", x = 59.00, y = 19.00, radius = 50, faction = "neutral"},
    },
    
    -- Loch Modan (Zone ID: 38)
    [38] = {
        {zoneName = "Loch Modan", audioFile = "38-zone", radius = 50, faction = "alliance"},
        {subZone = "Thelsamar", zoneName = "Loch Modan", audioFile = "38-thelsamar", x = 35.00, y = 46.50, radius = 50, faction = "alliance"},
        {subZone = "Stonewrought Dam", zoneName = "Loch Modan", audioFile = "38-stonewrought", x = 47.00, y = 11.00, radius = 50, faction = "alliance"},
        {subZone = "The Loch", zoneName = "Loch Modan", audioFile = "38-theloch", x = 45.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Excavation Site", zoneName = "Loch Modan", audioFile = "38-excavation", x = 37.00, y = 34.00, radius = 50, faction = "alliance"},
        {subZone = "Ironband's Excavation Site", zoneName = "Loch Modan", audioFile = "38-ironband", x = 65.00, y = 65.00, radius = 50, faction = "alliance"},
        {subZone = "Mo'grosh Stronghold", zoneName = "Loch Modan", audioFile = "38-mogrosh", x = 70.00, y = 22.00, radius = 50, faction = "neutral"},
        {subZone = "Valley of Kings", zoneName = "Loch Modan", audioFile = "38-valleyofkings", x = 22.00, y = 73.00, radius = 50, faction = "neutral"},
        {subZone = "Algaz Station", zoneName = "Loch Modan", audioFile = "38-algaz", x = 25.00, y = 18.00, radius = 50, faction = "alliance"},
        {subZone = "Silver Stream Mine", zoneName = "Loch Modan", audioFile = "38-silverstream", x = 35.00, y = 22.00, radius = 50, faction = "neutral"},
        {subZone = "Stonesplinter Valley", zoneName = "Loch Modan", audioFile = "38-stonesplinter", x = 32.00, y = 74.00, radius = 50, faction = "neutral"},
        {subZone = "Grizzlepaw Ridge", zoneName = "Loch Modan", audioFile = "38-grizzlepaw", x = 27.00, y = 37.00, radius = 50, faction = "neutral"},
        {subZone = "North Gate Pass", zoneName = "Loch Modan", audioFile = "38-northgate", x = 20.00, y = 87.00, radius = 50, faction = "alliance"},
        {subZone = "Farstrider Lodge", zoneName = "Loch Modan", audioFile = "38-farstrider", x = 82.00, y = 65.00, radius = 50, faction = "alliance"},
    },
    
    -- Darkshore (Zone ID: 148)
    [148] = {
        {zoneName = "Darkshore", audioFile = "148-zone", radius = 50, faction = "alliance"},
        {subZone = "Auberdine", zoneName = "Darkshore", audioFile = "148-auberdine", x = 36.50, y = 45.50, radius = 50, faction = "alliance"},
        {subZone = "Ruins of Mathystra", zoneName = "Darkshore", audioFile = "148-mathystra", x = 58.00, y = 24.00, radius = 50, faction = "neutral"},
        {subZone = "Ameth'Aran", zoneName = "Darkshore", audioFile = "148-ametharan", x = 42.00, y = 62.00, radius = 50, faction = "neutral"},
        {subZone = "Bashal'Aran", zoneName = "Darkshore", audioFile = "148-bashalaran", x = 44.00, y = 36.00, radius = 50, faction = "neutral"},
        {subZone = "Tower of Althalaxx", zoneName = "Darkshore", audioFile = "148-althalaxx", x = 54.00, y = 25.00, radius = 50, faction = "neutral"},
        {subZone = "The Master's Glaive", zoneName = "Darkshore", audioFile = "148-mastersglaive", x = 39.00, y = 85.00, radius = 50, faction = "neutral"},
        {subZone = "Cliffspring Falls", zoneName = "Darkshore", audioFile = "148-cliffspring", x = 53.00, y = 33.00, radius = 50, faction = "neutral"},
        {subZone = "Grove of the Ancients", zoneName = "Darkshore", audioFile = "148-groveancients", x = 45.00, y = 73.00, radius = 50, faction = "alliance"},
        {subZone = "Remtravel's Excavation", zoneName = "Darkshore", audioFile = "148-remtravel", x = 35.00, y = 84.00, radius = 50, faction = "alliance"},
        {subZone = "Mist's Edge", zoneName = "Darkshore", audioFile = "148-mistsedge", x = 32.00, y = 55.00, radius = 50, faction = "neutral"},
        {subZone = "Wildbend River", zoneName = "Darkshore", audioFile = "148-wildbend", x = 50.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Blackwood Den", zoneName = "Darkshore", audioFile = "148-blackwood", x = 46.00, y = 87.00, radius = 50, faction = "neutral"},
        {subZone = "The Long Wash", zoneName = "Darkshore", audioFile = "148-longwash", x = 36.00, y = 70.00, radius = 50, faction = "neutral"},
    },
    
    -- Redridge Mountains (Zone ID: 44)
    [44] = {
        {zoneName = "Redridge Mountains", audioFile = "44-zone", radius = 50, faction = "alliance"},
        {subZone = "Lakeshire", zoneName = "Redridge Mountains", audioFile = "44-lakeshire", x = 30.50, y = 59.50, radius = 50, faction = "alliance"},
        {subZone = "Lake Everstill", zoneName = "Redridge Mountains", audioFile = "44-everstill", x = 40.00, y = 55.00, radius = 50, faction = "neutral"},
        {subZone = "Stonewatch Keep", zoneName = "Redridge Mountains", audioFile = "44-stonewatch", x = 60.00, y = 47.00, radius = 50, faction = "neutral"},
        {subZone = "Stonewatch Falls", zoneName = "Redridge Mountains", audioFile = "44-stonewatchfalls", x = 73.00, y = 52.00, radius = 50, faction = "neutral"},
        {subZone = "Render's Camp", zoneName = "Redridge Mountains", audioFile = "44-render", x = 33.00, y = 12.00, radius = 50, faction = "neutral"},
        {subZone = "Render's Valley", zoneName = "Redridge Mountains", audioFile = "44-rendervalley", x = 35.00, y = 20.00, radius = 50, faction = "neutral"},
        {subZone = "Alther's Mill", zoneName = "Redridge Mountains", audioFile = "44-althersmill", x = 52.00, y = 42.00, radius = 50, faction = "neutral"},
        {subZone = "Lakeridge Highway", zoneName = "Redridge Mountains", audioFile = "44-lakeridge", x = 45.00, y = 65.00, radius = 50, faction = "neutral"},
        {subZone = "Three Corners", zoneName = "Redridge Mountains", audioFile = "44-threecorners", x = 29.00, y = 44.00, radius = 50, faction = "neutral"},
        {subZone = "Tower of Ilgalar", zoneName = "Redridge Mountains", audioFile = "44-ilgalar", x = 77.00, y = 35.00, radius = 50, faction = "neutral"},
        {subZone = "Rethban Caverns", zoneName = "Redridge Mountains", audioFile = "44-rethban", x = 26.00, y = 17.00, radius = 50, faction = "neutral"},
        {subZone = "Galardell Valley", zoneName = "Redridge Mountains", audioFile = "44-galardell", x = 15.00, y = 50.00, radius = 50, faction = "neutral"},
    },

    -- Wetlands (Zone ID: 11)
    [11] = {
        {zoneName = "Wetlands", audioFile = "11-zone", radius = 50, faction = "alliance"},
        {subZone = "Menethil Harbor", zoneName = "Wetlands", audioFile = "11-menethil", x = 10.00, y = 60.50, radius = 50, faction = "alliance"},
        {subZone = "Dun Modr", zoneName = "Wetlands", audioFile = "11-dunmodr", x = 49.00, y = 18.00, radius = 50, faction = "neutral"},
        {subZone = "Dun Algaz", zoneName = "Wetlands", audioFile = "11-dunalgaz", x = 53.00, y = 70.00, radius = 50, faction = "alliance"},
        {subZone = "Greenwarden's Grove", zoneName = "Wetlands", audioFile = "11-greenwarden", x = 56.00, y = 40.00, radius = 50, faction = "alliance"},
        {subZone = "Whelgar's Excavation Site", zoneName = "Wetlands", audioFile = "11-whelgar", x = 35.00, y = 43.00, radius = 50, faction = "alliance"},
        {subZone = "Ironbeard's Tomb", zoneName = "Wetlands", audioFile = "11-ironbeard", x = 42.00, y = 27.00, radius = 50, faction = "neutral"},
        {subZone = "Angerfang Encampment", zoneName = "Wetlands", audioFile = "11-angerfang", x = 45.00, y = 32.00, radius = 50, faction = "neutral"},
        {subZone = "Mosshide Fen", zoneName = "Wetlands", audioFile = "11-mosshide", x = 62.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Sundown Marsh", zoneName = "Wetlands", audioFile = "11-sundown", x = 25.00, y = 25.00, radius = 50, faction = "neutral"},
        {subZone = "Bluegill Marsh", zoneName = "Wetlands", audioFile = "11-bluegill", x = 18.00, y = 38.00, radius = 50, faction = "neutral"},
        {subZone = "Black Channel Marsh", zoneName = "Wetlands", audioFile = "11-blackchannel", x = 30.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Thelgen Rock", zoneName = "Wetlands", audioFile = "11-thelgen", x = 52.00, y = 56.00, radius = 50, faction = "neutral"},
        {subZone = "Direforge Hill", zoneName = "Wetlands", audioFile = "11-direforge", x = 60.00, y = 26.00, radius = 50, faction = "neutral"},
    },
    
    -- Duskwood (Zone ID: 10)
    [10] = {
        {zoneName = "Duskwood", audioFile = "10-zone", radius = 50, faction = "alliance"},
        {subZone = "Darkshire", zoneName = "Duskwood", audioFile = "10-darkshire", x = 73.50, y = 46.50, radius = 50, faction = "alliance"},
        {subZone = "Raven Hill", zoneName = "Duskwood", audioFile = "10-ravenhill", x = 18.00, y = 56.00, radius = 50, faction = "neutral"},
        {subZone = "Raven Hill Cemetery", zoneName = "Duskwood", audioFile = "10-ravenhillcemetery", x = 22.00, y = 40.00, radius = 50, faction = "neutral"},
        {subZone = "The Hushed Bank", zoneName = "Duskwood", audioFile = "10-hushedbank", x = 46.00, y = 74.00, radius = 50, faction = "neutral"},
        {subZone = "Manor Mistmantle", zoneName = "Duskwood", audioFile = "10-mistmantle", x = 77.00, y = 35.00, radius = 50, faction = "neutral"},
        {subZone = "Roland's Doom", zoneName = "Duskwood", audioFile = "10-rolandsdoom", x = 65.00, y = 23.00, radius = 50, faction = "neutral"},
        {subZone = "Addle's Stead", zoneName = "Duskwood", audioFile = "10-addlesstead", x = 21.00, y = 67.00, radius = 50, faction = "neutral"},
        {subZone = "The Rotting Orchard", zoneName = "Duskwood", audioFile = "10-rottingorchard", x = 62.00, y = 70.00, radius = 50, faction = "neutral"},
        {subZone = "Twilight Grove", zoneName = "Duskwood", audioFile = "10-twilightgrove", x = 46.00, y = 39.00, radius = 50, faction = "neutral"},
        {subZone = "Vul'Gol Ogre Mound", zoneName = "Duskwood", audioFile = "10-vulgol", x = 35.00, y = 73.00, radius = 50, faction = "neutral"},
        {subZone = "The Yorgen Farmstead", zoneName = "Duskwood", audioFile = "10-yorgen", x = 51.00, y = 73.00, radius = 50, faction = "neutral"},
        {subZone = "Tranquil Gardens Cemetery", zoneName = "Duskwood", audioFile = "10-tranquilgardens", x = 80.00, y = 70.00, radius = 50, faction = "neutral"},
        {subZone = "Beggar's Haunt", zoneName = "Duskwood", audioFile = "10-beggarshaunt", x = 87.00, y = 35.00, radius = 50, faction = "neutral"},
    },
    
    -- Stonetalon Mountains (Zone ID: 406)
    [406] = {
        {zoneName = "Stonetalon Mountains", audioFile = "406-zone", radius = 50, faction = "neutral"},
        {subZone = "Stonetalon Peak", zoneName = "Stonetalon Mountains", audioFile = "406-stonetalon", x = 41.00, y = 18.00, radius = 50, faction = "alliance"},
        {subZone = "Windshear Crag", zoneName = "Stonetalon Mountains", audioFile = "406-windshear", x = 59.00, y = 56.00, radius = 50, faction = "neutral"},
        {subZone = "The Charred Vale", zoneName = "Stonetalon Mountains", audioFile = "406-charredvale", x = 30.00, y = 66.00, radius = 50, faction = "neutral"},
        {subZone = "Mirkfallon Lake", zoneName = "Stonetalon Mountains", audioFile = "406-mirkfallon", x = 49.00, y = 42.00, radius = 50, faction = "neutral"},
        {subZone = "Cragpool Lake", zoneName = "Stonetalon Mountains", audioFile = "406-cragpool", x = 42.00, y = 42.00, radius = 50, faction = "neutral"},
        {subZone = "Webwinder Path", zoneName = "Stonetalon Mountains", audioFile = "406-webwinder", x = 55.00, y = 75.00, radius = 50, faction = "neutral"},
        {subZone = "Greatwood Vale", zoneName = "Stonetalon Mountains", audioFile = "406-greatwood", x = 65.00, y = 45.00, radius = 50, faction = "neutral"},
        {subZone = "Sun Rock Retreat", zoneName = "Stonetalon Mountains", audioFile = "406-sunrock", x = 45.00, y = 60.00, radius = 50, faction = "horde"},
        {subZone = "Grimtotem Post", zoneName = "Stonetalon Mountains", audioFile = "406-grimtotem", x = 72.00, y = 88.00, radius = 50, faction = "neutral"},
        {subZone = "Sishir Canyon", zoneName = "Stonetalon Mountains", audioFile = "406-sishir", x = 35.00, y = 80.00, radius = 50, faction = "neutral"},
        {subZone = "Boulderslide Ravine", zoneName = "Stonetalon Mountains", audioFile = "406-boulderslide", x = 62.00, y = 90.00, radius = 50, faction = "neutral"},
    },
    
    -- Hillsbrad Foothills (Zone ID: 267)
    [267] = {
        {zoneName = "Hillsbrad Foothills", audioFile = "267-zone", radius = 50, faction = "neutral"},
        {subZone = "Southshore", zoneName = "Hillsbrad Foothills", audioFile = "267-southshore", x = 49.50, y = 52.00, radius = 50, faction = "alliance"},
        {subZone = "Hillsbrad Fields", zoneName = "Hillsbrad Foothills", audioFile = "267-hillsbradfields", x = 33.00, y = 45.00, radius = 50, faction = "neutral"},
        {subZone = "Tarren Mill", zoneName = "Hillsbrad Foothills", audioFile = "267-tarrenmill", x = 62.00, y = 20.00, radius = 50, faction = "horde"},
        {subZone = "Durnholde Keep", zoneName = "Hillsbrad Foothills", audioFile = "267-durnholde", x = 75.00, y = 45.00, radius = 50, faction = "neutral"},
        {subZone = "Azurelode Mine", zoneName = "Hillsbrad Foothills", audioFile = "267-azurelode", x = 27.00, y = 65.00, radius = 50, faction = "neutral"},
        {subZone = "Western Strand", zoneName = "Hillsbrad Foothills", audioFile = "267-westernstrand", x = 20.00, y = 70.00, radius = 50, faction = "neutral"},
        {subZone = "Eastern Strand", zoneName = "Hillsbrad Foothills", audioFile = "267-easternstrand", x = 55.00, y = 70.00, radius = 50, faction = "neutral"},
        {subZone = "Nethander Stead", zoneName = "Hillsbrad Foothills", audioFile = "267-nethander", x = 40.00, y = 55.00, radius = 50, faction = "neutral"},
        {subZone = "Darrow Hill", zoneName = "Hillsbrad Foothills", audioFile = "267-darrowhill", x = 45.00, y = 30.00, radius = 50, faction = "neutral"},
        {subZone = "Purgation Isle", zoneName = "Hillsbrad Foothills", audioFile = "267-purgation", x = 25.00, y = 85.00, radius = 50, faction = "neutral"},
        {subZone = "Southpoint Tower", zoneName = "Hillsbrad Foothills", audioFile = "267-southpoint", x = 50.00, y = 65.00, radius = 50, faction = "alliance"},
    },
    
    -- Arathi Highlands (Zone ID: 45)
    [45] = {
        {zoneName = "Arathi Highlands", audioFile = "45-zone", radius = 50, faction = "neutral"},
        {subZone = "Refuge Pointe", zoneName = "Arathi Highlands", audioFile = "45-refugepointe", x = 46.00, y = 47.00, radius = 50, faction = "alliance"},
        {subZone = "Stromgarde Keep", zoneName = "Arathi Highlands", audioFile = "45-stromgarde", x = 25.00, y = 62.00, radius = 50, faction = "neutral"},
        {subZone = "Circle of Outer Binding", zoneName = "Arathi Highlands", audioFile = "45-outerbinding", x = 52.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Circle of Inner Binding", zoneName = "Arathi Highlands", audioFile = "45-innerbinding", x = 36.00, y = 58.00, radius = 50, faction = "neutral"},
        {subZone = "Circle of West Binding", zoneName = "Arathi Highlands", audioFile = "45-westbinding", x = 25.00, y = 30.00, radius = 50, faction = "neutral"},
        {subZone = "Circle of East Binding", zoneName = "Arathi Highlands", audioFile = "45-eastbinding", x = 69.00, y = 34.00, radius = 50, faction = "neutral"},
        {subZone = "Thandol Span", zoneName = "Arathi Highlands", audioFile = "45-thandolspan", x = 44.00, y = 89.00, radius = 50, faction = "neutral"},
        {subZone = "Go'Shek Farm", zoneName = "Arathi Highlands", audioFile = "45-goshek", x = 60.00, y = 55.00, radius = 50, faction = "neutral"},
        {subZone = "Dabyrie's Farmstead", zoneName = "Arathi Highlands", audioFile = "45-dabyrie", x = 50.00, y = 40.00, radius = 50, faction = "neutral"},
        {subZone = "Northfold Manor", zoneName = "Arathi Highlands", audioFile = "45-northfold", x = 30.00, y = 28.00, radius = 50, faction = "neutral"},
        {subZone = "Boulderfist Hall", zoneName = "Arathi Highlands", audioFile = "45-boulderfist", x = 48.00, y = 78.00, radius = 50, faction = "neutral"},
        {subZone = "Witherbark Village", zoneName = "Arathi Highlands", audioFile = "45-witherbark", x = 63.00, y = 68.00, radius = 50, faction = "neutral"},
        {subZone = "Faldir's Cove", zoneName = "Arathi Highlands", audioFile = "45-faldirs", x = 32.00, y = 82.00, radius = 50, faction = "neutral"},
        {subZone = "Hammerfall", zoneName = "Arathi Highlands", audioFile = "45-hammerfall", x = 74.00, y = 36.00, radius = 50, faction = "horde"},
    },

    -- Stranglethorn Vale (Zone ID: 33)
    [33] = {
        {zoneName = "Stranglethorn Vale", audioFile = "33-zone", radius = 50, faction = "neutral"},
        {subZone = "Booty Bay", zoneName = "Stranglethorn Vale", audioFile = "33-bootybay", x = 27.00, y = 77.00, radius = 50, faction = "neutral"},
        {subZone = "Nesingwary's Expedition", zoneName = "Stranglethorn Vale", audioFile = "33-nesingwary", x = 35.50, y = 10.50, radius = 50, faction = "neutral"},
        {subZone = "Rebel Camp", zoneName = "Stranglethorn Vale", audioFile = "33-rebelcamp", x = 38.00, y = 3.00, radius = 50, faction = "alliance"},
        {subZone = "Zul'Gurub", zoneName = "Stranglethorn Vale", audioFile = "33-zulgurub", x = 53.00, y = 17.00, radius = 50, faction = "neutral"},
        {subZone = "Grom'gol Base Camp", zoneName = "Stranglethorn Vale", audioFile = "33-gromgol", x = 32.00, y = 29.00, radius = 50, faction = "horde"},
        {subZone = "Kurzen's Compound", zoneName = "Stranglethorn Vale", audioFile = "33-kurzen", x = 44.00, y = 10.00, radius = 50, faction = "neutral"},
        {subZone = "Ruins of Zul'Kunda", zoneName = "Stranglethorn Vale", audioFile = "33-zulkunda", x = 25.00, y = 8.00, radius = 50, faction = "neutral"},
        {subZone = "Ruins of Zul'Mamwe", zoneName = "Stranglethorn Vale", audioFile = "33-zulmamwe", x = 47.00, y = 40.00, radius = 50, faction = "neutral"},
        {subZone = "Bal'lal Ruins", zoneName = "Stranglethorn Vale", audioFile = "33-ballal", x = 29.00, y = 20.00, radius = 50, faction = "neutral"},
        {subZone = "Kal'ai Ruins", zoneName = "Stranglethorn Vale", audioFile = "33-kalai", x = 46.00, y = 22.00, radius = 50, faction = "neutral"},
        {subZone = "Zuuldaia Ruins", zoneName = "Stranglethorn Vale", audioFile = "33-zuuldaia", x = 21.00, y = 14.00, radius = 50, faction = "neutral"},
        {subZone = "Venture Co. Base Camp", zoneName = "Stranglethorn Vale", audioFile = "33-ventureco", x = 44.00, y = 22.00, radius = 50, faction = "neutral"},
        {subZone = "Lake Nazferiti", zoneName = "Stranglethorn Vale", audioFile = "33-nazferiti", x = 39.00, y = 42.00, radius = 50, faction = "neutral"},
        {subZone = "Mosh'Ogg Ogre Mound", zoneName = "Stranglethorn Vale", audioFile = "33-moshogg", x = 49.00, y = 28.00, radius = 50, faction = "neutral"},
        {subZone = "Mistvale Valley", zoneName = "Stranglethorn Vale", audioFile = "33-mistvale", x = 30.00, y = 67.00, radius = 50, faction = "neutral"},
        {subZone = "Jaguero Isle", zoneName = "Stranglethorn Vale", audioFile = "33-jaguero", x = 38.00, y = 82.00, radius = 50, faction = "neutral"},
        {subZone = "Wild Shore", zoneName = "Stranglethorn Vale", audioFile = "33-wildshore", x = 33.00, y = 85.00, radius = 50, faction = "neutral"},
        {subZone = "Janeiro's Point", zoneName = "Stranglethorn Vale", audioFile = "33-janeiro", x = 28.00, y = 75.00, radius = 50, faction = "neutral"},
    },
    
    -- Desolace (Zone ID: 405)
    [405] = {
        {zoneName = "Desolace", audioFile = "405-zone", radius = 50, faction = "neutral"},
        {subZone = "Nijel's Point", zoneName = "Desolace", audioFile = "405-nijel", x = 66.50, y = 6.50, radius = 50, faction = "alliance"},
        {subZone = "Maraudon", zoneName = "Desolace", audioFile = "405-maraudon", x = 29.00, y = 62.50, radius = 50, faction = "neutral"},
        {subZone = "Shadowprey Village", zoneName = "Desolace", audioFile = "405-shadowprey", x = 23.00, y = 70.00, radius = 50, faction = "horde"},
        {subZone = "Gelkis Village", zoneName = "Desolace", audioFile = "405-gelkis", x = 36.00, y = 79.00, radius = 50, faction = "neutral"},
        {subZone = "Magram Village", zoneName = "Desolace", audioFile = "405-magram", x = 65.00, y = 70.00, radius = 50, faction = "neutral"},
        {subZone = "Kodo Graveyard", zoneName = "Desolace", audioFile = "405-kodograveyard", x = 52.00, y = 58.00, radius = 50, faction = "neutral"},
        {subZone = "Valley of Spears", zoneName = "Desolace", audioFile = "405-valleyspears", x = 50.00, y = 55.00, radius = 50, faction = "neutral"},
        {subZone = "Sargeron", zoneName = "Desolace", audioFile = "405-sargeron", x = 78.00, y = 22.00, radius = 50, faction = "neutral"},
        {subZone = "Thunder Axe Fortress", zoneName = "Desolace", audioFile = "405-thunderaxe", x = 54.00, y = 28.00, radius = 50, faction = "neutral"},
        {subZone = "Mannoroc Coven", zoneName = "Desolace", audioFile = "405-mannoroc", x = 51.00, y = 78.00, radius = 50, faction = "neutral"},
        {subZone = "Kolkar Village", zoneName = "Desolace", audioFile = "405-kolkar", x = 72.00, y = 48.00, radius = 50, faction = "neutral"},
        {subZone = "Ranazjar Isle", zoneName = "Desolace", audioFile = "405-ranazjar", x = 28.00, y = 8.00, radius = 50, faction = "neutral"},
        {subZone = "Ghost Walker Post", zoneName = "Desolace", audioFile = "405-ghostwalker", x = 56.00, y = 58.00, radius = 50, faction = "horde"},
        {subZone = "Ethel Rethor", zoneName = "Desolace", audioFile = "405-ethelrethor", x = 38.00, y = 27.00, radius = 50, faction = "neutral"},
    },
    
    -- Dustwallow Marsh (Zone ID: 15)
    [15] = {
        {zoneName = "Dustwallow Marsh", audioFile = "15-zone", radius = 50, faction = "alliance"},
        {subZone = "Theramore Isle", zoneName = "Dustwallow Marsh", audioFile = "15-theramore", x = 67.50, y = 51.00, radius = 50, faction = "alliance"},
        {subZone = "Sentry Point", zoneName = "Dustwallow Marsh", audioFile = "15-sentrypoint", x = 59.00, y = 41.00, radius = 50, faction = "alliance"},
        {subZone = "North Point Tower", zoneName = "Dustwallow Marsh", audioFile = "15-northpoint", x = 46.00, y = 24.00, radius = 50, faction = "alliance"},
        {subZone = "Alcaz Island", zoneName = "Dustwallow Marsh", audioFile = "15-alcaz", x = 78.00, y = 18.00, radius = 50, faction = "neutral"},
        {subZone = "Witch Hill", zoneName = "Dustwallow Marsh", audioFile = "15-witchhill", x = 55.00, y = 26.00, radius = 50, faction = "neutral"},
        {subZone = "The Den of Flame", zoneName = "Dustwallow Marsh", audioFile = "15-denofflame", x = 46.00, y = 75.00, radius = 50, faction = "neutral"},
        {subZone = "Wyrmbog", zoneName = "Dustwallow Marsh", audioFile = "15-wyrmbog", x = 42.00, y = 72.00, radius = 50, faction = "neutral"},
        {subZone = "Onyxia's Lair", zoneName = "Dustwallow Marsh", audioFile = "15-onyxia", x = 52.00, y = 76.00, radius = 50, faction = "neutral"},
        {subZone = "Mudsprocket", zoneName = "Dustwallow Marsh", audioFile = "15-mudsprocket", x = 42.00, y = 73.00, radius = 50, faction = "neutral"},
        {subZone = "Brackenwall Village", zoneName = "Dustwallow Marsh", audioFile = "15-brackenwall", x = 36.00, y = 31.00, radius = 50, faction = "horde"},
        {subZone = "Stonemaul Ruins", zoneName = "Dustwallow Marsh", audioFile = "15-stonemaul", x = 46.00, y = 47.00, radius = 50, faction = "neutral"},
        {subZone = "The Quagmire", zoneName = "Dustwallow Marsh", audioFile = "15-quagmire", x = 30.00, y = 47.00, radius = 50, faction = "neutral"},
        {subZone = "Darkmist Cavern", zoneName = "Dustwallow Marsh", audioFile = "15-darkmist", x = 35.00, y = 20.00, radius = 50, faction = "neutral"},
        {subZone = "Lost Point", zoneName = "Dustwallow Marsh", audioFile = "15-lostpoint", x = 54.00, y = 56.00, radius = 50, faction = "neutral"},
    },
    
    -- Ashenvale (Zone ID: 331) - EXISTING
    [331] = {
        {zoneName = "Ashenvale", audioFile = "331-zone", radius = 50, faction = "neutral"},
        {subZone = "Astranaar", zoneName = "Ashenvale", audioFile = "331-astranaar", x = 36.60, y = 49.60, radius = 50, faction = "alliance"},
        {subZone = "Demon Fall Canyon", zoneName = "Ashenvale", audioFile = "331-demonfall", x = 81.60, y = 48.80, radius = 50, faction = "neutral"},
        {subZone = "Felfire Hill", zoneName = "Ashenvale", audioFile = "331-felfire", x = 82.20, y = 69.80, radius = 50, faction = "neutral"},
        {subZone = "Forest Song", zoneName = "Ashenvale", audioFile = "331-forestsong", x = 86.50, y = 44.20, radius = 50, faction = "alliance"},
        {subZone = "Lake Falathim", zoneName = "Ashenvale", audioFile = "331-falathim", x = 20.00, y = 41.50, radius = 50, faction = "neutral"},
        {subZone = "Maestra's Post", zoneName = "Ashenvale", audioFile = "331-maestra", x = 26.90, y = 36.70, radius = 50, faction = "alliance"},
        {subZone = "Night Run", zoneName = "Ashenvale", audioFile = "331-nightrun", x = 15.30, y = 20.70, radius = 50, faction = "neutral"},
        {subZone = "Raynewood Retreat", zoneName = "Ashenvale", audioFile = "331-raynewood", x = 59.80, y = 54.60, radius = 50, faction = "neutral"},
        {subZone = "Satyrnaar", zoneName = "Ashenvale", audioFile = "331-satyrnaar", x = 80.80, y = 49.10, radius = 50, faction = "neutral"},
        {subZone = "Silverwind Refuge", zoneName = "Ashenvale", audioFile = "331-silverwind", x = 50.10, y = 67.20, radius = 50, faction = "alliance"},
        {subZone = "Splintertree Post", zoneName = "Ashenvale", audioFile = "331-splintertree", x = 73.70, y = 61.50, radius = 50, faction = "neutral"},
        {subZone = "The Ruins of Stardust", zoneName = "Ashenvale", audioFile = "331-stardust", x = 33.30, y = 67.50, radius = 50, faction = "neutral"},
        {subZone = "The Shrine of Aessina", zoneName = "Ashenvale", audioFile = "331-aessina", x = 21.80, y = 53.50, radius = 50, faction = "neutral"},
        {subZone = "Thistlefur Village", zoneName = "Ashenvale", audioFile = "331-thistlefur", x = 37.00, y = 33.50, radius = 50, faction = "neutral"},
        {subZone = "Warsong Lumber Camp", zoneName = "Ashenvale", audioFile = "331-warsong", x = 87.80, y = 58.30, radius = 50, faction = "alliance"},
    },

    -- ============================================
    -- TIER 3: HIGH-LEVEL ZONES (40-60)
    -- ============================================
    
    -- Badlands (Zone ID: 3)
    [3] = {
        {zoneName = "Badlands", audioFile = "3-zone", radius = 50, faction = "neutral"},
        {subZone = "Uldaman", zoneName = "Badlands", audioFile = "3-uldaman", x = 44.00, y = 12.00, radius = 50, faction = "neutral"},
        {subZone = "Kargath", zoneName = "Badlands", audioFile = "3-kargath", x = 4.00, y = 45.00, radius = 50, faction = "horde"},
        {subZone = "Camp Cagg", zoneName = "Badlands", audioFile = "3-campcagg", x = 15.00, y = 62.00, radius = 50, faction = "neutral"},
        {subZone = "Camp Boff", zoneName = "Badlands", audioFile = "3-campboff", x = 10.00, y = 72.00, radius = 50, faction = "neutral"},
        {subZone = "Camp Kosh", zoneName = "Badlands", audioFile = "3-campkosh", x = 6.00, y = 54.00, radius = 50, faction = "neutral"},
        {subZone = "Angor Fortress", zoneName = "Badlands", audioFile = "3-angorfortress", x = 42.00, y = 30.00, radius = 50, faction = "neutral"},
        {subZone = "Lethlor Ravine", zoneName = "Badlands", audioFile = "3-lethlorravine", x = 68.00, y = 43.00, radius = 50, faction = "neutral"},
        {subZone = "Agmond's End", zoneName = "Badlands", audioFile = "3-agmondsend", x = 50.00, y = 62.00, radius = 50, faction = "neutral"},
        {subZone = "Hammertoe's Digsite", zoneName = "Badlands", audioFile = "3-hammertoes", x = 53.00, y = 43.00, radius = 50, faction = "neutral"},
        {subZone = "Apocryphan's Rest", zoneName = "Badlands", audioFile = "3-apocryphan", x = 16.00, y = 60.00, radius = 50, faction = "neutral"},
        {subZone = "The Dustbowl", zoneName = "Badlands", audioFile = "3-dustbowl", x = 52.00, y = 54.00, radius = 50, faction = "neutral"},
        {subZone = "Mirage Flats", zoneName = "Badlands", audioFile = "3-mirageflats", x = 60.00, y = 20.00, radius = 50, faction = "neutral"},
    },
    
    -- Swamp of Sorrows (Zone ID: 8)
    [8] = {
        {zoneName = "Swamp of Sorrows", audioFile = "8-zone", radius = 50, faction = "neutral"},
        {subZone = "Stonard", zoneName = "Swamp of Sorrows", audioFile = "8-stonard", x = 45.00, y = 57.00, radius = 50, faction = "horde"},
        {subZone = "Temple of Atal'Hakkar", zoneName = "Swamp of Sorrows", audioFile = "8-atalhakkar", x = 69.00, y = 45.00, radius = 50, faction = "neutral"},
        {subZone = "Pool of Tears", zoneName = "Swamp of Sorrows", audioFile = "8-pooloftears", x = 65.00, y = 45.00, radius = 50, faction = "neutral"},
        {subZone = "Misty Valley", zoneName = "Swamp of Sorrows", audioFile = "8-mistyvalley", x = 15.00, y = 35.00, radius = 50, faction = "neutral"},
        {subZone = "Splinterspear Junction", zoneName = "Swamp of Sorrows", audioFile = "8-splinterspear", x = 25.00, y = 55.00, radius = 50, faction = "neutral"},
        {subZone = "Fallow Sanctuary", zoneName = "Swamp of Sorrows", audioFile = "8-fallow", x = 52.00, y = 42.00, radius = 50, faction = "neutral"},
        {subZone = "Stagalbog", zoneName = "Swamp of Sorrows", audioFile = "8-stagalbog", x = 62.00, y = 22.00, radius = 50, faction = "neutral"},
        {subZone = "Misty Reed Strand", zoneName = "Swamp of Sorrows", audioFile = "8-mistyreed", x = 82.00, y = 80.00, radius = 50, faction = "neutral"},
        {subZone = "The Harborage", zoneName = "Swamp of Sorrows", audioFile = "8-harborage", x = 26.00, y = 32.00, radius = 50, faction = "alliance"},
        {subZone = "Sorrowmurk", zoneName = "Swamp of Sorrows", audioFile = "8-sorrowmurk", x = 75.00, y = 15.00, radius = 50, faction = "neutral"},
    },
    
    -- Deadwind Pass (Zone ID: 41)
    [41] = {
        {zoneName = "Deadwind Pass", audioFile = "41-zone", radius = 50, faction = "neutral"},
        {subZone = "Karazhan", zoneName = "Deadwind Pass", audioFile = "41-karazhan", x = 47.00, y = 75.00, radius = 60, faction = "neutral"},
        {subZone = "The Vice", zoneName = "Deadwind Pass", audioFile = "41-vice", x = 55.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Deadman's Crossing", zoneName = "Deadwind Pass", audioFile = "41-deadmanscrossing", x = 43.00, y = 35.00, radius = 50, faction = "neutral"},
        {subZone = "Ariden's Camp", zoneName = "Deadwind Pass", audioFile = "41-aridenscamp", x = 52.00, y = 27.00, radius = 50, faction = "neutral"},
        {subZone = "The Master's Cellar", zoneName = "Deadwind Pass", audioFile = "41-masterscellar", x = 40.00, y = 78.00, radius = 50, faction = "neutral"},
    },
    
    -- Hinterlands (Zone ID: 47)
    [47] = {
        {zoneName = "Hinterlands", audioFile = "47-zone", radius = 50, faction = "neutral"},
        {subZone = "Aerie Peak", zoneName = "Hinterlands", audioFile = "47-aeriepeak", x = 14.00, y = 44.00, radius = 50, faction = "alliance"},
        {subZone = "Revantusk Village", zoneName = "Hinterlands", audioFile = "47-revantusk", x = 78.00, y = 80.00, radius = 50, faction = "horde"},
        {subZone = "Jintha'Alor", zoneName = "Hinterlands", audioFile = "47-jinthaalor", x = 59.00, y = 78.00, radius = 50, faction = "neutral"},
        {subZone = "Seradane", zoneName = "Hinterlands", audioFile = "47-seradane", x = 63.00, y = 24.00, radius = 50, faction = "neutral"},
        {subZone = "Skulk Rock", zoneName = "Hinterlands", audioFile = "47-skulkrock", x = 56.00, y = 44.00, radius = 50, faction = "neutral"},
        {subZone = "Agol'watha", zoneName = "Hinterlands", audioFile = "47-agolwatha", x = 46.00, y = 40.00, radius = 50, faction = "neutral"},
        {subZone = "Shaol'watha", zoneName = "Hinterlands", audioFile = "47-shaolwatha", x = 72.00, y = 52.00, radius = 50, faction = "neutral"},
        {subZone = "Valorwind Lake", zoneName = "Hinterlands", audioFile = "47-valorwind", x = 40.00, y = 60.00, radius = 50, faction = "neutral"},
        {subZone = "Quel'Danil Lodge", zoneName = "Hinterlands", audioFile = "47-queldanil", x = 31.00, y = 48.00, radius = 50, faction = "alliance"},
        {subZone = "The Altar of Zul", zoneName = "Hinterlands", audioFile = "47-altarofzul", x = 49.00, y = 68.00, radius = 50, faction = "neutral"},
        {subZone = "The Overlook Cliffs", zoneName = "Hinterlands", audioFile = "47-overlookcliffs", x = 82.00, y = 48.00, radius = 50, faction = "neutral"},
    },
    
    -- Feralas (Zone ID: 357)
    [357] = {
        {zoneName = "Feralas", audioFile = "357-zone", radius = 50, faction = "neutral"},
        {subZone = "Feathermoon Stronghold", zoneName = "Feralas", audioFile = "357-feathermoon", x = 31.00, y = 43.00, radius = 50, faction = "alliance"},
        {subZone = "Camp Mojache", zoneName = "Feralas", audioFile = "357-mojache", x = 75.00, y = 44.00, radius = 50, faction = "horde"},
        {subZone = "Dire Maul", zoneName = "Feralas", audioFile = "357-diremaul", x = 59.00, y = 45.00, radius = 50, faction = "neutral"},
        {subZone = "The Twin Colossals", zoneName = "Feralas", audioFile = "357-twincolossals", x = 46.00, y = 18.00, radius = 50, faction = "neutral"},
        {subZone = "Ruins of Isildien", zoneName = "Feralas", audioFile = "357-isildien", x = 60.00, y = 64.00, radius = 50, faction = "neutral"},
        {subZone = "Ruins of Ravenwind", zoneName = "Feralas", audioFile = "357-ravenwind", x = 53.00, y = 32.00, radius = 50, faction = "neutral"},
        {subZone = "The Forgotten Coast", zoneName = "Feralas", audioFile = "357-forgottencoast", x = 45.00, y = 55.00, radius = 50, faction = "neutral"},
        {subZone = "Gordunni Outpost", zoneName = "Feralas", audioFile = "357-gordunni", x = 75.00, y = 30.00, radius = 50, faction = "neutral"},
        {subZone = "Camp Mojache", zoneName = "Feralas", audioFile = "357-mojache", x = 75.00, y = 44.00, radius = 50, faction = "horde"},
        {subZone = "Frayfeather Highlands", zoneName = "Feralas", audioFile = "357-frayfeather", x = 55.00, y = 56.00, radius = 50, faction = "neutral"},
        {subZone = "Grimtotem Compound", zoneName = "Feralas", audioFile = "357-grimtotemcompound", x = 66.00, y = 47.00, radius = 50, faction = "neutral"},
        {subZone = "Dream Bough", zoneName = "Feralas", audioFile = "357-dreambough", x = 51.00, y = 10.00, radius = 50, faction = "neutral"},
    },
    
    -- Tanaris (Zone ID: 440)
    [440] = {
        {zoneName = "Tanaris", audioFile = "440-zone", radius = 50, faction = "neutral"},
        {subZone = "Gadgetzan", zoneName = "Tanaris", audioFile = "440-gadgetzan", x = 52.00, y = 27.00, radius = 50, faction = "neutral"},
        {subZone = "Caverns of Time", zoneName = "Tanaris", audioFile = "440-cavernstime", x = 65.00, y = 49.00, radius = 50, faction = "neutral"},
        {subZone = "Zul'Farrak", zoneName = "Tanaris", audioFile = "440-zulfarrak", x = 39.00, y = 21.00, radius = 50, faction = "neutral"},
        {subZone = "Steamwheedle Port", zoneName = "Tanaris", audioFile = "440-steamwheedle", x = 67.00, y = 23.00, radius = 50, faction = "neutral"},
        {subZone = "Sandfury Grounds", zoneName = "Tanaris", audioFile = "440-sandfury", x = 40.00, y = 57.00, radius = 50, faction = "neutral"},
        {subZone = "Dunemaul Compound", zoneName = "Tanaris", audioFile = "440-dunemaul", x = 40.00, y = 72.00, radius = 50, faction = "neutral"},
        {subZone = "Eastmoon Ruins", zoneName = "Tanaris", audioFile = "440-eastmoon", x = 47.00, y = 65.00, radius = 50, faction = "neutral"},
        {subZone = "Southmoon Ruins", zoneName = "Tanaris", audioFile = "440-southmoon", x = 38.00, y = 79.00, radius = 50, faction = "neutral"},
        {subZone = "Broken Pillar", zoneName = "Tanaris", audioFile = "440-brokenpillar", x = 52.00, y = 45.00, radius = 50, faction = "neutral"},
        {subZone = "The Noxious Lair", zoneName = "Tanaris", audioFile = "440-noxiouslair", x = 35.00, y = 46.00, radius = 50, faction = "neutral"},
        {subZone = "The Gaping Chasm", zoneName = "Tanaris", audioFile = "440-gapingchasm", x = 56.00, y = 71.00, radius = 50, faction = "neutral"},
        {subZone = "Thistleshrub Valley", zoneName = "Tanaris", audioFile = "440-thistleshrub", x = 28.00, y = 65.00, radius = 50, faction = "neutral"},
        {subZone = "Land's End Beach", zoneName = "Tanaris", audioFile = "440-landsend", x = 66.00, y = 72.00, radius = 50, faction = "neutral"},
        {subZone = "Lost Rigger Cove", zoneName = "Tanaris", audioFile = "440-lostriggercove", x = 73.00, y = 47.00, radius = 50, faction = "neutral"},
    },

    -- Searing Gorge (Zone ID: 51)
    [51] = {
        {zoneName = "Searing Gorge", audioFile = "51-zone", radius = 50, faction = "neutral"},
        {subZone = "Thorium Point", zoneName = "Searing Gorge", audioFile = "51-thoriumpoint", x = 38.00, y = 27.00, radius = 50, faction = "neutral"},
        {subZone = "Cauldron", zoneName = "Searing Gorge", audioFile = "51-cauldron", x = 50.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Firewatch Ridge", zoneName = "Searing Gorge", audioFile = "51-firewatch", x = 25.00, y = 35.00, radius = 50, faction = "neutral"},
        {subZone = "Grimesilt Dig Site", zoneName = "Searing Gorge", audioFile = "51-grimesilt", x = 42.00, y = 35.00, radius = 50, faction = "neutral"},
        {subZone = "The Slag Pit", zoneName = "Searing Gorge", audioFile = "51-slagpit", x = 63.00, y = 62.00, radius = 50, faction = "neutral"},
        {subZone = "Dustfire Valley", zoneName = "Searing Gorge", audioFile = "51-dustfire", x = 72.00, y = 28.00, radius = 50, faction = "neutral"},
        {subZone = "Blackrock Mountain", zoneName = "Searing Gorge", audioFile = "51-blackrockmtn", x = 34.00, y = 84.00, radius = 50, faction = "neutral"},
        {subZone = "The Sea of Cinders", zoneName = "Searing Gorge", audioFile = "51-seaofcinders", x = 55.00, y = 40.00, radius = 50, faction = "neutral"},
    },
    
    -- Burning Steppes (Zone ID: 46)
    [46] = {
        {zoneName = "Burning Steppes", audioFile = "46-zone", radius = 50, faction = "neutral"},
        {subZone = "Morgan's Vigil", zoneName = "Burning Steppes", audioFile = "46-morgansvigil", x = 85.00, y = 68.00, radius = 50, faction = "alliance"},
        {subZone = "Flame Crest", zoneName = "Burning Steppes", audioFile = "46-flamecrest", x = 54.00, y = 24.00, radius = 50, faction = "horde"},
        {subZone = "Blackrock Stronghold", zoneName = "Burning Steppes", audioFile = "46-blackrockstronghold", x = 35.00, y = 52.00, radius = 50, faction = "neutral"},
        {subZone = "Blackrock Mountain", zoneName = "Burning Steppes", audioFile = "46-blackrockmtn", x = 29.00, y = 38.00, radius = 50, faction = "neutral"},
        {subZone = "Dreadmaul Rock", zoneName = "Burning Steppes", audioFile = "46-dreadmaul", x = 75.00, y = 42.00, radius = 50, faction = "neutral"},
        {subZone = "Altar of Storms", zoneName = "Burning Steppes", audioFile = "46-altarofstorms", x = 81.00, y = 47.00, radius = 50, faction = "neutral"},
        {subZone = "Ruins of Thaurissan", zoneName = "Burning Steppes", audioFile = "46-thaurissan", x = 60.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Terror Wing Path", zoneName = "Burning Steppes", audioFile = "46-terrorwing", x = 55.00, y = 35.00, radius = 50, faction = "neutral"},
        {subZone = "Draco'dar", zoneName = "Burning Steppes", audioFile = "46-dracodar", x = 45.00, y = 25.00, radius = 50, faction = "neutral"},
        {subZone = "Pillar of Ash", zoneName = "Burning Steppes", audioFile = "46-pillarofash", x = 62.00, y = 40.00, radius = 50, faction = "neutral"},
    },
    
    -- Felwood (Zone ID: 361)
    [361] = {
        {zoneName = "Felwood", audioFile = "361-zone", radius = 50, faction = "neutral"},
        {subZone = "Talonbranch Glade", zoneName = "Felwood", audioFile = "361-talonbranch", x = 62.00, y = 24.00, radius = 50, faction = "alliance"},
        {subZone = "Bloodvenom Post", zoneName = "Felwood", audioFile = "361-bloodvenom", x = 34.00, y = 52.00, radius = 50, faction = "horde"},
        {subZone = "Emerald Sanctuary", zoneName = "Felwood", audioFile = "361-emeraldsanctuary", x = 51.00, y = 82.00, radius = 50, faction = "neutral"},
        {subZone = "Jaedenar", zoneName = "Felwood", audioFile = "361-jaedenar", x = 35.00, y = 60.00, radius = 50, faction = "neutral"},
        {subZone = "Shadow Hold", zoneName = "Felwood", audioFile = "361-shadowhold", x = 35.00, y = 58.00, radius = 50, faction = "neutral"},
        {subZone = "Irontree Woods", zoneName = "Felwood", audioFile = "361-irontree", x = 49.00, y = 30.00, radius = 50, faction = "neutral"},
        {subZone = "Shatter Scar Vale", zoneName = "Felwood", audioFile = "361-shatterscar", x = 42.00, y = 42.00, radius = 50, faction = "neutral"},
        {subZone = "Deadwood Village", zoneName = "Felwood", audioFile = "361-deadwood", x = 48.00, y = 94.00, radius = 50, faction = "neutral"},
        {subZone = "Felpaw Village", zoneName = "Felwood", audioFile = "361-felpaw", x = 62.00, y = 10.00, radius = 50, faction = "neutral"},
        {subZone = "Timbermaw Hold", zoneName = "Felwood", audioFile = "361-timbermaw", x = 64.00, y = 8.00, radius = 50, faction = "neutral"},
        {subZone = "Morlos'Aran", zoneName = "Felwood", audioFile = "361-morlosaran", x = 54.00, y = 87.00, radius = 50, faction = "neutral"},
        {subZone = "Ruins of Constellas", zoneName = "Felwood", audioFile = "361-constellas", x = 38.00, y = 70.00, radius = 50, faction = "neutral"},
        {subZone = "Bloodvenom Falls", zoneName = "Felwood", audioFile = "361-bloodvenomfalls", x = 40.00, y = 48.00, radius = 50, faction = "neutral"},
    },
    
    -- Un'Goro Crater (Zone ID: 490)
    [490] = {
        {zoneName = "Un'Goro Crater", audioFile = "490-zone", radius = 50, faction = "neutral"},
        {subZone = "Marshal's Refuge", zoneName = "Un'Goro Crater", audioFile = "490-marshalsrefuge", x = 43.00, y = 8.00, radius = 50, faction = "neutral"},
        {subZone = "Fire Plume Ridge", zoneName = "Un'Goro Crater", audioFile = "490-fireplume", x = 50.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "The Slithering Scar", zoneName = "Un'Goro Crater", audioFile = "490-slitheringscar", x = 50.00, y = 78.00, radius = 50, faction = "neutral"},
        {subZone = "Terror Run", zoneName = "Un'Goro Crater", audioFile = "490-terrorrun", x = 33.00, y = 72.00, radius = 50, faction = "neutral"},
        {subZone = "The Marshlands", zoneName = "Un'Goro Crater", audioFile = "490-marshlands", x = 68.00, y = 18.00, radius = 50, faction = "neutral"},
        {subZone = "Golakka Hot Springs", zoneName = "Un'Goro Crater", audioFile = "490-golakka", x = 31.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Lakkari Tar Pits", zoneName = "Un'Goro Crater", audioFile = "490-lakkari", x = 45.00, y = 25.00, radius = 50, faction = "neutral"},
        {subZone = "Fungal Rock", zoneName = "Un'Goro Crater", audioFile = "490-fungalrock", x = 63.00, y = 12.00, radius = 50, faction = "neutral"},
        {subZone = "Northern Crystal Pylon", zoneName = "Un'Goro Crater", audioFile = "490-northpylon", x = 56.00, y = 12.00, radius = 50, faction = "neutral"},
        {subZone = "Eastern Crystal Pylon", zoneName = "Un'Goro Crater", audioFile = "490-eastpylon", x = 77.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Western Crystal Pylon", zoneName = "Un'Goro Crater", audioFile = "490-westpylon", x = 23.00, y = 59.00, radius = 50, faction = "neutral"},
        {subZone = "The Screaming Reaches", zoneName = "Un'Goro Crater", audioFile = "490-screamingreaches", x = 70.00, y = 78.00, radius = 50, faction = "neutral"},
    },
    
    -- Azshara (Zone ID: 16)
    [16] = {
        {zoneName = "Azshara", audioFile = "16-zone", radius = 50, faction = "neutral"},
        {subZone = "Talrendis Point", zoneName = "Azshara", audioFile = "16-talrendis", x = 11.00, y = 78.00, radius = 50, faction = "alliance"},
        {subZone = "Valormok", zoneName = "Azshara", audioFile = "16-valormok", x = 22.00, y = 51.00, radius = 50, faction = "horde"},
        {subZone = "Ruins of Eldarath", zoneName = "Azshara", audioFile = "16-eldarath", x = 35.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Temple of Zin-Malor", zoneName = "Azshara", audioFile = "16-zinmalor", x = 42.00, y = 43.00, radius = 50, faction = "neutral"},
        {subZone = "Ravencrest Monument", zoneName = "Azshara", audioFile = "16-ravencrest", x = 65.00, y = 20.00, radius = 50, faction = "neutral"},
        {subZone = "Forlorn Ridge", zoneName = "Azshara", audioFile = "16-forlornridge", x = 55.00, y = 30.00, radius = 50, faction = "neutral"},
        {subZone = "Timbermaw Hold", zoneName = "Azshara", audioFile = "16-timbermawhold", x = 10.00, y = 22.00, radius = 50, faction = "neutral"},
        {subZone = "Shadowsong Shrine", zoneName = "Azshara", audioFile = "16-shadowsong", x = 28.00, y = 62.00, radius = 50, faction = "neutral"},
        {subZone = "The Shattered Strand", zoneName = "Azshara", audioFile = "16-shatteredstrand", x = 45.00, y = 75.00, radius = 50, faction = "neutral"},
        {subZone = "Bay of Storms", zoneName = "Azshara", audioFile = "16-bayofstorms", x = 55.00, y = 70.00, radius = 50, faction = "neutral"},
        {subZone = "Hetaera's Clutch", zoneName = "Azshara", audioFile = "16-hetaera", x = 60.00, y = 50.00, radius = 50, faction = "neutral"},
        {subZone = "Bitter Reaches", zoneName = "Azshara", audioFile = "16-bitterreaches", x = 80.00, y = 35.00, radius = 50, faction = "neutral"},
        {subZone = "Tower of Eldara", zoneName = "Azshara", audioFile = "16-eldara", x = 58.00, y = 22.00, radius = 50, faction = "neutral"},
    },

    -- Western Plaguelands (Zone ID: 28)
    [28] = {
        {zoneName = "Western Plaguelands", audioFile = "28-zone", radius = 50, faction = "neutral"},
        {subZone = "Chillwind Camp", zoneName = "Western Plaguelands", audioFile = "28-chillwind", x = 43.00, y = 84.00, radius = 50, faction = "alliance"},
        {subZone = "Andorhal", zoneName = "Western Plaguelands", audioFile = "28-andorhal", x = 45.00, y = 67.00, radius = 50, faction = "neutral"},
        {subZone = "Scholomance", zoneName = "Western Plaguelands", audioFile = "28-scholomance", x = 69.00, y = 73.00, radius = 50, faction = "neutral"},
        {subZone = "Caer Darrow", zoneName = "Western Plaguelands", audioFile = "28-caerdarrow", x = 70.00, y = 73.00, radius = 50, faction = "neutral"},
        {subZone = "Hearthglen", zoneName = "Western Plaguelands", audioFile = "28-hearthglen", x = 45.00, y = 18.00, radius = 50, faction = "neutral"},
        {subZone = "The Bulwark", zoneName = "Western Plaguelands", audioFile = "28-bulwark", x = 83.00, y = 69.00, radius = 50, faction = "horde"},
        {subZone = "Sorrow Hill", zoneName = "Western Plaguelands", audioFile = "28-sorrowhill", x = 55.00, y = 85.00, radius = 50, faction = "neutral"},
        {subZone = "Felstone Field", zoneName = "Western Plaguelands", audioFile = "28-felstone", x = 37.00, y = 56.00, radius = 50, faction = "neutral"},
        {subZone = "Dalson's Tears", zoneName = "Western Plaguelands", audioFile = "28-dalsons", x = 46.00, y = 52.00, radius = 50, faction = "neutral"},
        {subZone = "The Writhing Haunt", zoneName = "Western Plaguelands", audioFile = "28-writhinghaunt", x = 53.00, y = 65.00, radius = 50, faction = "neutral"},
        {subZone = "Gahrron's Withering", zoneName = "Western Plaguelands", audioFile = "28-gahrrons", x = 62.00, y = 58.00, radius = 50, faction = "neutral"},
        {subZone = "Northridge Lumber Camp", zoneName = "Western Plaguelands", audioFile = "28-northridge", x = 48.00, y = 32.00, radius = 50, faction = "neutral"},
        {subZone = "Ruins of Lordaeron", zoneName = "Western Plaguelands", audioFile = "28-lordaeron", x = 45.00, y = 42.00, radius = 50, faction = "neutral"},
    },
    
    -- Eastern Plaguelands (Zone ID: 139)
    [139] = {
        {zoneName = "Eastern Plaguelands", audioFile = "139-zone", radius = 50, faction = "neutral"},
        {subZone = "Light's Hope Chapel", zoneName = "Eastern Plaguelands", audioFile = "139-lightshope", x = 81.00, y = 58.00, radius = 50, faction = "neutral"},
        {subZone = "Stratholme", zoneName = "Eastern Plaguelands", audioFile = "139-stratholme", x = 27.00, y = 12.00, radius = 50, faction = "neutral"},
        {subZone = "Naxxramas", zoneName = "Eastern Plaguelands", audioFile = "139-naxxramas", x = 39.00, y = 26.00, radius = 50, faction = "neutral"},
        {subZone = "Tyr's Hand", zoneName = "Eastern Plaguelands", audioFile = "139-tyrshand", x = 75.00, y = 75.00, radius = 50, faction = "neutral"},
        {subZone = "Darrowshire", zoneName = "Eastern Plaguelands", audioFile = "139-darrowshire", x = 35.00, y = 84.00, radius = 50, faction = "neutral"},
        {subZone = "Corin's Crossing", zoneName = "Eastern Plaguelands", audioFile = "139-corinscrossing", x = 55.00, y = 65.00, radius = 50, faction = "neutral"},
        {subZone = "The Marris Stead", zoneName = "Eastern Plaguelands", audioFile = "139-marrisstead", x = 22.00, y = 68.00, radius = 50, faction = "neutral"},
        {subZone = "Crown Guard Tower", zoneName = "Eastern Plaguelands", audioFile = "139-crownguard", x = 35.00, y = 68.00, radius = 50, faction = "neutral"},
        {subZone = "Eastwall Tower", zoneName = "Eastern Plaguelands", audioFile = "139-eastwall", x = 61.00, y = 43.00, radius = 50, faction = "neutral"},
        {subZone = "Northpass Tower", zoneName = "Eastern Plaguelands", audioFile = "139-northpass", x = 51.00, y = 21.00, radius = 50, faction = "neutral"},
        {subZone = "Plaguewood", zoneName = "Eastern Plaguelands", audioFile = "139-plaguewood", x = 28.00, y = 25.00, radius = 50, faction = "neutral"},
        {subZone = "The Fungal Vale", zoneName = "Eastern Plaguelands", audioFile = "139-fungalvale", x = 34.00, y = 48.00, radius = 50, faction = "neutral"},
        {subZone = "Terrordale", zoneName = "Eastern Plaguelands", audioFile = "139-terrordale", x = 18.00, y = 28.00, radius = 50, faction = "neutral"},
        {subZone = "The Noxious Glade", zoneName = "Eastern Plaguelands", audioFile = "139-noxiousglade", x = 78.00, y = 35.00, radius = 50, faction = "neutral"},
        {subZone = "Blackwood Lake", zoneName = "Eastern Plaguelands", audioFile = "139-blackwoodlake", x = 47.00, y = 44.00, radius = 50, faction = "neutral"},
        {subZone = "Quel'Lithien Lodge", zoneName = "Eastern Plaguelands", audioFile = "139-quellithien", x = 48.00, y = 13.00, radius = 50, faction = "neutral"},
    },
    
    -- Winterspring (Zone ID: 618)
    [618] = {
        {zoneName = "Winterspring", audioFile = "618-zone", radius = 50, faction = "neutral"},
        {subZone = "Everlook", zoneName = "Winterspring", audioFile = "618-everlook", x = 61.00, y = 38.00, radius = 50, faction = "neutral"},
        {subZone = "Starfall Village", zoneName = "Winterspring", audioFile = "618-starfall", x = 49.00, y = 38.00, radius = 50, faction = "alliance"},
        {subZone = "Mazthoril", zoneName = "Winterspring", audioFile = "618-mazthoril", x = 59.00, y = 75.00, radius = 50, faction = "neutral"},
        {subZone = "Frostsaber Rock", zoneName = "Winterspring", audioFile = "618-frostsaber", x = 50.00, y = 18.00, radius = 50, faction = "neutral"},
        {subZone = "Winterfall Village", zoneName = "Winterspring", audioFile = "618-winterfall", x = 68.00, y = 36.00, radius = 50, faction = "neutral"},
        {subZone = "Timbermaw Post", zoneName = "Winterspring", audioFile = "618-timbermawpost", x = 36.00, y = 56.00, radius = 50, faction = "neutral"},
        {subZone = "Frostwhisper Gorge", zoneName = "Winterspring", audioFile = "618-frostwhisper", x = 60.00, y = 82.00, radius = 50, faction = "neutral"},
        {subZone = "Ice Thistle Hills", zoneName = "Winterspring", audioFile = "618-icethistle", x = 67.00, y = 55.00, radius = 50, faction = "neutral"},
        {subZone = "Owl Wing Thicket", zoneName = "Winterspring", audioFile = "618-owlwing", x = 65.00, y = 45.00, radius = 50, faction = "neutral"},
        {subZone = "Lake Kel'Theril", zoneName = "Winterspring", audioFile = "618-keltheril", x = 53.00, y = 56.00, radius = 50, faction = "neutral"},
        {subZone = "Darkwhisper Gorge", zoneName = "Winterspring", audioFile = "618-darkwhisper", x = 60.00, y = 90.00, radius = 50, faction = "neutral"},
        {subZone = "Frostfire Hot Springs", zoneName = "Winterspring", audioFile = "618-frostfire", x = 31.00, y = 45.00, radius = 50, faction = "neutral"},
    },
    
    -- Silithus (Zone ID: 1377)
    [1377] = {
        {zoneName = "Silithus", audioFile = "1377-zone", radius = 50, faction = "neutral"},
        {subZone = "Cenarion Hold", zoneName = "Silithus", audioFile = "1377-cenarionhold", x = 51.00, y = 39.00, radius = 50, faction = "neutral"},
        {subZone = "Ahn'Qiraj", zoneName = "Silithus", audioFile = "1377-ahnqiraj", x = 29.00, y = 92.00, radius = 50, faction = "neutral"},
        {subZone = "The Scarab Wall", zoneName = "Silithus", audioFile = "1377-scarabwall", x = 29.00, y = 87.00, radius = 50, faction = "neutral"},
        {subZone = "Hive'Ashi", zoneName = "Silithus", audioFile = "1377-hiveashi", x = 49.00, y = 23.00, radius = 50, faction = "neutral"},
        {subZone = "Hive'Zora", zoneName = "Silithus", audioFile = "1377-hivezora", x = 29.00, y = 52.00, radius = 50, faction = "neutral"},
        {subZone = "Hive'Regal", zoneName = "Silithus", audioFile = "1377-hiveregal", x = 60.00, y = 72.00, radius = 50, faction = "neutral"},
        {subZone = "Twilight Base Camp", zoneName = "Silithus", audioFile = "1377-twilightbase", x = 23.00, y = 15.00, radius = 50, faction = "neutral"},
        {subZone = "The Crystal Vale", zoneName = "Silithus", audioFile = "1377-crystalvale", x = 30.00, y = 18.00, radius = 50, faction = "neutral"},
        {subZone = "Southwind Village", zoneName = "Silithus", audioFile = "1377-southwind", x = 62.00, y = 52.00, radius = 50, faction = "neutral"},
        {subZone = "Valor's Rest", zoneName = "Silithus", audioFile = "1377-valorsrest", x = 80.00, y = 18.00, radius = 50, faction = "neutral"},
        {subZone = "Bronzebeard Encampment", zoneName = "Silithus", audioFile = "1377-bronzebeard", x = 52.00, y = 53.00, radius = 50, faction = "neutral"},
        {subZone = "Staghelm Point", zoneName = "Silithus", audioFile = "1377-staghelm", x = 55.00, y = 36.00, radius = 50, faction = "neutral"},
    },
    
    -- Blasted Lands (Zone ID: 4)
    [4] = {
        {zoneName = "Blasted Lands", audioFile = "4-zone", radius = 50, faction = "neutral"},
        {subZone = "Nethergarde Keep", zoneName = "Blasted Lands", audioFile = "4-nethergarde", x = 65.00, y = 24.00, radius = 50, faction = "alliance"},
        {subZone = "The Dark Portal", zoneName = "Blasted Lands", audioFile = "4-darkportal", x = 54.00, y = 54.00, radius = 50, faction = "neutral"},
        {subZone = "Dreadmaul Hold", zoneName = "Blasted Lands", audioFile = "4-dreadmaulhold", x = 42.00, y = 12.00, radius = 50, faction = "neutral"},
        {subZone = "Serpent's Coil", zoneName = "Blasted Lands", audioFile = "4-serpentscoil", x = 48.00, y = 72.00, radius = 50, faction = "neutral"},
        {subZone = "Rise of the Defiler", zoneName = "Blasted Lands", audioFile = "4-risedefiler", x = 40.00, y = 35.00, radius = 50, faction = "neutral"},
        {subZone = "The Tainted Scar", zoneName = "Blasted Lands", audioFile = "4-taintedscar", x = 35.00, y = 65.00, radius = 50, faction = "neutral"},
        {subZone = "Altar of Storms", zoneName = "Blasted Lands", audioFile = "4-altarofstorms", x = 40.00, y = 48.00, radius = 50, faction = "neutral"},
        {subZone = "Garrison Armory", zoneName = "Blasted Lands", audioFile = "4-garrisonarmory", x = 60.00, y = 18.00, radius = 50, faction = "alliance"},
        {subZone = "Dreadmaul Post", zoneName = "Blasted Lands", audioFile = "4-dreadmaulpost", x = 48.00, y = 8.00, radius = 50, faction = "neutral"},
    },
    
    -- Moonglade (Zone ID: 493)
    [493] = {
        {zoneName = "Moonglade", audioFile = "493-zone", radius = 50, faction = "neutral"},
        {subZone = "Nighthaven", zoneName = "Moonglade", audioFile = "493-nighthaven", x = 48.00, y = 40.00, radius = 50, faction = "neutral"},
        {subZone = "Shrine of Remulos", zoneName = "Moonglade", audioFile = "493-remulos", x = 36.00, y = 42.00, radius = 50, faction = "neutral"},
        {subZone = "Stormrage Barrow Dens", zoneName = "Moonglade", audioFile = "493-stormrage", x = 68.00, y = 62.00, radius = 50, faction = "neutral"},
        {subZone = "Lake Elune'ara", zoneName = "Moonglade", audioFile = "493-eluneara", x = 52.00, y = 55.00, radius = 50, faction = "neutral"},
        {subZone = "Moonglade", zoneName = "Moonglade", audioFile = "493-moongladearea", x = 50.00, y = 50.00, radius = 50, faction = "neutral"},
    },

    -- ============================================
    -- TIER 4: CAPITAL CITIES
    -- ============================================
    
    -- Stormwind City (Zone ID: 1519)
    [1519] = {
        {zoneName = "Stormwind City", audioFile = "1519-zone", radius = 50, faction = "alliance"},
        {subZone = "Valley of Heroes", zoneName = "Stormwind City", audioFile = "1519-valleyofheroes", x = 66.00, y = 72.00, radius = 50, faction = "alliance"},
        {subZone = "Trade District", zoneName = "Stormwind City", audioFile = "1519-tradedistrict", x = 62.00, y = 67.00, radius = 50, faction = "alliance"},
        {subZone = "Cathedral Square", zoneName = "Stormwind City", audioFile = "1519-cathedralsquare", x = 50.00, y = 45.00, radius = 50, faction = "alliance"},
        {subZone = "Cathedral of Light", zoneName = "Stormwind City", audioFile = "1519-cathedraloflight", x = 50.00, y = 44.00, radius = 50, faction = "alliance"},
        {subZone = "Old Town", zoneName = "Stormwind City", audioFile = "1519-oldtown", x = 73.00, y = 55.00, radius = 50, faction = "alliance"},
        {subZone = "SI:7 Headquarters", zoneName = "Stormwind City", audioFile = "1519-si7", x = 75.00, y = 59.00, radius = 50, faction = "alliance"},
        {subZone = "Dwarven District", zoneName = "Stormwind City", audioFile = "1519-dwarvendistrict", x = 63.00, y = 33.00, radius = 50, faction = "alliance"},
        {subZone = "Deeprun Tram", zoneName = "Stormwind City", audioFile = "1519-deepruntram", x = 66.00, y = 34.00, radius = 50, faction = "alliance"},
        {subZone = "The Park", zoneName = "Stormwind City", audioFile = "1519-thepark", x = 28.00, y = 62.00, radius = 50, faction = "alliance"},
        {subZone = "Mage Quarter", zoneName = "Stormwind City", audioFile = "1519-magequarter", x = 43.00, y = 80.00, radius = 50, faction = "alliance"},
        {subZone = "Wizard's Sanctum", zoneName = "Stormwind City", audioFile = "1519-wizardssanctum", x = 37.00, y = 81.00, radius = 50, faction = "alliance"},
        {subZone = "The Stockade", zoneName = "Stormwind City", audioFile = "1519-stockade", x = 50.00, y = 66.00, radius = 50, faction = "alliance"},
        {subZone = "Stormwind Keep", zoneName = "Stormwind City", audioFile = "1519-stormwindkeep", x = 78.00, y = 18.00, radius = 50, faction = "alliance"},
        {subZone = "Throne Room", zoneName = "Stormwind City", audioFile = "1519-throneroom", x = 78.00, y = 17.00, radius = 50, faction = "alliance"},
        {subZone = "Royal Library", zoneName = "Stormwind City", audioFile = "1519-royallibrary", x = 74.00, y = 12.00, radius = 50, faction = "alliance"},
        {subZone = "Stormwind Harbor", zoneName = "Stormwind City", audioFile = "1519-stormwindharbor", x = 22.00, y = 56.00, radius = 50, faction = "alliance"},
        {subZone = "The Canals", zoneName = "Stormwind City", audioFile = "1519-canals", x = 55.00, y = 55.00, radius = 50, faction = "alliance"},
        {subZone = "Petitioner's Chamber", zoneName = "Stormwind City", audioFile = "1519-petitionerschamber", x = 80.00, y = 20.00, radius = 50, faction = "alliance"},
    },
    
    -- Ironforge (Zone ID: 1537)
    [1537] = {
        {zoneName = "Ironforge", audioFile = "1537-zone", radius = 50, faction = "alliance"},
        {subZone = "Gates of Ironforge", zoneName = "Ironforge", audioFile = "1537-gates", x = 77.00, y = 50.00, radius = 50, faction = "alliance"},
        {subZone = "The Commons", zoneName = "Ironforge", audioFile = "1537-commons", x = 35.00, y = 40.00, radius = 50, faction = "alliance"},
        {subZone = "The Great Forge", zoneName = "Ironforge", audioFile = "1537-greatforge", x = 50.00, y = 50.00, radius = 50, faction = "alliance"},
        {subZone = "The Military Ward", zoneName = "Ironforge", audioFile = "1537-militaryward", x = 70.00, y = 85.00, radius = 50, faction = "alliance"},
        {subZone = "Hall of Arms", zoneName = "Ironforge", audioFile = "1537-hallofarms", x = 70.00, y = 90.00, radius = 50, faction = "alliance"},
        {subZone = "The Mystic Ward", zoneName = "Ironforge", audioFile = "1537-mysticward", x = 27.00, y = 83.00, radius = 50, faction = "alliance"},
        {subZone = "Hall of Mysteries", zoneName = "Ironforge", audioFile = "1537-hallofmysteries", x = 27.00, y = 85.00, radius = 50, faction = "alliance"},
        {subZone = "The Forlorn Cavern", zoneName = "Ironforge", audioFile = "1537-forlorncavern", x = 50.00, y = 18.00, radius = 50, faction = "alliance"},
        {subZone = "Tinker Town", zoneName = "Ironforge", audioFile = "1537-tinkertown", x = 69.00, y = 50.00, radius = 50, faction = "alliance"},
        {subZone = "Deeprun Tram", zoneName = "Ironforge", audioFile = "1537-deepruntram", x = 76.00, y = 51.00, radius = 50, faction = "alliance"},
        {subZone = "The High Seat", zoneName = "Ironforge", audioFile = "1537-highseat", x = 39.00, y = 56.00, radius = 50, faction = "alliance"},
        {subZone = "Hall of Explorers", zoneName = "Ironforge", audioFile = "1537-hallofexplorers", x = 75.00, y = 12.00, radius = 50, faction = "alliance"},
        {subZone = "The Library", zoneName = "Ironforge", audioFile = "1537-library", x = 74.00, y = 10.00, radius = 50, faction = "alliance"},
        {subZone = "Ironforge Airfield", zoneName = "Ironforge", audioFile = "1537-airfield", x = 55.00, y = 48.00, radius = 50, faction = "alliance"},
        {subZone = "Old Ironforge", zoneName = "Ironforge", audioFile = "1537-oldironforge", x = 33.00, y = 40.00, radius = 50, faction = "alliance"},
    },
    
    -- Darnassus (Zone ID: 1657)
    [1657] = {
        {zoneName = "Darnassus", audioFile = "1657-zone", radius = 50, faction = "alliance"},
        {subZone = "Warrior's Terrace", zoneName = "Darnassus", audioFile = "1657-warriorsterrace", x = 57.00, y = 34.00, radius = 50, faction = "alliance"},
        {subZone = "Cenarion Enclave", zoneName = "Darnassus", audioFile = "1657-cenarionenclave", x = 35.00, y = 8.00, radius = 50, faction = "alliance"},
        {subZone = "Temple of the Moon", zoneName = "Darnassus", audioFile = "1657-templeofthemoon", x = 43.00, y = 78.00, radius = 50, faction = "alliance"},
        {subZone = "Temple Gardens", zoneName = "Darnassus", audioFile = "1657-templegardens", x = 44.00, y = 85.00, radius = 50, faction = "alliance"},
        {subZone = "Craftsmen's Terrace", zoneName = "Darnassus", audioFile = "1657-craftsmensterrace", x = 60.00, y = 58.00, radius = 50, faction = "alliance"},
        {subZone = "Tradesmen's Terrace", zoneName = "Darnassus", audioFile = "1657-tradesmensterrace", x = 55.00, y = 68.00, radius = 50, faction = "alliance"},
        {subZone = "The Howling Oak", zoneName = "Darnassus", audioFile = "1657-howlingoak", x = 48.00, y = 15.00, radius = 50, faction = "alliance"},
        {subZone = "Rut'theran Village", zoneName = "Darnassus", audioFile = "1657-ruttheran", x = 55.00, y = 88.00, radius = 50, faction = "alliance"},
        {subZone = "Bank of Darnassus", zoneName = "Darnassus", audioFile = "1657-bank", x = 54.00, y = 67.00, radius = 50, faction = "alliance"},
        {subZone = "Darnassus Auction House", zoneName = "Darnassus", audioFile = "1657-auctionhouse", x = 55.00, y = 64.00, radius = 50, faction = "alliance"},
        {subZone = "Moonwell", zoneName = "Darnassus", audioFile = "1657-moonwell", x = 38.00, y = 85.00, radius = 50, faction = "alliance"},
        {subZone = "Arch Druid's Residence", zoneName = "Darnassus", audioFile = "1657-archdruid", x = 35.00, y = 10.00, radius = 50, faction = "alliance"},
    },

}

-- Note: Audio files are in AI_LoreTellerData_Vanilla/generated/sounds/zonelore/
-- The AI_LoreTellerData_Vanilla module handles GetSoundPath for zone lore
