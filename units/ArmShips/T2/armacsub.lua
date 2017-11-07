return {
	armacsub = {
		buildcostenergy = 0.8*11500,
		buildcostmetal = 0.8*850,
		builddistance = 160,
		builder = true,
		shownanospray = false,
		buildpic = "ARMACSUB.DDS",
		buildtime = 0.75 * 1.5 * 0.8*23900,
		canmove = true,
		category = "UNDERWATER ALL NOTLAND MOBILE NOWEAPON NOTAIR NOTHOVER",
		collisionvolumeoffsets = "0 0 -1",
		collisionvolumescales = "31 30 73",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Tech Level 2",
		energymake = 30,
		energystorage = 150,
		energyuse = 30,
		explodeas = "smallExplosionGeneric-uw",
		footprintx = 3,
		footprintz = 5,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 360,
		metalmake = 0.3,
		metalstorage = 150,
		minwaterdepth = 20,
		movementclass = "UBOAT33X5",
		name = "Advanced Construction Sub",
		objectname = "ARMACSUB",
		radardistance = 50,
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-uw",
		sightdistance = 156,
		terraformspeed = 1500,
		waterline = 35,
		workertime = 300,
				--move
		brakerate =  2.40/20,
		acceleration = 2.40/90,
		maxvelocity = 2.40,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.64*2.40,
		turnrate = 270,	
		--end move
		buildoptions = {
			"armuwadves",
			"armuwadvms",
			"armuwfus",
			"armuwmme",
			"armuwmmm",
			"armfatf",
			"armplat",
			"armsy",
			"armasy",
			"armshltxuw",
			"armamsub",
			"armason",
			"armfflak",
			"armatl",
			--"seaplatform",
		},
		customparams = {
			
			area_mex_def = "armuwmme",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0 2.5122070312e-05 0.236854553223",
				collisionvolumescales = "49.0049743652 25.7252502441 71.2612762451",
				collisionvolumetype = "Box",
				damage = 216,
				description = "Advanced Construction Sub Wreckage",
				energy = 0.8*0,
				featuredead = "HEAP",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 0.8*452,
				object = "ARMACSUB_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Advanced Construction Sub Heap",
				energy = 0.8*0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 0.8*207,
				object = "2X2A",
                collisionvolumescales = "35.0 4.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			capture = "capture1",
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
				[1] = "suarmmov",
			},
			select = {
				[1] = "suarmsel",
			},
		},
	},
}
