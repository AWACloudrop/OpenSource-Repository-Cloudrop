class "SpellDB" 
function SpellDB:__init() 
self.Heros = { 

--[[

 _ _              _ _
( | )            ( | )
 V V __ _  ___ ___V V
    / _` |/ __/ _ \
   | (_| | (_|  __/  _
    \__,_|\___\___| ( )
                    |/   

]]

['ace'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Ace1",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['manacost'] = { [1] = 65,[2] = 70,[3] = 75,[4] = 80, },
		['cooldowntime'] = "6000",
		['actiontype'] = "target_self",
		['targetradius'] = "350",
		['queue'] = "front",
		['inheritmovement'] = "true",
        },

	['ability_02'] = {
		['name'] = "Ability_Ace2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "300",
		['targetscheme'] = "enemy_units",
		['activatescheme'] = "movement",
		['manacost'] = "100",
		['cooldowntime'] = { [1] = 18000,[2] = 16000,[3] = 14000,[4] = 12000, },
		['novoiceresponse'] = "true",
		['queue'] = "dropmovement",
		['range'] = "600",
		['showareacast'] = "true",
		['hoverareacastrange'] = "600",
		['allowoutofrangecast'] = "true",
		['disabled'] = "true",

		['ace_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Ace_Ability2",
			['gravity'] = "5000",
			['lifetime'] = "750",
			['useexactlifetime'] = "true",
			['modelscale'] = "1.0",
			['model'] = "",
			['canturn'] = "false",
			['flying'] = "false",
			['flyheight'] = "0",
			['touchprojectileblockers'] = "true",
			['touchradius'] = "1",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "Nothing",
			['radius'] = "300",
			['targetselection'] = "all",
			['targetscheme'] = "enemy_units",
			['radius'] = "300",
			['targetselection'] = "all",
			['targetscheme'] = "enemy_units",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Ace3",
		['icon'] = "icon.tga",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['anim'] = "ability_3",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['manacost'] = "50",
		['cooldowntime'] = "12000",
		['queue'] = "front",
		['inheritmovement'] = "true",
		['alwaysshowtimer'] = "true",

		['ace_Projectile_ability_03_1'] = { 

			['name'] = "Projectile_Ace_Ability3_Damage",
			['speed'] = "1800",
			['modelscale'] = "1",
			['pitch'] = "90",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "80",
		},

		['ace_Projectile_ability_03_2'] = { 

			['name'] = "Projectile_Ace_Ability3_Orbit",
			['speed'] = "1000",
			['modelscale'] = "1" ,
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "80",
			['orbitclockwise'] = "true",
			['orbit'] = "true",
			['orbitradius'] = "100",
			['orbitspeed'] = "250",
			['orbitmaxspeed'] = "250",
			['orbitmaxtouchespertarget'] = "1",
			['orbitmodelangles'] = "0",
			['lifetime'] = "5000",
			['inheritvisibilityfromtarget'] = "true",
		},
        },

	['ability_04'] = {
		['name'] = "Ability_Ace4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "800",
		['castactiontime'] = "300",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 100,[2] = 115,[3] = 130, },
		['cooldowntime'] = "60000",
		['novoiceresponse'] = "true",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['range'] = "200",
		['showareacast'] = "true",
		['hoverareacastrange'] = "200",
		['radius'] = "600",
		['targetselection'] = "closest",
		['targetscheme'] = "visible_enemy_heroes",
		['maxtotalimpacts'] = "1",
		['disabled'] = "true",
        },

}, 


--[[

 _ _ _                     _ _ _       _ _
( | ) |                   | (_) |     ( | )
 V V| |__   __ _ _ __   __| |_| |_ ___ V V
    | '_ \ / _` | '_ \ / _` | | __/ _ \
    | |_) | (_| | | | | (_| | | || (_) |  _
    |_.__/ \__,_|_| |_|\__,_|_|\__\___/  ( )
                                         |/
                                                

]]

['bandito'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Bandito1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "300",
		['castactiontime'] = "200",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 75,[2] = 80,[3] = 85,[4] = 90, },
		['cooldowntime'] = "7000",
		['queue'] = "front",
		['inheritmovement'] = "true",
		['allowoutofrangecast'] = "true",
		['allowoutofboundscast'] = "true",
		['range'] = "700",
		['forcerange'] = "700",
		['showlinecast'] = "true",
		['linecastwidth'] = "90",
		['linecastrange'] = "790",
		['hoverareacastrange'] = "790",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['radius'] = "650",
		['targetselection'] = "closest",
		['targetscheme'] = "visible_enemy_heroes",
		['maxtotalimpacts'] = "1",

		['bandito_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Bandito_Ability1",
			['speed'] = "1600",
			['gravity'] = "0",
			['flying'] = "true",
			['flyheight'] = "100",
			['touchradius'] = "90",
			['touchcliffs'] = "false",
			['touchpropradius'] = "90",
			['touchpropanim'] = "hit",
			['hazardradius'] = "120",
			['hazardoffset'] = "210",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['lifetime'] = "7000",
		},

		['bandito_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Bandito_Ability1_Rebound",
			['gravity'] = "5000",
			['lifetime'] = "900",
			['useexactlifetime'] = "true",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Bandito2",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['manacost'] = { [1] = 80,[2] = 85,[3] = 90,[4] = 95, },
		['cooldowntime'] = "6000",
		['anim'] = "ability_2",
		['casttime'] = "150",
		['castactiontime'] = "150",
		['actiontype'] = "target_self",
		['targetradius'] = "600",
		['radius'] = "600",
		['targetselection'] = "all",
		['targetscheme'] = "enemy_units",

		['bandito_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Bandito_Ability2",
			['speed'] = "2000",
			['curve'] = "-12000",
			['flying'] = "true",
			['flyheight'] = "100",
			['modelscale'] = "0.6",
			['canturn'] = "true",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Bandito3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "500",
		['castactiontime'] = "300",
		['showareacast'] = "true",
		['hoverareacastrange'] = "550",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "ally_units",
		['manacost'] = { [1] = 80,[2] = 85,[3] = 90,[4] = 95, },
		['cooldowntime'] = "10000",
		['range'] = "550",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['radius'] = "650",
		['targetselection'] = "closest",
		['targetscheme'] = "ally_heroes",
		['maxtotalimpacts'] = "1",
        },

	['ability_04'] = {
		['name'] = "Ability_Bandito4",
		['icon'] = "icon.tga",
		['actiontype'] = "target_self",
		['cooldowntime'] = "60000",
		['anim'] = "ability_4",
		['casttime'] = "250",
		['castactiontime'] = "250",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['modifierkey'] = { [1] = Bandito_Ability4_1,[2] = Bandito_Ability4_2,[3] = Bandito_Ability4_3, },
		['alwaysshowtimer'] = "true",
		['ignorecooldown'] = "true",
		['actiontype'] = "passive",
		['icon'] = "icon_b.tga",
		['modifierkey'] = { [1] = Bandito_Ability4_1B,[2] = Bandito_Ability4_2B,[3] = Bandito_Ability4_3B, },
		['icon'] = "icon_off.tga",
		['modifierkey'] = "",
        },

}, 


--[[

 _ _ _               _   _            _ _
( | ) |             | | (_)          ( | )
 V V| |__   __ _ ___| |_ _  ___  _ __ V V
    | '_ \ / _` / __| __| |/ _ \| '_ \
    | |_) | (_| \__ \ |_| | (_) | | | |  _
    |_.__/ \__,_|___/\__|_|\___/|_| |_| ( )
                                        |/    

]]

['bastion'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Bastion1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "250",
		['castactiontime'] = "150",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "all_units",
		['showconecast'] = "true",
		['conecastwidth'] = "450",
		['conecastrange'] = "600",
		['allowoutofrangecast'] = "true",
		['manacost'] = { [1] = 70,[2] = 80,[3] = 90,[4] = 100, },
		['cooldowntime'] = "9000",
		['range'] = "550",
		['novoiceresponse'] = "true",
        },

	['ability_02'] = {
		['name'] = "Ability_Bastion2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2_up",
		['casttime'] = "450",
		['castactiontime'] = "450",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "target_position",
		['activatescheme'] = "movement",
		['manacost'] = "90",
		['range'] = "760",
		['cooldowntime'] = "16000",
		['noturntotarget'] = "false",
		['novoiceresponse'] = "true",
		['showlinecast'] = "true",
		['linecastrange'] = "-1",
		['linecastmaxrange'] = "900",
		['linecastwidth'] = "140",
		['queue'] = "dropmovement",
		['showareacast'] = "true",
		['allowoutofrangecast'] = "true",
		['usepathforrange'] = "true",

		['bastion_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Bastion_Ability2",
			['speed'] = "1400",
			['gravity'] = "0",
			['lifetime'] = "540",
			['modelscale'] = "1",
			['pathing'] = "true",
			['canturn'] = "true",
			['touchradius'] = "140",
			['hazardradius'] = "250",
			['hazardoffset'] = "130",
			['touchradiusdiradjust'] = "true",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Bastion3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "200",
		['castactiontime'] = "200",
		['showareacast'] = "true",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['targetscheme'] = "enemy_units",
		['queue'] = "front",
		['manacost'] = { [1] = 50,[2] = 55,[3] = 60,[4] = 65, },
		['cooldowntime'] = "25000",
		['maxhealth'] = { [1] = 40,[2] = 80,[3] = 120,[4] = 160, },
		['range'] = "600",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['radius'] = "600",
		['targetselection'] = "all",
		['targetscheme'] = "ally_units",
        },

	['ability_04'] = {
		['name'] = "Ability_Bastion4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['queue'] = "front",
		['inheritmovement'] = "true",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_self",
		['targetscheme'] = "self",
		['manacost'] = { [1] = 110,[2] = 125,[3] = 140, },
		['cooldowntime'] = "120000",
		['hoverareacastrange'] = "400",
		['novoiceresponse'] = "true",
		['disabled'] = "true",
        },

}, 


--[[

 _ _ _     _                   _ _
( | ) |   | |                 ( | )
 V V| |__ | | __ _ _______ _ __V V
    | '_ \| |/ _` |_  / _ \ '__|
    | |_) | | (_| |/ /  __/ |     _
    |_.__/|_|\__,_/___\___|_|    ( )
                                 |/    

]]

['blazer'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Blazer1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['inheritmovement'] = "true",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['activateimpacttime'] = "4000",
		['allowoutofrangecast'] = "true",
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 95,[2] = 100,[3] = 105,[4] = 110, },
		['cooldowntime'] = "13000",
		['noquickcast'] = "true",
		['alwaysshowtimer'] = "true",
		['noninterrupting'] = "true",
		['ignorecooldown'] = "true",
		['anim'] = "ability_1_fire",
		['icon'] = "icon2.tga",
		['casttime'] = "200",
		['castactiontime'] = "200",
		['manacost'] = "0",
		['cooldowntime'] = "0",
		['activateimpacttime'] = "0",
		['range'] = "1065",
		['forcerange'] = "1065",
		['allowoutofboundscast'] = "true" ,
		['allowoutofrangecast'] = "true",
		['showlinecast'] = "true",
		['linecastrangestart'] = "635",
		['linecastrangemid'] = "1200",
		['linecastrangeend'] = "1200",
		['linecastrangemidpos'] = "0.3",
		['linecastrangeduration'] = "4000",
		['linecastwidth'] = "135",
		['showareacast'] = "true",
		['areacastrangestart'] = "635",
		['areacastrangemid'] = "1200",
		['areacastrangeend'] = "1200",
		['areacastrangemidpos'] = "0.3",
		['areacastrangeduration'] = "4000",
		['hoverareacastrange'] = "1120",
		['noturntotarget'] = "false",

		['blazer_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Blazer_Ability1",
			['speed'] = "2000",
			['gravity'] = "0",
			['modelscale'] = "1.5",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "200",
			['hazardradius'] = "200",
			['hazardoffset'] = "50",
			['touchpropradius'] = "120",
			['touchpropanim'] = "hit",
			['touchradius'] = "140",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['touchradiusdiradjust'] = "true",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Blazer2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['targetradius'] = "325",
		['manacost'] = "95",
		['cooldowntime'] = "12000",
		['range'] = "800",
		['showareacast'] = "true",
		['disabled'] = "true",

		['blazer_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Blazer_Ability2",
			['gravity'] = "15000",
			['lifetime'] = "800",
			['useexactlifetime'] = "true",
			['modelscale'] = "3.25",
			['radius'] = "325",
			['targetselection'] = "closest",
			['maxtotalimpacts'] = "1",
			['targetscheme'] = "enemy_heroes",
			['radius'] = "325",
			['targetselection'] = "closest",
			['maxtotalimpacts'] = "1",
			['targetscheme'] = "enemy_nonboss_units",
		},

		['blazer_Projectile_ability_02_2'] = { 

			['name'] = "Projectile_Blazer_Ability2_Shadow",
			['gravity'] = "0",
			['lifetime'] = "800",
			['useexactlifetime'] = "true",
			['modelscale'] = "3.25",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Blazer3",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['maxcharges'] = "30",
		['basedamage'] = { [1] = 3,[2] = 6,[3] = 9,[4] = 12, },
		['actiontype'] = "passive",
        },

	['ability_04'] = {
		['name'] = "Ability_Blazer4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['cooldowntime'] = { [1] = 60000,[2] = 45000,[3] = 30000, },
		['inheritmovement'] = "true",
		['frontqueue'] = "true",
		['actiontype'] = "target_self",
		['alwaysshowtimer'] = "true",
		['manacost'] = "100",
		['disabled'] = "true",
        },

}, 


--[[

 _ _ _          _ _
( | ) |        ( | )
 V V| |__   ___ V V
    | '_ \ / _ \
    | |_) | (_) |  _
    |_.__/ \___/  ( )
                  |/
                        

]]

['bo'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Bo1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 85,[2] = 90,[3] = 95,[4] = 100, },
		['cooldowntime'] = "9000",
		['novoiceresponse'] = "true",
		['range'] = "865",
		['forcerange'] = "865",
		['showlinecast'] = "true",
		['linecastrange'] = "1000",
		['linecastwidth'] = "135",
		['allowoutofrangecast'] = "true",

		['bo_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Bo_Ability1",
			['speed'] = "1500",
			['modelscale'] = "1.3",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "100",
			['curve'] = "0",
			['touchradiusdiradjust'] = "true",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['touchradius'] = "135",
			['touchpropradius'] = "135",
			['touchpropanim'] = "flamehit",
			['touchcliffs'] = "false",
			['name'] = "Projectile_Bo_Ability1_Return",
			['source'] = "target_position",
			['target'] = "source_entity",
			['offset'] = "0 0 0",
			['pushentity'] = "true",
		},

		['bo_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Bo_Ability1_Return",
			['speed'] = "1500",
			['modelscale'] = "1.3",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "100",
			['curve'] = "0",
			['touchradiusdiradjust'] = "true",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['touchradius'] = "135",
			['touchpropradius'] = "135",
			['touchpropanim'] = "hit",
			['touchcliffs'] = "false",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Bo2",
		['icon'] = "icon.tga",
		['anim'] = "",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['manacost'] = { [1] = 85,[2] = 90,[3] = 95,[4] = 100, },
		['queue'] = "front",
		['inheritmovement'] = "true",
		['cooldowntime'] = "15000",
		['hoverareacastrange'] = "300",
		['alwaysshowtimer'] = "true",
		['ignorecooldown'] = "true",
		['anim'] = "",
		['icon'] = "charging.tga",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['manacost'] = "0",
		['actiontype'] = "no_target",
		['cooldowntime'] = "0",
        },

	['ability_03'] = {
		['name'] = "Ability_Bo3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "200",
		['castactiontime'] = "200",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['targetradius'] = "550",
		['manacost'] = { [1] = 70,[2] = 75,[3] = 80,[4] = 85, },
		['cooldowntime'] = { [1] = 50000,[2] = 40000,[3] = 32000,[4] = 25000, },
		['range'] = "550",
		['queue'] = "front",
		['noentercombat'] = "true",
		['showareacast'] = "true" ,
        },

	['ability_04'] = {
		['name'] = "Ability_Bo4",
		['icon'] = "icon.tga"	,
		['anim'] = "ability_4",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['activatescheme'] = "movement",
		['targetradius'] = "170",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 110,[2] = 125,[3] = 140, },
		['cooldowntime'] = { [1] = 90000,[2] = 75000,[3] = 60000, },
		['queue'] = "dropmovement",
		['range'] = "900",
		['forcerange'] = "900",
		['allowoutofboundscast'] = "true",
		['allowoutofrangecast'] = "true",
		['showlinecast'] = "true",
		['linecastwidth'] = "200",
		['linecastrange'] = "985",

		['bo_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Bo_Ability4",
			['speed'] = "1100",
			['gravity'] = "0",
			['modelscale'] = "1.0",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "0",
			['touchradius'] = "100",
			['touchpropradius'] = "100",
			['touchpropanim'] = "hit",
			['maxtouchespertarget'] = "1",
			['hazardradius'] = "200",
			['hazardoffset'] = "100",
			['hazardthreat'] = "extreme",
			['touchprojectileblockers'] = "true",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "enemy_units",
			['targetscheme'] = "enemy_heroes",
			['ignoreinvulnerable'] = "true",
			['targetselection'] = "all",
			['radius'] = "200",
			['maximpactspertarget'] = "1",
		},

		['bo_Projectile_ability_04_2'] = { 

			['name'] = "Projectile_Bo_Ability4_Cliff",
			['speed'] = "1100",
			['gravity'] = "0",
			['modelscale'] = "1.0",
			['model'] = "",
			['canturn'] = "true",
			['touchprojectileblockers'] = "true",
			['touchcliffs'] = "true",
			['touchradius'] = "1",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "all_buildings",
			['touchignoreinvulnerable'] = "true",
			['maxtouchespertarget'] = "1",
			['radius'] = "200",
			['targetselection'] = "all",
			['targetscheme'] = "enemy_units",
		},
        },

}, 


--[[

 _ _                     _         _ _
( | )                   (_)       ( | )
 V V ___ __ _ _ __  _ __ _  ___ ___V V
    / __/ _` | '_ \| '__| |/ __/ _ \
   | (_| (_| | |_) | |  | | (_|  __/  _
    \___\__,_| .__/|_|  |_|\___\___| ( )
             | |                     |/   

]]

['caprice'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Caprice1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "350",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['manacost'] = { [1] = 70,[2] = 80,[3] = 90,[4] = 100, },
		['cooldowntime'] = "9000",
		['range'] = "700",
		['forcerange'] = "700",
		['allowoutofrangecast'] = "true",
		['showlinecast'] = "true",
		['linecastwidth'] = "180",
		['linecastrange'] = "880",
		['showareacast'] = "true",
		['areacastrange'] = "880",

		['caprice_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Caprice_Ability1",
			['speed'] = "1600",
			['gravity'] = "0",
			['modelscale'] = "3.3",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "10",
			['touchradius'] = "180",
			['touchpropradius'] = "125",
			['touchpropanim'] = "hit",
			['hazardradius'] = "350",
			['hazardoffset'] = "210",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['touchradiusdiradjust'] = "true",
			['lifetime'] = "-1",
		},

		['caprice_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Caprice_Ability1_Afterburn",
			['speed'] = "5000",
			['gravity'] = "0",
			['modelscale'] = "3",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "20",
			['touchradius'] = "180",
			['touchpropradius'] = "125",
			['touchpropanim'] = "hit",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['touchradiusdiradjust'] = "true",
			['lifetime'] = "-1",
		},

		['caprice_Projectile_ability_01_3'] = { 

			['name'] = "Projectile_Caprice_Ability1_Delay",
			['gravity'] = "6000",
			['lifetime'] = "900",
			['useexactlifetime'] = "true",
			['modelscale'] = "1.5",
			['canturn'] = "false",
		},

		['caprice_Projectile_ability_01_4'] = { 

			['name'] = "Projectile_Caprice_Ability1_Ignight",
			['gravity'] = "0",
			['lifetime'] = "200",
			['useexactlifetime'] = "true",
			['flying'] = "true",
			['flyheight'] = "20",
			['modelscale'] = "1",
			['canturn'] = "false",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Caprice2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "150",
		['castactiontime'] = "150",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "215",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 70,[2] = 80,[3] = 90,[4] = 100, },
		['cooldowntime'] = "11000",
		['range'] = "550",
		['showareacast'] = "true",
        },

	['ability_03'] = {
		['name'] = "Ability_Caprice3",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['modifierkey'] = "Caprice_Ability3_Learned",
		['actiontype'] = "passive",

		['caprice_Projectile_ability_03_1'] = { 

			['name'] = "Projectile_Caprice_Ability3",
			['speed'] = "1500",
			['gravity'] = "2200",
			['modelscale'] = "1.5",
		},
        },

	['ability_04'] = {
		['name'] = "Ability_Caprice4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "150",
		['castactiontime'] = "150",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['targetradius'] = "600",
		['targetscheme'] = "enemy_units",
		['activatescheme'] = "movement",
		['manacost'] = { [1] = 70,[2] = 80,[3] = 90, },
		['range'] = "600",
		['cooldowntime'] = "0",
		['noturntotarget'] = "false",
		['novoiceresponse'] = "true",
		['allowoutofrangecast'] = "true",
		['nonreseting'] = "true",
		['noninterupting'] = "true",
		['alwaysshowtimer'] = "true",
		['queue'] = "dropmovement",
		['maxcharges'] = "2",
		['showareacast'] = "true",
		['disabled'] = "true",

		['caprice_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Caprice_Ability4",
			['lifetime'] = "450",
			['useexactlifetime'] = "true",
			['gravity'] = "9010",
			['modelscale'] = "1",
			['canturn'] = "false",
			['touchprojectileblockers'] = "true",
			['touchradius'] = "1",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "Nothing",
			['radius'] = "600",
			['targetselection'] = "closest",
			['targetscheme'] = "visible_enemy_heroes",
			['maxtotalimpacts'] = "1",
			['radius'] = "600",
			['targetselection'] = "closest",
			['targetscheme'] = "visible_enemy_heroes",
			['maxtotalimpacts'] = "1",
			['radius'] = "600",
			['targetselection'] = "closest",
			['targetscheme'] = "visible_enemy_units",
			['maxtotalimpacts'] = "1",
		},

		['caprice_Projectile_ability_04_2'] = { 

			['name'] = "Projectile_Caprice_Ability4_Damage",
			['speed'] = "2000",
			['gravity'] = "0"	,
			['modelscale'] = "0.5",
			['canturn'] = "false",
		},
        },

}, 


--[[

 _ _               _           _ _
( | )             | |         ( | )
 V V ___ __ _ _ __| |_ ___ _ __V V
    / __/ _` | '__| __/ _ \ '__|
   | (_| (_| | |  | ||  __/ |     _
    \___\__,_|_|   \__\___|_|    ( )
                                 |/
                                          

]]

['carter'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Carter1",
		['icon'] = "icon.tga",
		['anim'] = "",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "70",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 50,[2] = 55,[3] = 60,[4] = 65, },
		['cooldowntime'] = "0",
		['queue'] = "front",
		['inheritmovement'] = "true",
		['noturntotarget'] = "false",
		['range'] = "2500",
		['forcerange'] = "2500",
		['allowoutofrangecast'] = "true",
		['allowoutofboundscast'] = "true",
		['showlinecast'] = "true",
		['linecastwidth'] = "90",
		['linecastrange'] = "2600",
		['maxcharges'] = "2",
		['showareacast'] = "false",
		['alwaysshowtimer'] = "true",
		['doubleactivate'] = "false",
		['doubleactivatenoninterrupting'] = "true",
		['radius'] = "600",
		['targetselection'] = "closest",
		['targetscheme'] = "visible_enemy_heroes",
		['maxtotalimpacts'] = "1",
		['disabled'] = "true",

		['carter_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Carter_Ability1_1",
			['speed'] = "1400",
			['gravity'] = "0",
			['modelscale'] = "1",
			['canturn'] = "0",
			['flying'] = "true",
			['flyheight'] = "120",
			['touchradius'] = "90",
			['touchcliffs'] = "false",
			['touchpropradius'] = "90",
			['touchpropanim'] = "hit",
			['hazardradius'] = "300",
			['hazardoffset'] = "210",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['lifetime'] = "5000",
		},

		['carter_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Carter_Ability1_2",
			['speed'] = "1400",
			['gravity'] = "0",
			['modelscale'] = "1",
			['canturn'] = "0",
			['flying'] = "true",
			['flyheight'] = "120",
			['touchradius'] = "90",
			['touchcliffs'] = "false",
			['touchpropradius'] = "90",
			['touchpropanim'] = "hit",
			['hazardradius'] = "300",
			['hazardoffset'] = "230",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['lifetime'] = "5000",
		},

		['carter_Projectile_ability_01_3'] = { 

			['name'] = "Projectile_Carter_Ability1_3",
			['speed'] = "1400",
			['gravity'] = "0",
			['modelscale'] = "1",
			['canturn'] = "0",
			['flying'] = "true",
			['flyheight'] = "120",
			['touchradius'] = "90",
			['touchcliffs'] = "false",
			['touchpropradius'] = "90",
			['touchpropanim'] = "hit",
			['hazardradius'] = "300",
			['hazardoffset'] = "230",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['lifetime'] = "5000",
		},

		['carter_Projectile_ability_01_4'] = { 

			['name'] = "Projectile_Carter_Ability1_4",
			['speed'] = "1400",
			['gravity'] = "0",
			['modelscale'] = "1",
			['canturn'] = "0",
			['flying'] = "true",
			['flyheight'] = "120",
			['touchradius'] = "90",
			['touchcliffs'] = "false",
			['touchpropradius'] = "90",
			['touchpropanim'] = "hit",
			['hazardradius'] = "300",
			['hazardoffset'] = "230",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['lifetime'] = "5000",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Carter2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "750",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "250",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 70,[2] = 80,[3] = 90,[4] = 100, },
		['cooldowntime'] = "10000",
		['range'] = "850",
		['showareacast'] = "true",
		['hoverareacastrange'] = "850",

		['carter_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Carter_Ability2",
			['speed'] = "1000" ,
			['gravity'] = "3500",
			['modelscale'] = "1.5",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Carter3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "no_target",
		['hoverareacastrange'] = "325",
		['targetscheme'] = "enemy_units",
		['queue'] = "front",
		['inheritmovement'] = "true",
		['manacost'] = "40",
		['cooldowntime'] = "5000",
		['modifierkey'] = { [1] = carter3_1,[2] = carter3_2,[3] = carter3_3,[4] = carter3_4, },

		['carter_Projectile_ability_03_1'] = { 

			['name'] = "Projectile_Carter_Ability3_FakeAttack",
			['speed'] = "1200",
			['gravity'] = "0",
			['modelscale'] = "1.8",
			['model'] = "",
			['canturn'] = "0",
			['touchradius'] = "150",
			['touchcliffs'] = "false",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "carter_firering",
			['touchignoreinvulnerable'] = "true",
		},

		['carter_Projectile_ability_03_2'] = { 

			['name'] = "State_Carter_Ability3_Projectiles",
			['icon'] = "icon.tga",
			['allowtransfer'] = "true",
		},
        },

	['ability_04'] = {
		['name'] = "Ability_Carter4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "500",
		['castactiontime'] = "0",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "enemy_heroes",
		['range'] = "1200",
		['manacost'] = { [1] = 100,[2] = 115,[3] = 130, },
		['cooldowntime'] = "75000",
		['showareacast'] = "true",
		['alwaysshowtimer'] = "true",

		['carter_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Carter_Ability4",
			['speed'] = "185",
			['gravity'] = "0",
			['flying'] = "true",
			['flyheight'] = "150",
			['touchpropradius'] = "120",
			['touchpropanim'] = "hit",
			['acceleration'] = "200",
			['lifetime'] = "4500",
			['modelscale'] = "1",
			['impactdistance'] = "50",
		},
        },

}, 


--[[

 _ _     _               _           _ _
( | )   | |             | |         ( | )
 V V ___| |__   ___  ___| |_ ___ _ __V V
    / __| '_ \ / _ \/ __| __/ _ \ '__|
   | (__| | | |  __/\__ \ ||  __/ |     _
    \___|_| |_|\___||___/\__\___|_|    ( )
                                       |/   

]]

['chester'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Chester1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1" ,
		['casttime'] = "400",
		['castactiontime'] = "200",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 70,[2] = 75,[3] = 80,[4] = 85, },
		['cooldowntime'] = { [1] = 10000,[2] = 8000,[3] = 6000,[4] = 4000, },
		['range'] = "1145",
		['forcerange'] = "1145",
		['allowoutofrangecast'] = "true",
		['showlinecast'] = "true",
		['linecastrange'] = "1200",
		['linecastwidth'] = "110",

		['chester_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Chester_Ability1",
			['lifetime'] = "-1",
			['speed'] = "550",
			['touchradius'] = "110",
			['touchpropradius'] = "110",
			['touchpropanim'] = "hit",
			['touchtargetscheme'] = "enemy_units",
			['modelscale'] = ".4",
			['canturn'] = "true",
			['hazardradius'] = "380",
			['flying'] = "true",
			['flyheight'] = "0",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Chester2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "250",
		['castactiontime'] = "250",
		['queue'] = "front",
		['inheritmovement'] = "true",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "ally_heroes",
		['manacost'] = "95",
		['cooldowntime'] = { [1] = 23000,[2] = 20000,[3] = 17000,[4] = 14000, },
		['range'] = "700",
		['noentercombat'] = "true",
		['showareacast'] = "true" ,
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
        },

	['ability_03'] = {
		['name'] = "Ability_Chester3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['manacost'] = { [1] = 85,[2] = 90,[3] = 95,[4] = 100, },
		['cooldowntime'] = "12000",
		['actiontype'] = "target_entity",
		['targetscheme'] = "enemy_heroes",
		['range'] = "600",
		['showareacast'] = "true" ,
		['target'] = "target_entity" ,
		['owner'] = "source_entity",
		['source'] = "target_entity",
		['count'] = "1" ,
		['lifetime'] = "10000" ,
		['receivedamagemultiplier'] = "2" ,
		['inflictdamagemultiplier'] = { [1] = 0.2,[2] = 0.25,[3] = 0.3,[4] = 0.35, },
		['pushentity'] = "true",
		['uncontrollable'] = "true",
		['fixedposition'] = "true",
        },

	['ability_04'] = {
		['name'] = "Ability_Chester4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "other_ally_heroes",
		['manacost'] = { [1] = 100,[2] = 110,[3] = 120, },
		['cooldowntime'] = "75000",
		['showareacast'] = "true",
		['hoverareacastrange'] = "900",
		['range'] = "900",
        },

}, 


--[[

 _ _     _                 _                    _ _
( | )   | |               | |                  ( | )
 V V ___| | __ _ _   _  __| | ___  ___ ___  __ _V V
    / __| |/ _` | | | |/ _` |/ _ \/ __/ __|/ _` |
   | (__| | (_| | |_| | (_| |  __/\__ \__ \ (_| |  _
    \___|_|\__,_|\__,_|\__,_|\___||___/___/\__,_| ( )
                                                  |/   

]]

['claudessa'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Claudessa1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "350",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['manacost'] = { [1] = 95,[2] = 100,[3] = 105,[4] = 110, },
		['cooldowntime'] = { [1] = 14000,[2] = 12000,[3] = 10000,[4] = 8000, },
		['range'] = "800",
		['forcerange'] = "800",
		['allowoutofrangecast'] = "true",
		['hoverareacastrange'] = "1060",
		['showconecast'] = "true",
		['conecastwidth'] = "512",
		['conecastrange'] = "1114",

		['claudessa_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Claudessa_Ability1",
			['speed'] = "900",
			['gravity'] = "0",
			['modelscale'] = "2.5",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "10",
			['touchradius'] = "180",
			['touchpropradius'] = "200",
			['touchpropanim'] = "hit",
			['hazardradius'] = "300",
			['hazardoffset'] = "120",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['touchradiusdiradjust'] = "true",
			['lifetime'] = "-1",
		},

		['claudessa_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Claudessa_Ability1_Bind",
			['gravity'] = "5500",
			['lifetime'] = "650",
			['useexactlifetime'] = "true",
			['modelscale'] = "1.0",
		},

		['claudessa_Projectile_ability_01_3'] = { 

			['name'] = "Projectile_Claudessa_Ability1_Displace",
			['speed'] = "2400",
			['gravity'] = "0",
			['lifetime'] = "-1",
			['modelscale'] = "8.0",
			['flying'] = "true",
			['flyheight'] = "-250",
			['touchradius'] = "180",
			['touchcliffs'] = "false",
			['touchpropradius'] = "200",
			['touchpropanim'] = "hit",
			['hazardradius'] = "300",
			['hazardoffset'] = "210",
			['touchradiusdiradjust'] = "true",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Claudessa2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "700",
		['castactiontime'] = "200",
		['showareacast'] = "true",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "ally_heroes",
		['manacost'] = { [1] = 80,[2] = 90,[3] = 100,[4] = 110, },
		['cooldowntime'] = "14000",
		['range'] = "600",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['radius'] = "700",
		['targetselection'] = "closest",
		['targetscheme'] = "ally_heroes",
		['maxtotalimpacts'] = "1",

		['claudessa_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Claudessa_Ability2",
			['speed'] = "3000",
			['gravity'] = "0"	,
			['modelscale'] = "2",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "100",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Claudessa3",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "passive",
		['cooldowntime'] = { [1] = 11000,[2] = 9000,[3] = 7000,[4] = 5000, },
		['showareacast'] = "true",
        },

	['ability_04'] = {
		['name'] = "Ability_Claudessa4",
		['icon'] = "icon.tga",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['anim'] = "ability_4",
		['actiontype'] = "target_self",
		['cooldowntime'] = "135000",
		['queue'] = "front",
		['inheritmovement'] = "true",
		['manacost'] = { [1] = 90,[2] = 105,[3] = 120, },
		['hoverareacastrange'] = "350",
		['alwaysshowtimer'] = "true",
		['showareacast'] = "true",
        },

}, 


--[[

 _ _  __     _   _                _                  _ _
( | )/ _|   | | | |              | |                ( | )
 V V| |_ ___| |_| |_ ___ _ __ ___| |_ ___  _ __   ___V V
    |  _/ _ \ __| __/ _ \ '__/ __| __/ _ \| '_ \ / _ \
    | ||  __/ |_| ||  __/ |  \__ \ || (_) | | | |  __/  _
    |_| \___|\__|\__\___|_|  |___/\__\___/|_| |_|\___| ( )
                                                       |/
                                                            

]]

['fetterstone'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Fetterstone1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "200",
		['castactiontime'] = "150",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 45,[2] = 50,[3] = 55,[4] = 60, },
		['cooldowntime'] = "2000",
		['range'] = "800",
		['forcerange'] = "800",
		['allowoutofboundscast'] = "true" ,
		['allowoutofrangecast'] = "true",
		['showlinecast'] = "true",
		['linecastwidth'] = "90",
		['linecastrange'] = "870",
		['hoverareacastrange'] = "890",
		['doubleactivatenoninterrupting'] = "true",

		['fetterstone_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Fetterstone_Ability1",
			['speed'] = "1700",
			['gravity'] = "0",
			['modelscale'] = "1.5",
			['canturn'] = "0",
			['flying'] = "true",
			['flyheight'] = "90",
			['touchradius'] = "90",
			['touchradiusdiradjust'] = "true",
			['touchpropradius'] = "90",
			['touchpropanim'] = "hit",
			['hazardradius'] = "250",
			['hazardoffset'] = "160",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "enemy_units",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Fetterstone2",
		['icon'] = "icon.tga",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['frontqueue'] = "true",
		['inheritmovement'] = "true",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['manacost'] = "90",
		['cooldowntime'] = "16000",
		['hoverareacastrange'] = "800",

		['fetterstone_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Fetterstone_Ability2",
			['speed'] = "1700",
			['gravity'] = "750",
			['modelscale'] = "1.8",
		},

		['fetterstone_Projectile_ability_02_2'] = { 

			['name'] = "Projectile_Fetterstone_Ability2_b",
			['speed'] = "700",
			['gravity'] = "3000",
			['modelscale'] = "1",
			['curve'] = "-4000",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Fetterstone3",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "passive",
		['powerpercharge'] = "1",
		['maxcharges'] = "100",
		['power'] = { [1] = 3,[2] = 5,[3] = 7,[4] = 9, },
        },

	['ability_04'] = {
		['name'] = "Ability_Fetterstone4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['cooldowntime'] = "75000",
		['actiontype'] = "target_self",
		['manacost'] = { [1] = 90,[2] = 100,[3] = 110, },
		['queue'] = "front",
		['inheritmovement'] = "true",
		['maxcharges'] = "0",
		['alwaysshowtimer'] = "true",
        },

}, 


--[[

 _ _            _                    _ _
( | )          | |                  ( | )
 V V __ _  ___ | | _____  _ __   __ _V V
    / _` |/ _ \| |/ / _ \| '_ \ / _` |
   | (_| | (_) |   < (_) | | | | (_| |  _
    \__, |\___/|_|\_\___/|_| |_|\__, | ( )
     __/ |                       __/ | |/
    |___/                       |___/       

]]

['gokong'] =  { 
	['ability_01'] = {
		['name'] = "Ability_GoKong1",
		['icon'] = "icon.tga",
		['anim'] = "ablity_1",
		['casttime'] = "150",
		['castactiontime'] = "150",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "self_position",
		['targetscheme'] = "enemy_units",
		['queue'] = "front",
		['targetradius'] = "350",
		['hoverareacastrange'] = "365",
		['manacost'] = "95",
		['cooldowntime'] = { [1] = 13000,[2] = 11000,[3] = 9000,[4] = 7000, },
		['radius'] = "350",
		['targetselection'] = "closest",
		['targetscheme'] = "enemy_heroes",
		['maxtotalimpacts'] = "-1",
		['maximpactspertarget'] = "1",
		['radius'] = "350",
		['targetselection'] = "closest",
		['targetscheme'] = "enemy_nonhero",
		['maxtotalimpacts'] = "-1",
		['maximpactspertarget'] = "1",
        },

	['ability_02'] = {
		['name'] = "Ability_GoKong2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "100",
		['castactiontime'] = "100",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "150",
		['targetscheme'] = "enemy_units",
		['activatescheme'] = "movement",
		['manacost'] = "100",
		['cooldowntime'] = "18000",
		['novoiceresponse'] = "true",
		['queue'] = "dropmovement",
		['range'] = "400",
		['showareacast'] = "true",
		['hoverareacastrange'] = "425",
		['allowoutofrangecast'] = "true",
		['radius'] = "150",
		['targetselection'] = "all",
		['targetscheme'] = "enemy_units",
		['radius'] = "150",
		['targetselection'] = "all",
		['targetscheme'] = "enemy_units",

		['gokong_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_GoKong_Ability2",
			['gravity'] = "0",
			['lifetime'] = "600",
			['useexactlifetime'] = "true",
			['modelscale'] = "1.0",
			['model'] = "",
			['canturn'] = "false",
			['flying'] = "false",
			['flyheight'] = "0",
			['touchprojectileblockers'] = "true",
			['touchradius'] = "1",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "Nothing",
			['touchpropradius'] = "100",
			['touchpropanim'] = "hit",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_GoKong3",
		['icon'] = "icon.tga",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['frontqueue'] = "true",
		['inheritmovement'] = "true",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['manacost'] = "40",
		['cooldowntime'] = "14000",
		['hoverareacastrange'] = "425",
		['alwaysshowtimer'] = "true",
        },

	['ability_04'] = {
		['name'] = "Ability_GoKong4",
		['icon'] = "icon.tga",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['anim'] = "ability_4",
		['actiontype'] = "target_self",
		['ignoreinvulnerable'] = "true",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['inheritmovement'] = "true",
		['range'] = "1500",
		['targetradius'] = "1500",
		['cooldowntime'] = "80000",
		['manacost'] = { [1] = 100,[2] = 110,[3] = 120, },
		['alwaysshowtimer'] = "true",
		['radius'] = "2000",
		['targetselection'] = "all",
		['targetscheme'] = "nonillusion_enemy_heroes",
		['owner'] = "source_entity",
		['source'] = "source_entity",
		['target'] = "target_entity",
		['count'] = "1",
		['lifetime'] = "5000",
		['playdeathanim'] = "false",
		['pushentity'] = "true",
		['uncontrollable'] = "true",
		['nofamiliar'] = "true",
		['anim'] = "",
		['cooldowntime'] = "0",
		['icon'] = "icon_b.tga",
		['actiontype'] = "target_position",
		['targetscheme'] = "my_illusions",
		['allowoutofrangecast'] = "true",
		['range'] = "99999",
		['manacost'] = "0",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['dontshowhovercast'] = "true",
		['ignorecooldown'] = "true",

		['gokong_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_GoKong_Ability4",
			['speed'] = "6000",
			['gravity'] = "0",
			['modelscale'] = "1",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "0",
		},

		['gokong_Projectile_ability_04_2'] = { 

			['name'] = "Projectile_GoKong_Ability4_Spawn",
			['speed'] = "900",
			['gravity'] = "0",
			['impactdistance'] = "100",
			['modelscale'] = "1",
			['touchpropradius'] = "100",
			['touchpropanim'] = "hit",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "0",
		},
        },

}, 


--[[

 _ _ _           _     _ _
( | ) |         | |   ( | )
 V V| |__   __ _| | ___V V
    | '_ \ / _` | |/ _ \
    | | | | (_| | |  __/  _
    |_| |_|\__,_|_|\___| ( )
                         |/      

]]

['hale'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Hale1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "250",
		['castactiontime'] = "250",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['activatescheme'] = "movement",
		['targetradius'] = "200",
		['targetscheme'] = "all_other_units",
		['manacost'] = "95",
		['queue'] = "dropmovement",
		['showconecast'] = "true",
		['conecastwidth'] = "700",
		['conecastrange'] = "1000",
		['cooldowntime'] = { [1] = 18000,[2] = 15000,[3] = 13000,[4] = 11000, },
		['range'] = "475",
		['forcerange'] = "475",
		['novoiceresponse'] = "true",
		['allowoutofrangecast'] = "true",

		['hale_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Hale_Ability1",
			['speed'] = "1600",
			['modelscale'] = "1.0",
			['model'] = "",
			['canturn'] = "false",
			['touchradius'] = "125",
			['touchpropradius'] = "100",
			['touchpropanim'] = "flamehit",
			['touchtargetscheme'] = "enemy_units",
			['maxtouchespertarget'] = "1",
		},

		['hale_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Hale_Ability1_Cliff",
			['speed'] = "1600",
			['modelscale'] = "1.0",
			['model'] = "",
			['canturn'] = "true",
			['touchcliffs'] = "true",
			['touchradius'] = "1",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "Nothing",
			['maxtouchespertarget'] = "1",
		},

		['hale_Projectile_ability_01_3'] = { 

			['name'] = "Projectile_Hale_Ability1_Large",
			['speed'] = "1200",
			['modelscale'] = "1.0",
			['model'] = "",
			['canturn'] = "false",
			['touchradius'] = "250",
			['touchpropradius'] = "200",
			['touchpropanim'] = "flamehit",
			['touchtargetscheme'] = "enemy_units",
			['maxtouchespertarget'] = "1",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Hale2",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['anim'] = "ability_2",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['inheritmovement'] = "true",
		['queue'] = "front",
		['cooldowntime'] = { [1] = 11000,[2] = 9000,[3] = 7000,[4] = 5000, },
		['manacost'] = "70",
		['alwaysshowtimer'] = "true",

		['hale_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Hale_Ability2",
			['speed'] = "1800",
			['gravity'] = "0",
			['modelscale'] = "2",
			['touchradius'] = "135",
			['touchpropradius'] = "135",
			['touchpropanim'] = "hit",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Hale3",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['anim'] = "ability_3",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['inheritmovement'] = "true",
		['queue'] = "front",
		['cooldowntime'] = "16000",
		['manacost'] = { [1] = 55,[2] = 60,[3] = 65,[4] = 70, },
		['alwaysshowtimer'] = "true",
        },

	['ability_04'] = {
		['name'] = "Ability_Hale4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "400",
		['castactiontime'] = "400",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "self_position",
		['targetscheme'] = "enemy_units",
		['targetradius'] = "550",
		['manacost'] = { [1] = 90,[2] = 105,[3] = 120, },
		['cooldowntime'] = "90000",

		['hale_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Hale_Ability4",
			['lifetime'] = "500",
			['useexactlifetime'] = "true",
			['gravity'] = "9000",
			['modelscale'] = "2",
		},
        },

}, 


--[[

 _ _ _                                          _ _
( | ) |                                        ( | )
 V V| |__   __ _ _ __ _ __ _____      _____ _ __V V
    | '_ \ / _` | '__| '__/ _ \ \ /\ / / _ \ '__|
    | | | | (_| | |  | | | (_) \ V  V /  __/ |     _
    |_| |_|\__,_|_|  |_|  \___/ \_/\_/ \___|_|    ( )
                                                  |/
                                                         

]]

['harrower'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Harrower1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_cursor",
		['manacost'] = "70",
		['cooldowntime'] = { [1] = 12000,[2] = 10000,[3] = 8000,[4] = 6000, },
		['range'] = "350",
		['forcerange'] = "350",
		['allowoutofrangecast'] = "true",
		['queue'] = "dropmovement",
		['showlinecast'] = "true",
		['linecastwidth'] = "50",
		['linecastrange'] = "350",
		['alwaysshowtimer'] = "true",

		['harrower_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Harrower_Ability1_Buff",
			['speed'] = "1400",
			['gravity'] = "0",
			['modelscale'] = "2",
		},

		['harrower_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Harrower_Ability1",
			['gravity'] = "0",
			['speed'] = "1500",
			['lifetime'] = "275",
			['modelscale'] = "2",
			['pathing'] = "true",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Harrower2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "350",
		['castactiontime'] = "350",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "self_position",
		['targetscheme'] = "visible_enemy_heroes",
		['inheritmovement'] = "true",
		['targetradius'] = "1200",
		['range'] = "1200",
		['queue'] = "front",
		['manacost'] = "105",
		['cooldowntime'] = "15000",
		['radius'] = "1200",
		['targetselection'] = "closest",
		['targetscheme'] = "visible_enemy_heroes",
		['maxtotalimpacts'] = "1",
		['radius'] = "1200",
		['targetselection'] = "closest",
		['targetscheme'] = "visible_enemy_units",
		['maxtotalimpacts'] = "1",

		['harrower_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Harrower_Ability2",
			['speed'] = "800",
			['gravity'] = "0",
			['flyheight'] = "0",
			['flying'] = "true",
			['modelscale'] = "3",
			['canturn'] = "true",
			['pathing'] = "true",
			['icon'] = "icon.tga",
			['portrait'] = "icon.tga",
			['impactdistance'] = "110",
			['ignoreinvulnerable'] = "true"	,
		},

		['harrower_Projectile_ability_02_2'] = { 

			['name'] = "Projectile_Harrower_Ability2_Jump",
			['gravity'] = "5000",
			['lifetime'] = "400",
			['useexactlifetime'] = "true",
			['flyheight'] = "0",
			['flying'] = "false",
			['modelscale'] = "3",
			['canturn'] = "false",
			['icon'] = "icon.tga",
			['portrait'] = "icon.tga",
			['model'] = "",
			['ignoreinvulnerable'] = "true"	,
			['impactdistance'] = "110",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Harrower3" ,
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "passive",
        },

	['ability_04'] = {
		['name'] = "Ability_Harrower4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_self",
		['queue'] = "front",
		['inheritmovement'] = "true",
		['responsetype'] = "NoResponse BreakStealth",
		['manacost'] = "0",
		['cooldowntime'] = "4000",
		['targetscheme'] = "",
		['noentercombat'] = "true",
        },

}, 


--[[

 _ _ _       _    _ _
( | |_)     | |  ( | )
 V V _  __ _| |__ V V
    | |/ _` | '_ \
    | | (_| | | | |  _
    |_|\__,_|_| |_| ( )
                    |/
                          

]]

['iah'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Iah1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "250",
		['castactiontime'] = "250",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "enemy_units_and_structures",
		['manacost'] = { [1] = 50,[2] = 55,[3] = 60,[4] = 65, },
		['cooldowntime'] = "2000",
		['queue'] = "front",
		['range'] = "700",
		['showareacast'] = "true",
		['allowoutofrangecast'] = "false",
		['allowoutofboundscast'] = "false",
		['maxcharges'] = "2",
		['alwaysshowtimer'] = "true",
		['disabled'] = "true",
        },

	['ability_02'] = {
		['name'] = "Ability_Iah2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "350",
		['castactiontime'] = "350",
		['actiontype'] = "target_position",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['targetradius'] = "300",
		['targetscheme'] = "nonboss_organic_enemy_units",
		['manacost'] = "100",
		['cooldowntime'] = "9000",
		['novoiceresponse'] = "true",
		['range'] = "650",
		['showareacast'] = "true",
		['showrangeandradiusintooltip'] = "true",
        },

	['ability_03'] = {
		['name'] = "Ability_Iah3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['frontqueue'] = "true",
		['inheritmovement'] = "true",
		['targetradius'] = "300",
		['manacost'] = "75",
		['cooldowntime'] = { [1] = 24000,[2] = 20000,[3] = 16000,[4] = 12000, },
        },

	['ability_04'] = {
		['name'] = "Ability_Iah4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['manacost'] = { [1] = 100,[2] = 110,[3] = 120, },
		['cooldowntime'] = "75000",
		['targetradius'] = "300",
		['range'] = "999999",
		['hoverareacastrange'] = "1",

		['iah_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Iah_Ability4",
			['useexactlifetime'] = "true",
			['lifetime'] = "1000",
			['gravity'] = "0",
			['modelscale'] = "2",
			['flying'] = "false",
			['touchradius'] = "100",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
		},
        },

}, 


--[[

 _ _ _ _           _         _ _
( | |_|_)         | |       ( | )
 V V _ _ _ __  ___| |__   ___V V
    | | | '_ \/ __| '_ \ / _ \
    | | | | | \__ \ | | |  __/  _
    | |_|_| |_|___/_| |_|\___| ( )
   _/ |                        |/
  |__/                              

]]

['jinshe'] =  { 
	['ability_01'] = {
		['name'] = "Ability_JinShe1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "350",
		['castactiontime'] = "350",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "90",
		['targetscheme'] = "enemy_units",
		['range'] = "750",
		['forcerange'] = "750",
		['allowoutofrangecast'] = "true",
		['allowoutofboundscast'] = "true",
		['queue'] = "front",
		['showlinecast'] = "true",
		['linecastwidth'] = "90",
		['linecastrange'] = "800",
		['manacost'] = { [1] = 85,[2] = 90,[3] = 95,[4] = 100, },
		['cooldowntime'] = "10000" ,

		['jinshe_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_JinShe_Ability1",
			['speed'] = "1300",
			['gravity'] = "0",
			['modelscale'] = "1.75",
			['flying'] = "true",
			['flyheight'] = "0",
			['touchradius'] = "90",
			['touchpropradius'] = "90",
			['touchpropanim'] = "hit",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "all_units",
			['hazardradius'] = "250",
			['hazardoffset'] = "160",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_JinShe2",
		['icon'] = "icon.tga",
		['anim'] = "",
		['casttime'] = "150",
		['castactiontime'] = "150",
		['inheritmovement'] = "true",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "self_position",
		['targetscheme'] = "enemy_units",
		['queue'] = "front",
		['allowoutofrangecast'] = "true",
		['targetradius'] = "375",
		['manacost'] = "70",
		['cooldowntime'] = "8000" ,
		['radius'] = "375",
		['targetselection'] = "all",
		['targetscheme'] = "enemy_units",
		['radius'] = "350",
		['targetselection'] = "all",
		['targetscheme'] = "enemy_units",
        },

	['ability_03'] = {
		['name'] = "Ability_JinShe3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3_channel",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['channeltime'] = "1400",
		['ischanneling'] = "true",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "120",
		['targetscheme'] = "enemy_units",
		['manacost'] = "70",
		['cooldowntime'] = { [1] = 65000,[2] = 45000,[3] = 30000,[4] = 20000, },
		['showareacast'] = "true",
		['range'] = "1800",
		['hoverareacastrange'] = "1800",
		['allowoutofrangecast'] = "true",

		['jinshe_Projectile_ability_03_1'] = { 

			['name'] = "Projectile_JinShe_Ability3",
			['gravity'] = "3000",
			['speed'] = "2200",
			['modelscale'] = "1.0",
			['model'] = "",
			['canturn'] = "false",
			['flying'] = "false",
			['flyheight'] = "0",
			['touchprojectileblockers'] = "true",
			['touchradius'] = "1",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "Nothing",
		},
        },

	['ability_04'] = {
		['name'] = "Ability_JinShe4",
		['icon'] = "icon.tga",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['anim'] = "ability_4",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['modifierkey'] = "fireballz",
		['actiontype'] = "target_self",
		['cooldowntime'] = "60000",
		['manacost'] = "0",
		['maxcharges'] = "12",
		['radius'] = "9999999",
		['targetselection'] = "all",
		['targetscheme'] = "jinshefire",
		['ignoreinvulnerable'] = "true",
		['radius'] = "9999999",
		['targetselection'] = "all",
		['targetscheme'] = "jinshefire",
		['ignoreinvulnerable'] = "true",
		['maxcharges'] = "0",

		['jinshe_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_JinShe_Ability4",
			['lifetime'] = "400",
			['useexactlifetime'] = "true",
			['gravity'] = "0",
			['modelscale'] = ".9",
			['flying'] = "true",
			['flyheight'] = "135",
			['touchradius'] = "120",
			['touchpropradius'] = "120",
			['touchpropanim'] = "hit",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
		},

		['jinshe_Projectile_ability_04_2'] = { 

			['name'] = "Projectile_JinShe_Ability4_Spray",
			['gravity'] = "1300",
			['speed'] = "1500",
			['acceleration'] = "-1000",
			['useexactlifetime'] = "false",
			['modelscale'] = ".65",
			['canturn'] = "false",
			['flying'] = "false",
			['flyheight'] = "0",
		},
        },

}, 


--[[

 _ _ _           _          _   _           _          _ _
( | ) |         | |        | | (_)         | |        ( | )
 V V| | __ _  __| |_   _   | |_ _ _ __   __| | ___ _ __V V
    | |/ _` |/ _` | | | |  | __| | '_ \ / _` |/ _ \ '__|
    | | (_| | (_| | |_| |  | |_| | | | | (_| |  __/ |     _
    |_|\__,_|\__,_|\__, |   \__|_|_| |_|\__,_|\___|_|    ( )
                    __/ |_____                           |/
                   |___/______|                             

]]

['lady_tinder'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Ladytinder1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "400",
		['castactiontime'] = "400",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "70",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 70,[2] = 80,[3] = 90,[4] = 100, },
		['cooldowntime'] = "10000",
		['range'] = "900",
		['forcerange'] = "900",
		['allowoutofrangecast'] = "true",
		['allowoutofboundscast'] = "true",
		['showlinecast'] = "true",
		['linecastwidth'] = "100",
		['linecastrange'] = "1000",
		['showareacast'] = "false",
		['alwaysshowtimer'] = "true",

		['lady_tinder_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Ladytinder_Ability1",
			['speed'] = "1440",
			['gravity'] = "0",
			['modelscale'] = "2",
			['canturn'] = "0",
			['flying'] = "true",
			['flyheight'] = "45",
			['touchradius'] = "100",
			['touchpropradius'] = "100",
			['touchpropanim'] = "hit",
			['touchcliffs'] = "false",
			['hazardradius'] = "300",
			['hazardoffset'] = "200",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "enemy_heroes",
			['lifetime'] = "5000",
		},

		['lady_tinder_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Ladytinder_Ability1_Bind",
			['speed'] = "150",
			['gravity'] = "0",
			['modelscale'] = "2",
			['canturn'] = "0",
			['flying'] = "true",
			['flyheight'] = "40",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['lifetime'] = "5000",
		},

		['lady_tinder_Projectile_ability_01_3'] = { 

			['name'] = "Projectile_Ladytinder_Ability1_Creeps",
			['speed'] = "1440",
			['gravity'] = "0",
			['modelscale'] = "2",
			['canturn'] = "0",
			['flying'] = "true",
			['flyheight'] = "45",
			['touchradius'] = "80",
			['touchcliffs'] = "false",
			['hazardradius'] = "300",
			['hazardoffset'] = "200",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "enemy_creeps",
			['lifetime'] = "5000",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Ladytinder2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "800",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "all_units",
		['manacost'] = { [1] = 80,[2] = 90,[3] = 100,[4] = 110, },
		['cooldowntime'] = "8000",
		['range'] = "550",
		['showareacast'] = "true",
		['hoverareacastrange'] = "600",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['disablesmarttarget'] = "true",
		['radius'] = "650",
		['targetselection'] = "closest",
		['targetscheme'] = "ally_heroes",
		['maxtotalimpacts'] = "1",
        },

	['ability_03'] = {
		['name'] = "Ability_Ladytinder3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "600",
		['castactiontime'] = "200",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "ally_units",
		['manacost'] = { [1] = 55,[2] = 65,[3] = 75,[4] = 85, },
		['cooldowntime'] = "9000",
		['showareacast'] = "true",
		['hoverareacastrange'] = "700",
		['range'] = "650",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['radius'] = "750",
		['targetselection'] = "closest",
		['targetscheme'] = "ally_heroes",
		['maxtotalimpacts'] = "1",
        },

	['ability_04'] = {
		['name'] = "Ability_Ladytinder4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "1000",
		['castactiontime'] = "300",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['targetradius'] = "700",
		['manacost'] = { [1] = 115,[2] = 130,[3] = 145, },
		['cooldowntime'] = "120000",
		['range'] = "600",
		['showareacast'] = "true",
		['hoverareacastrange'] = "590",
        },

}, 


--[[

 _ _                _           _      _ _
( | )              | |         | |    ( | )
 V V_ __ ___   __ _| | __ _  __| |_   _V V
   | '_ ` _ \ / _` | |/ _` |/ _` | | | |
   | | | | | | (_| | | (_| | (_| | |_| |  _
   |_| |_| |_|\__,_|_|\__,_|\__,_|\__, | ( )
                                   __/ | |/
                                  |___/       

]]

['malady'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Malady1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "400",
		['castactiontime'] = "300" ,
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "150",
		['targetscheme'] = "all_other_units",
		['manacost'] = { [1] = 70,[2] = 80,[3] = 90,[4] = 100, },
		['cooldowntime'] = "12000" ,
		['showlinecast'] = "true",
		['linecastwidth'] = "150",
		['linecastrange'] = "865",
		['allowoutofrangecast'] = "true",
		['range'] = "865",
		['forcerange'] = "865",

		['malady_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Malady_Ability1_Orbit",
			['speed'] = "1000",
			['gravity'] = "5000",
			['modelscale'] = ".75",
			['model'] = "",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "200",
			['orbitclockwise'] = "false",
			['orbit'] = "true",
			['orbitradius'] = "10",
			['orbitspeed'] = "1137",
			['orbitmaxspeed'] = "1137",
			['orbitmaxtouchespertarget'] = "1",
			['orbitmodelangles'] = "0",
		},

		['malady_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Malady_Ability1_Toss",
			['gravity'] = "4000",
			['lifetime'] = "520",
			['useexactlifetime'] = "true",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Malady2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "200",
		['castactiontime'] = "200",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['showareacast'] = "true",
		['targetradius'] = "230",
		['manacost'] = { [1] = 65,[2] = 75,[3] = 85,[4] = 95, },
		['cooldowntime'] = "12000",
		['range'] = "600",
		['radius'] = "230",
		['targetselection'] = "all",
		['targetscheme'] = "enemy_units",
        },

	['ability_03'] = {
		['name'] = "Ability_Malady3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "200",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_vector",
		['targetradius'] = "325",
		['targetscheme'] = "enemy_units",
		['manacost'] = "80",
		['cooldowntime'] = { [1] = 30000,[2] = 22000,[3] = 16000,[4] = 12000, },
		['range'] = { [1] = 500,[2] = 650,[3] = 800,[4] = 950, },
		['showareacast'] = "true",
		['hoverareacastrange'] = { [1] = 500,[2] = 650,[3] = 800,[4] = 950, },
		['defaultvectorrotation'] = "90" ,
		['name'] = "Affector_Malady_Ability3",
		['target'] = "target_position",
		['direction'] = "target_position"		,
		['targetorigin'] = "delta_position",
		['directionorigin'] = "delta_position",
		['targetmodifier'] = "pointpastline",
		['directionmodifier'] = "pointpastline",
		['directionvalue'] = "325",
		['targetvalue'] = "-325",
		['firsttarget'] = ""  ,

		['malady_Projectile_ability_03_1'] = { 

			['name'] = "Projectile_Malady_Ability3",
			['speed'] = "5000",
			['gravity'] = "50000",
			['modelscale'] = "1",
			['canturn'] = "false",
			['flying'] = "false",
			['flyheight'] = "100",
			['lifetime'] = "-1",
		},
        },

	['ability_04'] = {
		['name'] = "Ability_Malady4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "850",
		['castactiontime'] = "400",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "enemy_units",
		['showareacast'] = "true",
		['manacost'] = { [1] = 110,[2] = 125,[3] = 140, },
		['cooldowntime'] = "60000",
		['range'] = "600",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['radius'] = "700",
		['targetselection'] = "closest",
		['targetscheme'] = "visible_enemy_heroes",
		['maxtotalimpacts'] = "1",

		['malady_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Malady_Ability4",
			['speed'] = "6000",
			['gravity'] = "0"	,
			['modelscale'] = "1",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "150",
		},
        },

}, 


--[[

 _ _          _                           _ _
( | )        (_)                         ( | )
 V V_ __ ___  _ _ __   ___ _ ____   ____ _V V
   | '_ ` _ \| | '_ \ / _ \ '__\ \ / / _` |
   | | | | | | | | | |  __/ |   \ V / (_| |  _
   |_| |_| |_|_|_| |_|\___|_|    \_/ \__,_| ( )
                                            |/
                                                    

]]

['minerva'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Minerva1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "200",
		['castactiontime'] = "100",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['activatescheme'] = "movement",
		['actiontype'] = "target_entity",
		['targetscheme'] = "all_other_units",
		['manacost'] = { [1] = 45,[2] = 50,[3] = 55,[4] = 60, },
		['cooldowntime'] = "0",
		['showareacast'] = "true",
		['maxcharges'] = "2",
		['range'] = "400",
		['queue'] = "dropmovement",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['alwaysshowtimer'] = "True",
		['radius'] = "450",
		['targetselection'] = "closest",
		['targetscheme'] = "visible_enemy_heroes",
		['maxtotalimpacts'] = "1",
		['disabled'] = "true",

		['minerva_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Minerva_Ability1",
			['speed'] = "2000",
			['modelscale'] = "1",
			['canturn'] = "false",
			['flying'] = "false",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Minerva2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "400",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 70,[2] = 80,[3] = 90,[4] = 100, },
		['cooldowntime'] = "10000",
		['range'] = "500",
		['showareacast'] = "true",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['radius'] = "700",
		['targetselection'] = "closest",
		['targetscheme'] = "visible_enemy_heroes",
		['maxtotalimpacts'] = "1",

		['minerva_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Minerva_Ability2",
			['speed'] = "2000",
			['gravity'] = "0",
			['modelscale'] = "2.75",
			['anim'] = "idle",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Minerva3",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 2,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "passive",
        },

	['ability_04'] = {
		['name'] = "Ability_Minerva4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "600",
		['castactiontime'] = "300",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "enemy_units",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['manacost'] = { [1] = 80,[2] = 95,[3] = 110, },
		['cooldowntime'] = "20000",
		['novoiceresponse'] = "true",
		['range'] = "200",
		['showareacast'] = "true",
		['hoverareacastrange'] = "200",
		['radius'] = "600",
		['targetselection'] = "closest",
		['targetscheme'] = "visible_enemy_heroes",
		['maxtotalimpacts'] = "1",
        },

}, 


--[[

 _ _                    _     _ _
( | )                  (_)   ( | )
 V V_ __ ___   _____  ___  ___V V
   | '_ ` _ \ / _ \ \/ / |/ _ \
   | | | | | | (_) >  <| |  __/  _
   |_| |_| |_|\___/_/\_\_|\___| ( )
                                |/   

]]

['moxie'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Moxie1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "500",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 65,[2] = 70,[3] = 75,[4] = 80, },
		['cooldowntime'] = "2500",
		['range'] = "625",
		['showareacast'] = "true",
		['hoverareacastrange'] = "625",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['radius'] = "650",
		['targetselection'] = "closest",
		['targetscheme'] = "visible_enemy_heroes",
		['maxtotalimpacts'] = "1",
        },

	['ability_02'] = {
		['name'] = "Ability_Moxie2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2" ,
		['casttime'] = "400",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = "90",
		['cooldowntime'] = "7000",
		['range'] = "1000",
		['forcerange'] = "1000",
		['allowoutofboundscast'] = "true",
		['allowoutofrangecast'] = "true",
		['showlinecast'] = "true",
		['linecastwidth'] = "150",
		['linecastrange'] = "1150",
		['hoverareacastrange'] = "1150",

		['moxie_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Moxie_Ability2",
			['speed'] = "900",
			['gravity'] = "0",
			['modelscale'] = "1.5",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "50",
			['touchradius'] = "150",
			['touchpropradius'] = "120",
			['touchpropanim'] = "hit",
			['hazardradius'] = "300",
			['hazardoffset'] = "150",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['touchradiusdiradjust'] = "true",
			['lifetime'] = "-1",
		},

		['moxie_Projectile_ability_02_2'] = { 

			['name'] = "Projectile_Moxie_Ability2_ManaReturn_1",
			['gravity'] = "2000",
			['lifetime'] = "300",
			['useexactlifetime'] = "true",
			['modelscale'] = "1.25",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "50",
		},

		['moxie_Projectile_ability_02_3'] = { 

			['name'] = "Projectile_Moxie_Ability2_ManaReturn_2",
			['gravity'] = "2000",
			['lifetime'] = "300",
			['useexactlifetime'] = "true",
			['modelscale'] = "1.25",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "50",
		},

		['moxie_Projectile_ability_02_4'] = { 

			['name'] = "Projectile_Moxie_Ability2_ManaReturn_3",
			['gravity'] = "2000",
			['lifetime'] = "300",
			['useexactlifetime'] = "true",
			['modelscale'] = "1.25",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "50",
		},

		['moxie_Projectile_ability_02_5'] = { 

			['name'] = "Projectile_Moxie_Ability2_ManaReturn_4",
			['gravity'] = "2000",
			['lifetime'] = "300",
			['useexactlifetime'] = "true",
			['modelscale'] = "1.25",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "50",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Moxie3",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 2,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "passive",
		['powerratiomultiplier'] = { [1] = 0.03,[2] = 0.07,[3] = 0.11,[4] = 0.15, },
        },

	['ability_04'] = {
		['name'] = "Ability_Moxie4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "200",
		['castactiontime'] = "200",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['targetradius'] = "325",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 115,[2] = 125,[3] = 135, },
		['cooldowntime'] = "90000",
		['hoverareacastrange'] = "1200",
		['range'] = "1200",
		['showareacast'] = "true",
        },

}, 


--[[

 _ _      _ _         _       _ _ _
( | )    (_) |       | |     (_| | )
 V V_ __  _| | _____ | | __ _ _ V V
   | '_ \| | |/ / _ \| |/ _` | |
   | | | | |   < (_) | | (_| | |   _
   |_| |_|_|_|\_\___/|_|\__,_|_|  ( )
                                  |/
                                        

]]

['nikolai'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Nikolai1",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['anim'] = "ability_1",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['inheritmovement'] = "true",
		['queue'] = "front",
		['cooldowntime'] = { [1] = 17000,[2] = 14000,[3] = 12000,[4] = 10000, },
		['manacost'] = "80",
		['alwaysshowtimer'] = "true",

		['nikolai_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Nikolai_Ability1",
			['lifetime'] = "600",
			['useexactlifetime'] = "true",
			['gravity'] = "10000",
			['modelscale'] = "2",
		},

		['nikolai_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Nikolai_Ability1_Dash",
			['speed'] = "1100",
			['gravity'] = "0",
			['lifetime'] = "500",
			['pathing'] = "true",
			['modelscale'] = "2",
			['impactdistance'] = "130",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Nikolai2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2" ,
		['casttime'] = "400",
		['castactiontime'] = "400",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = "100",
		['cooldowntime'] = "10000",
		['range'] = "950",
		['forcerange'] = "950",
		['allowoutofboundscast'] = "true",
		['allowoutofrangecast'] = "true",
		['showconecast'] = "true",
		['conecastwidth'] = "650",
		['conecastrange'] = "1200",
		['hoverareacastrange'] = "1050",

		['nikolai_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Nikolai_Ability2",
			['speed'] = "1000",
			['gravity'] = "0",
			['modelscale'] = "3",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "50",
			['touchradius'] = "90",
			['touchpropradius'] = "100",
			['touchpropanim'] = "hit",
			['hazardradius'] = "180",
			['hazardoffset'] = "90",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['touchradiusdiradjust'] = "true",
			['lifetime'] = "1000",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Nikolai3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "350",
		['castactiontime'] = "350",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['manacost'] = "75",
		['queue'] = "front",
		['inheritmovement'] = "true",
		['range'] = "600",
		['cooldowntime'] = "13000",
		['hoverareacastrange'] = "600",
		['alwaysshowtimer'] = "true",
		['radius'] = "600",
		['targetselection'] = "all",
		['targetscheme'] = "visible_enemy_units",

		['nikolai_Projectile_ability_03_1'] = { 

			['name'] = "Projectile_Nikolai_Ability3",
			['lifetime'] = "400",
			['useexactlifetime'] = "true",
			['gravity'] = "5000",
			['modelscale'] = "3",
			['curve'] = "-20000",
			['flying'] = "true",
			['flyheight'] = "100",
			['touchradius'] = "120",
			['touchpropradius'] = "120",
			['touchpropanim'] = "hit",
			['maxtouchespertarget'] = "1",
			['touchtargetscheme'] = "enemy_units",
		},

		['nikolai_Projectile_ability_03_2'] = { 

			['name'] = "Projectile_Nikolai_Ability3_Visual",
			['lifetime'] = "400",
			['useexactlifetime'] = "true",
			['gravity'] = "5000",
			['modelscale'] = "3",
			['curve'] = "-20000",
			['flying'] = "true",
			['flyheight'] = "175",
		},
        },

	['ability_04'] = {
		['name'] = "Ability_Nikolai4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "400",
		['castactiontime'] = "400",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_heroes",
		['queue'] = "dropmovement",
		['manacost'] = { [1] = 100,[2] = 110,[3] = 120, },
		['cooldowntime'] = { [1] = 60000,[2] = 50000,[3] = 40000, },
		['range'] = "525",
		['forcerange'] = "525",
		['allowoutofrangecast'] = "true",
		['showlinecast'] = "true",
		['linecastwidth'] = "130",
		['linecastrange'] = "590",
		['hoverareacastrange'] = "590",
		['showareacast'] = "false",
		['alwaysshowtimer'] = "true",

		['nikolai_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Nikolai_Ability4_Attack",
			['lifetime'] = "400",
			['useexactlifetime'] = "true",
			['radius'] = "1000",
			['targetselection'] = "closest",
			['targetscheme'] = "Nikolai_Location",
			['ignoreinvulnerable'] = "true",
		},

		['nikolai_Projectile_ability_04_2'] = { 

			['name'] = "Projectile_Nikolai_Ability4_Cliff",
			['speed'] = "1400",
			['modelscale'] = "1.0",
			['model'] = "",
			['canturn'] = "true",
			['touchcliffs'] = "true",
			['touchradius'] = "1",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "Nothing",
			['maxtouchespertarget'] = "1",
		},

		['nikolai_Projectile_ability_04_3'] = { 

			['name'] = "Projectile_Nikolai_Ability4_Follow",
			['speed'] = "1",
			['modelscale'] = "1" ,
			['orbitclockwise'] = "true",
			['orbit'] = "true",
			['orbitradius'] = "1",
			['orbitspeed'] = "1",
			['orbitmaxspeed'] = "1",
			['orbitmaxtouchespertarget'] = "1",
			['orbitmodelangles'] = "0",
			['lifetime'] = "1400",
		},

		['nikolai_Projectile_ability_04_4'] = { 

			['name'] = "Projectile_Nikolai_Ability4_Leap",
			['speed'] = "1400",
			['gravity'] = "0",
			['modelscale'] = "1.0",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "0",
			['touchradius'] = "130",
			['maxtouchespertarget'] = "1",
			['hazardradius'] = "200",
			['hazardoffset'] = "100",
			['hazardthreat'] = "extreme",
			['touchprojectileblockers'] = "true",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "enemy_heroes",
		},

		['nikolai_Projectile_ability_04_5'] = { 

			['name'] = "Projectile_Nikolai_Ability4_Raise",
			['lifetime'] = "400",
			['useexactlifetime'] = "true",
			['modelscale'] = "1",
			['model'] = "",
		},
        },

}, 


--[[

 _ _               _ _
( | )             ( | )
 V V_ __ __ _ _   _V V
   | '__/ _` | | | |
   | | | (_| | |_| |  _
   |_|  \__,_|\__, | ( )
               __/ | |/
              |___/        

]]

['ray'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Ray1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['targetradius'] = "350",
		['manacost'] = { [1] = 75,[2] = 80,[3] = 85,[4] = 90, },
		['cooldowntime'] = "4000",
		['maxcharges'] = "3",
		['range'] = "500",
		['showareacast'] = "true",
		['hoverareacastrange'] = "500",

		['ray_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Ray_Ability1",
			['speed'] = "650",
			['gravity'] = "0",
			['modelscale'] = "1.0",
			['model'] = "",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "2.5",
			['impactdistance'] = "60",
			['touchradius'] = "70",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "enemy_units",
			['pathing'] = "true",
		},

		['ray_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Ray_Ability1_Cast",
			['lifetime'] = "500",
			['useexactlifetime'] = "true",
			['gravity'] = "0",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "2.5",
			['modelscale'] = "1.6",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Ray2",
		['icon'] = "icon.tga",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['anim'] = "ability_2",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 70,[2] = 80,[3] = 90,[4] = 100, },
		['cooldowntime'] = "14000",
		['range'] = "550",
		['novoiceresponse'] = "true",
		['targetradius'] = "300",
		['showareacast'] = "true",
		['hoverareacastrange'] = "580",

		['ray_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Ray_Ability2_Affector",
			['lifetime'] = "400",
			['useexactlifetime'] = "true",
			['gravity'] = "13000",
			['model'] = "",
			['modelscale'] = "1.25",
		},

		['ray_Projectile_ability_02_2'] = { 

			['name'] = "Projectile_Ray_Ability2_Expand",
			['lifetime'] = "400",
			['useexactlifetime'] = "true",
			['gravity'] = "13000",
			['modelscale'] = ".9",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Ray3",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "passive",
		['cooldowntime'] = { [1] = 10000,[2] = 8000,[3] = 6000,[4] = 4000, },

		['ray_Projectile_ability_03_1'] = { 

			['name'] = "Projectile_Ray_Ability3",
			['speed'] = "9000",
			['gravity'] = "0",
		},
        },

	['ability_04'] = {
		['name'] = "Ability_Ray4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4b" ,
		['casttime'] = "600",
		['castactiontime'] = "600",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = "110",
		['cooldowntime'] = "90000",
		['range'] = "1800",
		['forcerange'] = "1800" ,
		['allowoutofboundscast'] = "true",
		['allowoutofrangecast'] = "true",
		['showlinecast'] = "true",
		['linecastrange'] = "1880",
		['linecastwidth'] = "120",

		['ray_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Ray_Ability4",
			['speed'] = "7000",
			['gravity'] = "0",
			['modelscale'] = "1.8",
			['touchradius'] = "120",
			['touchpropradius'] = "90",
			['touchpropanim'] = "flamehit",
			['maxtouchespertarget'] = "1" ,
			['touchtargetscheme'] = "enemy_units",
			['touchradiusdiradjust'] = "true",
			['alwaystransmitdata'] = "true",
		},
        },

}, 


--[[

 _ _                _    _ _
( | )              | |  ( | )
 V V_ __ ___   ___ | | __V V
   | '__/ _ \ / _ \| |/ /
   | | | (_) | (_) |   <    _
   |_|  \___/ \___/|_|\_\  ( )
                           |/     

]]

['rook'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Rook1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "100",
		['castactiontime'] = "100",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['responsetype'] = "Ability",
		['targetoffset'] = "0 0 0",
		['queue'] = "front",
		['manacost'] = "100",
		['cooldowntime'] = { [1] = 25000,[2] = 20000,[3] = 16000,[4] = 13000, },
		['range'] = "800",
		['forcerange'] = "800",
		['allowoutofrangecast'] = "true",
		['allowoutofboundscast'] = "true",
		['showlinecast'] = "true",
		['linecastrange'] = "800",
		['linecastmaxrange'] = "830",
		['linecastwidth'] = "130",
		['showareacast'] = "true",
		['alwaysshowtimer'] = "true",
		['ignorecooldown'] = "true",
		['anim'] = "",
		['icon'] = "icon_b.tga",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['manacost'] = "0",
		['actiontype'] = "no_target",
		['cooldowntime'] = "0",
		['activatescheme'] = "movement",
		['inheritmovement'] = "true",
		['noninterrupting'] = "true",
		['queue'] = "dropmovement",
		['ignorecooldown'] = "true",
		['anim'] = "",
		['icon'] = "icon_b.tga",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['manacost'] = "0",
		['actiontype'] = "no_target",
		['cooldowntime'] = "0",
		['activatescheme'] = "movement",
		['inheritmovement'] = "true",
		['noninterrupting'] = "true",
		['responsetype'] = "NoResponse",

		['rook_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Rook_Ability1",
			['speed'] = "1800",
			['gravity'] = "0",
			['impactdistance'] = "80",
			['modelscale'] = "4.1",
			['canturn'] = "0",
			['flying'] = "false",
			['flyheight'] = "0",
			['touchradius'] = "140",
			['touchpropradius'] = "140",
			['touchpropanim'] = "hit",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "enemy_units",
			['maxtouchespertarget'] = "1",
		},

		['rook_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Rook_Ability1_Anim",
			['speed'] = "1800",
			['gravity'] = "1500",
			['modelscale'] = "1.0",
			['model'] = "",
			['canturn'] = "false",
			['flying'] = "false",
			['flyheight'] = "0",
			['impactdistance'] = "550",
		},

		['rook_Projectile_ability_01_3'] = { 

			['name'] = "Projectile_Rook_Ability1_Zoom",
			['speed'] = "1800",
			['gravity'] = "1500",
			['modelscale'] = "1",
			['canturn'] = "0",
			['touchprojectileblockers'] = "true",
			['touchradius'] = "1",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "Nothing",
			['touchpropradius'] = "90",
			['touchpropanim'] = "hit",
			['radius'] = "500",
			['targetselection'] = "closest",
			['targetscheme'] = "all_other_visible_heroes",
			['maxtotalimpacts'] = "1",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Rook2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2_down",
		['casttime'] = "500",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['ischanneling'] = "true",
		['channeltime'] = "1500",
		['manacost'] = "75",
		['cooldowntime'] = { [1] = 22000,[2] = 18000,[3] = 15000,[4] = 12000, },
		['hoverareacastrange'] = "625",

		['rook_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Rook_Ability2_Damage",
			['speed'] = "1800",
			['modelscale'] = "1",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "50",
		},

		['rook_Projectile_ability_02_2'] = { 

			['name'] = "Projectile_Rook_Ability2_Orbit",
			['speed'] = "1000",
			['modelscale'] = "1",
			['canturn'] = "true",
			['flying'] = "true",
			['flyheight'] = "50",
			['orbitclockwise'] = "true",
			['orbit'] = "true",
			['orbitradius'] = "100",
			['orbitspeed'] = "250",
			['orbitmaxspeed'] = "250",
			['orbitmaxtouchespertarget'] = "1",
			['orbitmodelangles'] = "0",
			['lifetime'] = "2000",
			['inheritvisibilityfromtarget'] = "true",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Rook3",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "passive",
		['alwaysshowtimer'] = "true",
        },

	['ability_04'] = {
		['name'] = "Ability_Rook4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4_start",
		['casttime'] = "550",
		['castactiontime'] = "550",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['targetradius'] = "100",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 110,[2] = 125,[3] = 140, },
		['cooldowntime'] = "90000",
		['range'] = "20000",
		['forcerange'] = "20000",
		['allowoutofboundscast'] = "true",
		['allowoutofrangecast'] = "true",
		['showlinecast'] = "true",
		['dontshowhovercast'] = "true",
		['linecastrange'] = "20000",
		['linecastwidth'] = "150",

		['rook_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Rook_Ability4",
			['speed'] = "1800",
			['gravity'] = "0",
			['lifetime'] = "15000",
			['modelscale'] = "1.1",
			['canturn'] = "0",
			['flying'] = "true",
			['flyheight'] = "20",
			['touchradius'] = "150",
			['touchpropradius'] = "150",
			['touchpropanim'] = "hit",
			['hazardradius'] = "800",
			['hazardoffset'] = "650",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchtargetscheme'] = "enemy_heroes",
		},
        },

}, 


--[[

 _ _    _                 _    _ _
( | )  | |               | |  ( | )
 V V___| |__   __ _ _ __ | | __V V
   / __| '_ \ / _` | '_ \| |/ /
   \__ \ | | | (_| | | | |   <    _
   |___/_| |_|\__,_|_| |_|_|\_\  ( )
                                 |/        

]]

['shank'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Shank1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "250",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "self_position",
		['targetscheme'] = "enemy_units",
		['queue'] = "front",
		['allowoutofrangecast'] = "true",
		['targetradius'] = "400",
		['manacost'] = { [1] = 95,[2] = 100,[3] = 105,[4] = 110, },
		['cooldowntime'] = "10000" ,
		['radius'] = "400",
		['targetselection'] = "all",
		['targetscheme'] = "enemy_units",
        },

	['ability_02'] = {
		['name'] = "Ability_Shank2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "200",
		['castactiontime'] = "200",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['queue'] = "front",
		['allowoutofrangecast'] = "true",
		['manacost'] = "50",
		['cooldowntime'] = { [1] = 23000,[2] = 16000,[3] = 12000,[4] = 9000, },
		['range'] = "1100",
		['showlinecast'] = "true",
		['linecastrange'] = "1150",
		['linecastwidth'] = "150",
		['showareacast'] = "true",
        },

	['ability_03'] = {
		['name'] = "Ability_Shank3",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "passive",
		['alwaysshowtimer'] = "true",
		['maxcharges'] = "3",
        },

	['ability_04'] = {
		['name'] = "Ability_Shank4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['novoiceresponse'] = "true",
		['allowoutofrangecast'] = "true",
		['manacost'] = "95",
		['cooldowntime'] = { [1] = 35000,[2] = 30000,[3] = 25000, },
		['range'] = "900",
		['forcerange'] = "900",
		['allowoutofboundscast'] = "true",
		['showlinecast'] = "true",
		['linecastrange'] = "1000",
		['linecastwidth'] = "100",

		['shank_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Shank_Ability4",
			['speed'] = "1600",
			['gravity'] = "0",
			['modelscale'] = "2.5",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "90",
			['hazardradius'] = "300",
			['hazardoffset'] = "200",
			['touchradius'] = "100",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "enemy_nonboss_units",
			['touchpropradius'] = "120",
			['touchpropanim'] = "hit",
		},

		['shank_Projectile_ability_04_2'] = { 

			['name'] = "Projectile_Shank_Ability4_Return",
			['speed'] = "1600",
			['gravity'] = "0",
			['modelscale'] = "2.5",
			['canturn'] = "false",
			['flying'] = "true",
			['flyheight'] = "90",
			['impactdistance'] = "120",
			['touchpropradius'] = "120",
			['touchpropanim'] = "hit",
		},
        },

}, 


--[[

 _ _ _        _      _     _ _
( | ) |      (_)    (_)   ( | )
 V V| |_ _ __ ___  ___  ___V V
    | __| '__| \ \/ / |/ _ \
    | |_| |  | |>  <| |  __/  _
     \__|_|  |_/_/\_\_|\___| ( )
                             |/
                                     

]]

['trixie'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Trixie1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "400",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "260",
		['targetscheme'] = "enemy_units",
		['manacost'] = "100",
		['cooldowntime'] = "9000",
		['range'] = "625",
		['nohidecursor'] = "false",
		['showareacast'] = "true",
		['allowoutofrangecast'] = "true",
		['hoverareacastrange'] = "625",

		['trixie_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Trixie_Ability1",
			['speed'] = "1500" ,
			['touchpropradius'] = "120",
			['touchpropanim'] = "hit",
			['hazardradius'] = "350",
			['hazardoffset'] = "175",
			['radius'] = "260",
			['targetselection'] = "all",
			['targetscheme'] = "enemy_units",
		},

		['trixie_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Trixie_Ability1_Bounce",
			['gravity'] = "4000",
			['lifetime'] = "800",
			['useexactlifetime'] = "true",
			['modelscale'] = "1",
			['touchradius'] = "100",
			['radius'] = "260",
			['targetselection'] = "all",
			['targetscheme'] = "enemy_units",
			['radius'] = "260",
			['targetselection'] = "all",
			['targetscheme'] = "enemy_units",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Trixie2",
		['icon'] = "icon.tga",
		['anim'] = "test",
		['casttime'] = "100",
		['castactiontime'] = "100",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "target_position",
		['activatescheme'] = "movement",
		['manacost'] = "70",
		['range'] = "500",
		['forcerange'] = "500",
		['cooldowntime'] = { [1] = 22000,[2] = 18000,[3] = 15000,[4] = 12000, },
		['noturntotarget'] = "true",
		['novoiceresponse'] = "true",
		['showlinecast'] = "true",
		['linecastrange'] = "500",
		['linecastwidth'] = "50",
		['queue'] = "dropmovement",
		['showareacast'] = "false",
		['allowoutofrangecast'] = "true",
		['usepathforrange'] = "true",
		['alwaysshowtimer'] = "true",

		['trixie_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Trixie_Ability2",
			['speed'] = "1400",
			['gravity'] = "0",
			['lifetime'] = "400",
			['modelscale'] = "1",
			['pathing'] = "true",
			['canturn'] = "true",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Trixie3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "target_position",
		['activatescheme'] = "movement",
		['manacost'] = "100",
		['range'] = "1000",
		['forcerange'] = "900",
		['cooldowntime'] = "14000",
		['novoiceresponse'] = "true",
		['queue'] = "front",
		['showlinecast'] = "true",
		['linecastrange'] = "1000",
		['linecastwidth'] = "100",
		['showareacast'] = "false",
		['allowoutofrangecast'] = "true",
		['alwaysshowtimer'] = "true",

		['trixie_Projectile_ability_03_1'] = { 

			['name'] = "Projectile_Trixie_Ability3",
			['speed'] = "5000",
			['modelscale'] = "1",
			['canturn'] = "true",
			['touchradiusdiradjust'] = "true",
			['maxtouches'] = "1",
			['touchradius'] = "100",
			['touchtargetscheme'] = "enemy_units",
			['radius'] = "150",
			['targetselection'] = "all",
			['targetscheme'] = "enemy_units",
			['center'] = "target_entity",
			['ignore'] = "target_entity",
		},
        },

	['ability_04'] = {
		['name'] = "Ability_Trixie4",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "200",
		['castactiontime'] = "200",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['targetradius'] = "350",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 100,[2] = 110,[3] = 120, },
		['cooldowntime'] = "120000",
		['range'] = "700",
		['showareacast'] = "true",
        },

}, 


--[[

 _ _                          _ _ _ _            _ _
( | )                        (_) | (_)          ( | )
 V V__   _____ _ __ _ __ ___  _| | |_  ___  _ __ V V
    \ \ / / _ \ '__| '_ ` _ \| | | | |/ _ \| '_ \
     \ V /  __/ |  | | | | | | | | | | (_) | | | |  _
      \_/ \___|_|  |_| |_| |_|_|_|_|_|\___/|_| |_| ( )
                                                   |/   

]]

['vermillion'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Vermillion1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "500",
		['castactiontime'] = "300",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "300",
		['targetscheme'] = "enemy_units_and_Towers",
		['manacost'] = { [1] = 90,[2] = 105,[3] = 120,[4] = 135, },
		['cooldowntime'] = "8000",
		['range'] = "650",
		['showareacast'] = "true",
		['hoverhoverareacastrange'] = "650",
		['novoiceresponse'] = "true",

		['vermillion_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Vermillion_Ability1",
			['speed'] = "2000",
			['gravity'] = "0",
			['modelscale'] = "2",
			['model'] = "",
			['radius'] = "300",
			['targetselection'] = "all",
			['targetscheme'] = "enemy_units",
		},

		['vermillion_Projectile_ability_01_2'] = { 

			['name'] = "Projectile_Vermillion_Ability1_Art",
			['speed'] = "2000",
			['gravity'] = "20000",
			['modelscale'] = "1.25",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Vermillion2",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "passive",
		['maxcharges'] = { [1] = 6,[2] = 5,[3] = 4,[4] = 3, },
		['alwaysshowtimer'] = "true",

		['vermillion_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Vermillion_Ability2",
			['speed'] = "10000",
			['gravity'] = "0",
			['modelscale'] = ".45",
			['touchradius'] = "68",
			['touchpropradius'] = "60",
			['touchpropanim'] = "hit",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "enemy_units",
			['maxtouchespertarget'] = "1",
			['flying'] = "true",
			['flyheight'] = "115",
			['canturn'] = "0",
		},

		['vermillion_Projectile_ability_02_2'] = { 

			['name'] = "Projectile_Vermillion_Ability2_MainTargetAttack",
			['speed'] = "10000",
			['gravity'] = "0",
			['modelscale'] = ".4",
			['flying'] = "true",
			['flyheight'] = "40",
			['canturn'] = "0",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Vermillion3",
		['icon'] = "icon.tga",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['attackrange'] = { [1] = 45,[2] = 80,[3] = 115,[4] = 150, },
		['basedamage'] = { [1] = 2,[2] = 4,[3] = 6,[4] = 8, },
		['actiontype'] = "passive",
        },

	['ability_04'] = {
		['name'] = "Ability_Vermillion4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "300",
		['castactiontime'] = "150",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['targetradius'] = "200",
		['targetscheme'] = "enemy_units",
		['range'] = "600",
		['manacost'] = { [1] = 130,[2] = 150,[3] = 170, },
		['cooldowntime'] = "90000",
		['queue'] = "dropmovement",
		['showareacast'] = "true",

		['vermillion_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Vermillion_Ability4",
			['speed'] = "2300",
			['gravity'] = "0",
			['modelscale'] = "1",
			['center'] = "this_entity",
			['radius'] = "200",
			['targetselection'] = "all",
			['targetscheme'] = "enemy_units",
		},

		['vermillion_Projectile_ability_04_2'] = { 

			['name'] = "Projectile_Vermillion_Ability4_Art",
			['speed'] = "2000",
			['gravity'] = "30000",
			['modelscale'] = "1",
		},

		['vermillion_Projectile_ability_04_3'] = { 

			['name'] = "Projectile_Vermillion_Ability4_Push",
			['speed'] = "1300",
			['gravity'] = "25000",
			['modelscale'] = "1.0",
			['model'] = "",
			['canturn'] = "false",
			['touchprojectileblockers'] = "true",
			['touchradius'] = "1",
			['touchradiusdiradjust'] = "true",
			['touchtargetscheme'] = "Nothing",
		},
        },

}, 


--[[

 _ _                _ _
( | )              ( | )
 V V__   _______  __V V
    \ \ / / _ \ \/ /
     \ V /  __/>  <    _
      \_/ \___/_/\_\  ( )
                      |/   

]]

['vex'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Vex1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1" ,
		['casttime'] = "400",
		['castactiontime'] = "200",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 70,[2] = 75,[3] = 80,[4] = 85, },
		['cooldowntime'] = "6000",
		['range'] = "1200",
		['forcerange'] = "1200",
		['allowoutofrangecast'] = "true",
		['showlinecast'] = "true",
		['linecastrange'] = "1200",
		['linecastwidth'] = "120",

		['vex_Projectile_ability_01_1'] = { 

			['name'] = "Projectile_Vex_Ability1_Orbit",
			['lifetime'] = "1000",
			['speed'] = "200",
			['acceleration'] = "2250",
			['gravity'] = "0",
			['touchradius'] = "60",
			['touchpropradius'] = "60",
			['touchpropanim'] = "hit",
			['touchtargetscheme'] = "enemy_units",
			['modelscale'] = "1.1",
			['canturn'] = "true",
			['hazardradius'] = "440",
			['hazardoffset'] = "380",
			['homing'] = "true",
			['homingturnspeed'] = "0.07",
			['homingspeedmul'] = "1",
			['homingseekrange'] = "440",
			['hominglocktarget'] = "true",
			['homingunlockrange'] = "9999",
			['homingtargetscheme'] = "enemy_heroes",
			['homingseekstealth'] = "false",
		},
        },

	['ability_02'] = {
		['name'] = "Ability_Vex2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "self_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 85,[2] = 95,[3] = 105,[4] = 115, },
		['cooldowntime'] = "11000",
		['hoverareacastrange'] = "600",
		['queue'] = "front",
		['inheritmovement'] = "true",
		['alwaysshowtimer'] = "true",

		['vex_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Vex_Ability2",
			['speed'] = "800",
			['gravity'] = "3000",
			['modelscale'] = "1",
			['curve'] = "4000",
		},

		['vex_Projectile_ability_02_2'] = { 

			['name'] = "Projectile_Vex_Ability2_b",
			['speed'] = "700",
			['gravity'] = "3000",
			['modelscale'] = "1",
			['curve'] = "-4000",
		},

		['vex_Projectile_ability_02_3'] = { 

			['name'] = "Projectile_Vex_Ability2_c",
			['speed'] = "900",
			['gravity'] = "1600",
			['modelscale'] = "1",
			['curve'] = "-1000",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Vex3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "100",
		['castactiontime'] = "0",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "ally_units",
		['manacost'] = "75",
		['cooldowntime'] = { [1] = 24000,[2] = 21000,[3] = 18000,[4] = 15000, },
		['showareacast'] = "true",
		['hoverareacastrange'] = "580",
		['range'] = "550",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",
		['radius'] = "750",
		['targetselection'] = "closest",
		['targetscheme'] = "ally_heroes",
		['maxtotalimpacts'] = "1",
        },

	['ability_04'] = {
		['name'] = "Ability_Vex4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "0",
		['castactiontime'] = "0",
		['channeltime'] = "2000",
		['ischanneling'] = "true",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_position",
		['targetscheme'] = "Vex_Teleport",
		['manacost'] = { [1] = 110,[2] = 120,[3] = 130, },
		['cooldowntime'] = { [1] = 125000,[2] = 110000,[3] = 95000, },
		['targetradius'] = "400",
		['range'] = "999999",
		['hoverareacastrange'] = "1",
		['radius'] = "400",
		['targetselection'] = "all",
		['targetscheme'] = "enemy_units",
        },

}, 


--[[

 _ _         _         _ _
( | )       | |       ( | )
 V V______ _| | ___   _V V
   |_  / _` | |/ / | | |
    / / (_| |   <| |_| |  _
   /___\__,_|_|\_\\__,_| ( )
                         |/     

]]

['zaku'] =  { 
	['ability_01'] = {
		['name'] = "Ability_Zaku1",
		['icon'] = "icon.tga",
		['anim'] = "ability_1",
		['casttime'] = "100",
		['castactiontime'] = "100",
		['channeltime'] = "3000",
		['ischanneling'] = "true",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 70,[2] = 80,[3] = 90,[4] = 100, },
		['cooldowntime'] = "8000",
		['showlinecast'] = "true",
		['linecastwidth'] = "150",
		['linecastrange'] = "865",
		['allowoutofrangecast'] = "true",
		['range'] = "865",
		['forcerange'] = "865",
		['hoverareacastrange'] = "865",
		['alwaysshowtimer'] = "true",
        },

	['ability_02'] = {
		['name'] = "Ability_Zaku2",
		['icon'] = "icon.tga",
		['anim'] = "ability_2",
		['casttime'] = "250",
		['castactiontime'] = "250",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_position",
		['targetradius'] = "175",
		['targetscheme'] = "enemy_units",
		['manacost'] = { [1] = 70,[2] = 80,[3] = 90,[4] = 100, },
		['cooldowntime'] = "12000",
		['range'] = "550",
		['showareacast'] = "true",
		['maxcharges'] = "2",

		['zaku_Projectile_ability_02_1'] = { 

			['name'] = "Projectile_Zaku_Ability2",
			['lifetime'] = "300",
			['useexactlifetime'] = "true",
			['gravity'] = "12000"	,
			['modelscale'] = "1",
			['canturn'] = "false",
		},
        },

	['ability_03'] = {
		['name'] = "Ability_Zaku3",
		['icon'] = "icon.tga",
		['anim'] = "ability_3",
		['casttime'] = "250",
		['castactiontime'] = "250",
		['maxlevel'] = "4",
		['requiredlevel'] = { [1] = 1,[2] = 3,[3] = 5,[4] = 7, },
		['actiontype'] = "target_self",
		['targetradius'] = "0",
		['manacost'] = "90",
		['cooldowntime'] = "12000",
		['range'] = "550",
		['queue'] = "front",
		['noentercombat'] = "true",
		['showareacast'] = "true" ,
		['maxcharges'] = "3",

		['zaku_Projectile_ability_03_1'] = { 

			['name'] = "Projectile_Zaku_Ability3",
			['lifetime'] = "750",
			['useexactlifetime'] = "true",
			['gravity'] = "3000"	,
			['modelscale'] = "1",
			['canturn'] = "false",
		},
        },

	['ability_04'] = {
		['name'] = "Ability_Zaku4",
		['icon'] = "icon.tga",
		['anim'] = "ability_4",
		['casttime'] = "300",
		['castactiontime'] = "300",
		['maxlevel'] = "3",
		['requiredlevel'] = { [1] = 6,[2] = 11,[3] = 15, },
		['actiontype'] = "target_entity",
		['targetscheme'] = "ally_heroes",
		['showareacast'] = "true",
		['manacost'] = { [1] = 110,[2] = 125,[3] = 140, },
		['cooldowntime'] = { [1] = 120000,[2] = 90000,[3] = 60000, },
		['range'] = "800",
		['doubleactivate'] = "true",
		['doubleactivatenoninterrupting'] = "true",

		['zaku_Projectile_ability_04_1'] = { 

			['name'] = "Projectile_Zaku_Ability4",
			['speed'] = "3000",
			['gravity'] = "20000"	,
			['modelscale'] = "1",
		},
        },

}, 
}
end 
