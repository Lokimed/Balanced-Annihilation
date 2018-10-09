return {
	corcsa = {
		acceleration = 0.072,
		brakerate = 0.4275,
		buildcostenergy = 8200,
		buildcostmetal = 140,
		builddistance = 136,
		builder = true,
		shownanospray = false,
		buildpic = "CORCSA.DDS",
		buildtime = 12000,
		canfly = true,
		canmove = true,
		cansubmerge = true,
		category = "ALL NOTLAND MOBILE NOTSUB ANTIFLAME ANTIEMG ANTILASER VTOL NOWEAPON NOTSHIP NOTHOVER",
		collide = true,
		cruisealt = 55,
		description = "Tech Level 1",
		energymake = 20,
		energystorage = 75,
		energyuse = 20,
		explodeas = "smallexplosiongeneric-builder",
		footprintx = 2,
		footprintz = 2,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 390,
		maxslope = 10,
		maxvelocity = 7.25,
		maxwaterdepth = 255,
		metalmake = 0.2,
		metalstorage = 75,
		name = "Construction Seaplane",
		objectname = "CORCSA",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-builder",
		sightdistance = 351,
		terraformspeed = 300,
		turninplaceanglelimit = 360,
		turnrate = 240,
		workertime = 55,
		blocking = false,
		buildoptions = {
			"corsolar",
			"coradvsol",
			"corwin",
			"corgeo",
			"cormstor",
			"corestor",
			"cormex",
			"corexp",
			"cormakr",
			"corlab",
			"corvp",
			"corap",
			"corhp",
			"cornanotc",
			"cornanotcplat",
			"coreyes",
			"corrad",
			"cordrag",
			"cormaw",
			"corllt",
			"corhllt",
			"corhlt",
			"corpun",
			"corrl",
			"cormadsam",
			"corerad",
			"cordl",
			"corjamt",
			"corjuno",
			
			"corfhp",
			"corsy",
			"coramsub",
			"corplat",
			"cortide",
			"coruwmex",
			"corfmkr",
			"coruwms",
			"coruwes",
			
			"corfdrag",
			"corfrad",
			"corgplat",
			"corfhlt",
			"corfrt",
            "cortl",
		},
		customparams = {
			
			area_mex_def = "coruwmex",
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2-builder",
				"deathceg3-builder",
				"deathceg4-builder",
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "seapsel2",
			},
		},
	},
}
