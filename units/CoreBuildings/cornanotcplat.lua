return {
	cornanotcplat = {
		acceleration = 0,
		brakerate = 4.5,
		buildcostenergy = 3200,
		buildcostmetal = 200,
		builddistance = 400,
		builder = true,
		shownanospray = false,
		buildingGroundDecalDecaySpeed=30,
		buildingGroundDecalSizeX=5,
		buildingGroundDecalSizeY=5,
		buildingGroundDecalType="cornanotc_aoplane.dds",
		buildpic = "CORNANOTCPLAT.DDS",
		buildtime = 5312,
		cantbetransported = false,
		canrepeat = false,
		category = "ALL NOTSUB  NOWEAPON NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "31 128 31",
		collisionvolumetype = "CylY",
		description = "Repairs and builds in large radius",
		energyuse = 30,
		explodeas = "nanoboom",
		floater = true,
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		mass = 700,
		maxdamage = 500,
		maxslope = 10,
		maxwaterdepth = 50000000,
		movementclass = "NANO",
		name = "Nano Turret",
		objectname = "CORNANOTCPLAT",
		seismicsignature = 0,
		selfdestructas = "nanoboom",
		sightdistance = 380,
		terraformspeed = 1000,
		turnrate = 1,
		upright = true,
		useBuildingGroundDecal = true,
		workertime = 200,
		customparams = {

		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture1",
			repair = "repair2",
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
				[1] = "vcormove",
			},
			select = {
				[1] = "vcorsel",
			},
		},
	},
}
