return {
	armaca = {
		acceleration = 0.07,
		brakerate = 0.4275,
		buildcostenergy = 12000,
		buildcostmetal = 280,
		builddistance = 136,
		builder = true,
		shownanospray = false,
		buildpic = "ARMACA.DDS",
		buildtime = 17763,
		canfly = true,
		canmove = true,
		category = "ALL NOTLAND MOBILE NOTSUB ANTIFLAME ANTIEMG ANTILASER VTOL NOWEAPON NOTSHIP NOTHOVER",
		collide = true,
		cruisealt = 80,
		description = "Tech Level 2",
		energymake = 10,
		energystorage = 50,
		energyuse = 10,
		explodeas = "smallExplosionGeneric-builder",
		footprintx = 2,
		footprintz = 2,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 180,
		maxslope = 10,
		maxvelocity = 6.4,
		maxwaterdepth = 0,
		metalmake = 0.1,
		metalstorage = 50,
		name = "Advanced Construction Aircraft",
		objectname = "ARMACA",
		radardistance = 50,
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-builder",
		sightdistance = 383.5,
		terraformspeed = 650,
		turninplaceanglelimit = 360,
		turnrate = 240,
		workertime = 100,
		blocking = false,
		buildoptions = {
			[1] = "armfus",
			[2] = "armckfus",
			[3] = "armageo",
			[4] = "armgmm",
			[5] = "armmoho",
			[6] = "armmmkr",
			[7] = "armuwadves",
			[8] = "armuwadvms",
			[9] = "armarad",
			[10] = "armveil",
			[11] = "armfort",
			[12] = "armasp",
			[13] = "armtarg",
			[14] = "armsd",
			[15] = "armgate",
			[16] = "armamb",
			[17] = "armpb",
			[18] = "armanni",
			[19] = "armflak",
			[20] = "armmercury",
			[21] = "armemp",
			[22] = "armamd",
			[23] = "armsilo",
			[24] = "armbrtha",
			[25] = "armvulc",
			[26] = "armdf",
			[27] = "armap",
			[28] = "armaap",
			[29] = "armplat",
		},
		customparams = {
			wingsurface = 0.25,
			area_mex_def = "armmoho",
			techlevel = 2,
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg3-builder",
				"deathceg4-builder",
				"deathceg2-builder",
			},
			crashExplosionGenerators = {
				"crashing-small",
				"crashing-small",
				"crashing-small2",
				"crashing-small3",
				"crashing-small3",
			}
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vtolarmv",
			},
			select = {
				[1] = "vtolarac",
			},
		},
	},
}
