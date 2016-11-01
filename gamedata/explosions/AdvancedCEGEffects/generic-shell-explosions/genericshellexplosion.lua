local root = "genericshellexplosion"
local definitions = {
  [root.."-small"] = {
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        alwaysvisible      = true,
        heat               = 8,
        heatfalloff        = 1.1,
        maxheat            = 18,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 2,
        sizegrowth         = 8,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
	
    groundflash = {
      air                = true,
      alwaysvisible      = true,
      flashalpha         = 0.15,
      flashsize          = 77,
      ground             = true,
      ttl                = 13,
      water              = true, 
	  underwater         = true,
      color = {
        [1]  = 1,
        [2]  = 0.7,
        [3]  = 0.3,
      },
    },
	
    dirt = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = false,
      properties = {
        airdrag            = 1,
        alwaysvisible      = true,
        colormap           = [[0.04 0.03 0.01 0   0.1 0.07 0.033 0.66    0.1 0.07 0.03 0.58   0.08 0.065 0.035 0.47   0.075 0.07 0.06 0.4   0 0 0 0  ]],
        directional        = true,
        emitrot            = 20,
        emitrotspread      = 40,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 22,
        particlelife       = 26,
        particlelifespread = 8,
        particlesize       = 1.2,
        particlesizespread = -1,
        particlespeed      = 1.3,
        particlespeedspread = 2.1,
        pos                = [[0, 4, 0]],
        sizegrowth         = -0.01,
        sizemod            = 1,
        texture            = [[bigexplosmoke]],
        useairlos          = false,
      },
    },
    dirt2 = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = false,
      properties = {
        airdrag            = 1,
        alwaysvisible      = true,
        colormap           = [[0.04 0.03 0.01 0   0.1 0.07 0.033 0.66    0.1 0.07 0.03 0.58   0.08 0.065 0.035 0.47   0.075 0.07 0.06 0.4   0 0 0 0  ]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 11,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 9,
        particlelife       = 30,
        particlelifespread = 10,
        particlesize       = 1.2,
        particlesizespread = -1,
        particlespeed      = 1.5,
        particlespeedspread = 2.7,
        pos                = [[0, 4, 0]],
        sizegrowth         = -0.01,
        sizemod            = 1,
        texture            = [[bigexplosmoke]],
        useairlos          = false,
      },
    },
    clouddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.91,
        alwaysvisible      = true,
        colormap           = [[0.02 0.02 0.02 0.03  0.055 0.055 0.055 0.066  0.05 0.05 0.05 0.052  0.03 0.03 0.03 0.028  0 0 0 0]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 4,
        emitvector         = [[0.25, 0.8, 0.25]],
        gravity            = [[0, 0.025, 0]],
        numparticles       = 3,
        particlelife       = 40,
        particlelifespread = 90,
        particlesize       = 10,
        particlesizespread = 20,
        particlespeed      = 3,
        particlespeedspread = 3,
        pos                = [[0, 6, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1.0,
        texture            = [[bigexplosmoke]],
      },
    },
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = false,
      properties = {
        airdrag            = 0.92,
        alwaysvisible      = true,
        colormap           = [[0.15 0.13 0.09 0.14 	0 0 0 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = -2,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.1, 0]],
        numparticles       = 44,
        particlelife       = 0,
        particlelifespread = 25,
        particlesize       = 3,
        particlesizespread = 2,
        particlespeed      = 2.9,
        particlespeedspread = 1,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0.15,
        sizemod            = 1.0,
        texture            = [[bigexplosmoke]],
      },
    },
    kickedupwater = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true, 
	  underwater         = true,
      properties = {
        airdrag            = 0.87,
        alwaysvisible      = true,
        colormap           = [[0.7 0.7 0.9 0.35	0 0 0 0.0]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 5,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.1, 0]],
        numparticles       = 30,
        particlelife       = 2,
        particlelifespread = 15,
        particlesize       = 0.66,
        particlesizespread = 1,
        particlespeed      = 2,
        particlespeedspread = 6,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1.0,
        texture            = [[wake]],
      },
    },
    explosion = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        airdrag            = 0.77,
        alwaysvisible      = true,
        colormap           = [[0 0 0 0   1 0.9 0.6 0.09   0.9 0.5 0.2 0.066   0.66 0.28 0.04 0.033   0 0 0 0]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 18,
        particlelife       = 6,
        particlelifespread = 5,
        particlesize       = 0.7,
        particlesizespread = 2.4,
        particlespeed      = 0.6,
        particlespeedspread = 3.2,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.33,
        sizemod            = 1.1,
        texture            = [[flashside2]],
        useairlos          = false,
      },
    },
    outerflash = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        alwaysvisible      = true,
        heat               = 8,
        heatfalloff        = 1.1,
        maxheat            = 20,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1.2,
        sizegrowth         = 3,
        speed              = [[0, 1 0, 0]],
        texture            = [[orangenovaexplo]],
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        airdrag            = 1,
        alwaysvisible      = true,
        colormap           = [[0.8 0.5 0.2 0.01   0.9 0.5 0.2 0.017   0 0 0 0]],
        directional        = true,
        emitrot            = 35,
        emitrotspread      = 30,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 22,
        particlelife       = 1,
        particlelifespread = 7,
        particlesize       = 2,
        particlesizespread = 4,
        particlespeed      = 1.5,
        particlespeedspread = 4.2,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 0.8,
        texture            = [[gunshot]],
        useairlos          = false,
      },
    },
    underwaterexplosionsparks = {
      class              = [[CSimpleParticleSystem]],
      count              = 2,
      underwater         = 1,
      properties = {
        airdrag            = 0.9,
        alwaysvisible      = true,
        colormap           = [[0.7 0.8 0.9 0.03   0.2 0.5 0.9 0.01		0 0 0 0.0]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.5, 0]],
        numparticles       = 4,
        particlelife       = 4,
        particlelifespread = 15,
        particlesize       = 0.4,
        particlesizespread = 0,
        particlespeed      = 2.5,
        particlespeedspread = 3,
        pos                = [[0, 2, 0]],
        sizegrowth         = 2,
        sizemod            = 0.26,
        texture            = [[wake]],
        useairlos          = false,
      },
    },
    outerflash = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        alwaysvisible      = true,
        heat               = 10,
        heatfalloff        = 2.5,
        maxheat            = 30,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 8,
        sizegrowth         = 1,
        speed              = [[0, 1 0, 0]],
        texture            = [[orangenovaexplo]],
      },
    },
	
  },

  [root.."-medium"] = {
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        alwaysvisible      = true,
        heat               = 10,
        heatfalloff        = 1.3,
        maxheat            = 20,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 10,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
    groundflash = {
      air                = true,
      alwaysvisible      = true,
      flashalpha         = 0.21,
      flashsize          = 120,
      ground             = true,
      ttl                = 15,
      water              = true, 
	  underwater         = true,
      color = {
        [1]  = 1,
        [2]  = 0.8,
        [3]  = 0.3,
      },
    },
    kickedupwater = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true, 
	  underwater         = true,
      properties = {
        airdrag            = 0.87,
        alwaysvisible      = true,
        colormap           = [[0.7 0.7 0.9 0.35	0 0 0 0.0]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 5,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.1, 0]],
        numparticles       = 120,
        particlelife       = 2,
        particlelifespread = 30,
        particlesize       = 1,
        particlesizespread = 1,
        particlespeed      = 10,
        particlespeedspread = 6,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1.0,
        texture            = [[wake]],
      },
    },
    explosion = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        airdrag            = 0.82,
        alwaysvisible      = true,
        colormap           = [[0 0 0 0   1 0.9 0.6 0.09   0.9 0.5 0.2 0.066   0.66 0.28 0.04 0.033   0 0 0 0]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 50,
        particlelife       = 4,
        particlelifespread = 9,
        particlesize       = 2.5,
        particlesizespread = 8,
        particlespeed      = 1,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.3,
        sizemod            = 1,
        texture            = [[flashside2]],
        useairlos          = false,
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        airdrag            = 1,
        alwaysvisible      = true,
        colormap           = [[0.8 0.5 0.2 0.01   0.9 0.5 0.2 0.017   0 0 0 0]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 35,
        particlelife       = 2,
        particlelifespread = 8,
        particlesize       = 1.7,
        particlesizespread = 8,
        particlespeed      = 1.5,
        particlespeedspread = 5.5,
        pos                = [[0, 4, 0]],
        sizegrowth         = 1,
        sizemod            = 0.8,
        texture            = [[gunshot]],
        useairlos          = false,
      },
    },
    dirt = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = false,
      properties = {
        airdrag            = 0.96,
        alwaysvisible      = true,
        colormap           = [[0.04 0.03 0.01 0   0.1 0.07 0.033 0.66    0.1 0.07 0.03 0.58   0.08 0.065 0.035 0.47   0.075 0.07 0.06 0.4   0 0 0 0  ]],
        directional        = true,
        emitrot            = 25,
        emitrotspread      = 33,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 33,
        particlelife       = 18,
        particlelifespread = 14,
        particlesize       = 1.6,
        particlesizespread = -1.3,
        particlespeed      = 2.7,
        particlespeedspread = 3,
        pos                = [[0, 3, 0]],
        sizegrowth         = -0.01,
        sizemod            = 1,
        texture            = [[bigexplosmoke]],
        useairlos          = false,
      },
    },
    dirt2 = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = false,
      properties = {
        airdrag            = 0.96,
        alwaysvisible      = true,
        colormap           = [[0.04 0.03 0.01 0   0.1 0.07 0.033 0.66    0.1 0.07 0.03 0.58   0.08 0.065 0.035 0.47   0.075 0.07 0.06 0.4   0 0 0 0  ]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 13,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 16,
        particlelife       = 33,
        particlelifespread = 15,
        particlesize       = 1.5,
        particlesizespread = -1.25,
        particlespeed      = 2.5,
        particlespeedspread = 5,
        pos                = [[0, 3, 0]],
        sizegrowth         = -0.01,
        sizemod            = 1,
        texture            = [[bigexplosmoke]],
        useairlos          = false,
      },
    },
    clouddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.88,
        alwaysvisible      = true,
        colormap           = [[0.02 0.02 0.02 0.03  0.055 0.055 0.055 0.066  0.05 0.05 0.05 0.052  0.03 0.03 0.03 0.028  0 0 0 0]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 4,
        emitvector         = [[0.5, 1, 0.5]],
        gravity            = [[0, 0.025, 0]],
        numparticles       = 3,
        particlelife       = 50,
        particlelifespread = 270,
        particlesize       = 50,
        particlesizespread = 50,
        particlespeed      = 2.5,
        particlespeedspread = 3,
        pos                = [[0, 4, 0]],
        sizegrowth         = 0.6,
        sizemod            = 1.0,
        texture            = [[bigexplosmoke]],
      },
    },
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = false,
      properties = {
        airdrag            = 0.92,
        alwaysvisible      = true,
        colormap           = [[0.14 0.12 0.09 0.13 	0 0 0 0.0]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = -2,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.03, 0]],
        numparticles       = 80,
        particlelife       = 5,
        particlelifespread = 55,
        particlesize       = 4,
        particlesizespread = 2.5,
        particlespeed      = 3,
        particlespeedspread = 1.2,
        pos                = [[0, 5, 0]],
        sizegrowth         = 0.2,
        sizemod            = 1.0,
        texture            = [[bigexplosmoke]],
      },
    },
    outerflash = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        alwaysvisible      = true,
        heat               = 14,
        heatfalloff        = 1.3,
        maxheat            = 40,
        pos                = [[r-2 r2, 4, r-2 r2]],
        size               = 10,
        sizegrowth         = 1.2,
        speed              = [[0, 1 0, 0]],
        texture            = [[orangenovaexplo]],
      },
    },
  },

  [root.."-large"] = {
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        alwaysvisible      = true,
        heat               = 10,
        heatfalloff        = 1.3,
        maxheat            = 20,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 2,
        sizegrowth         = 16,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
	
    groundflash = {
      air                = true,
      alwaysvisible      = true,
      flashalpha         = 0.24,
      flashsize          = 200,
      ground             = true,
      ttl                = 19,
      water              = true, 
	  underwater         = true,
      color = {
        [1]  = 1,
        [2]  = 0.7,
        [3]  = 0.3,
      },
    },
    kickedupwater = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true, 
	  underwater         = true,
      properties = {
        airdrag            = 0.87,
        alwaysvisible      = true,
        colormap           = [[0.7 0.7 0.9 0.35	0 0 0 0.0]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 5,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.1, 0]],
        numparticles       = 120,
        particlelife       = 2,
        particlelifespread = 30,
        particlesize       = 2,
        particlesizespread = 1,
        particlespeed      = 10,
        particlespeedspread = 6,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1.0,
        texture            = [[wake]],
      },
    },
    explosion = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        airdrag            = 0.82,
        alwaysvisible      = true,
        colormap           = [[0 0 0 0   1 0.9 0.6 0.09   0.9 0.5 0.2 0.066   0.66 0.28 0.04 0.033   0 0 0 0]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1.1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 75,
        particlelife       = 1,
        particlelifespread = 17,
        particlesize       = 4,
        particlesizespread = 15,
        particlespeed      = 0.4,
        particlespeedspread = 6,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.36,
        sizemod            = 1,
        texture            = [[flashside2]],
        useairlos          = false,
      },
    },
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        airdrag            = 1,
        alwaysvisible      = true,
        colormap           = [[0.8 0.5 0.2 0.01   0.9 0.5 0.2 0.017   0 0 0 0]],
        directional        = true,
        emitrot            = 35,
        emitrotspread      = 35,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.3, 0]],
        numparticles       = 90,
        particlelife       = 6,
        particlelifespread = 12,
        particlesize       = 6,
        particlesizespread = 10,
        particlespeed      = 1.5,
        particlespeedspread = 4.5,
        pos                = [[0, 4, 0]],
        sizegrowth         = 0.5,
        sizemod            = 0.85,
        texture            = [[gunshot]],
        useairlos          = false,
      },
    },
    dirt = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = false,
      properties = {
        airdrag            = 1,
        alwaysvisible      = true,
        colormap           = [[0.04 0.03 0.01 0   0.1 0.07 0.033 0.66    0.1 0.07 0.03 0.58   0.08 0.065 0.035 0.47   0.075 0.07 0.06 0.4   0 0 0 0  ]],
        directional        = true,
        emitrot            = 15,
        emitrotspread      = 36,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.33, 0]],
        numparticles       = 90,
        particlelife       = 50,
        particlelifespread = 20,
        particlesize       = 1.7,
        particlesizespread = -1.4,
        particlespeed      = 3.3,
        particlespeedspread = 3.3,
        pos                = [[0, 6, 0]],
        sizegrowth         = -0.01,
        sizemod            = 1,
        texture            = [[bigexplosmoke]],
        useairlos          = false,
      },
    },
    dirt2 = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = false,
      properties = {
        airdrag            = 1,
        alwaysvisible      = true,
        colormap           = [[0.04 0.03 0.01 0   0.1 0.07 0.033 0.66    0.1 0.07 0.03 0.58   0.08 0.065 0.035 0.47   0.075 0.07 0.06 0.4   0 0 0 0  ]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 13,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.33, 0]],
        numparticles       = 55,
        particlelife       = 60,
        particlelifespread = 20,
        particlesize       = 1.7,
        particlesizespread = -1.4,
        particlespeed      = 2.7,
        particlespeedspread = 5.5,
        pos                = [[0, 6, 0]],
        sizegrowth         = -0.01,
        sizemod            = 1,
        texture            = [[bigexplosmoke]],
        useairlos          = false,
      },
    },
    clouddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.92,
        alwaysvisible      = true,
        colormap           = [[0.02 0.02 0.02 0.03  0.055 0.055 0.055 0.066  0.05 0.05 0.05 0.052  0.03 0.03 0.03 0.03  0 0 0 0]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 4,
        emitvector         = [[0.5, 1, 0.5]],
        gravity            = [[0, 0.025, 0]],
        numparticles       = 3,
        particlelife       = 80,
        particlelifespread = 440,
        particlesize       = 75,
        particlesizespread = 75,
        particlespeed      = 3,
        particlespeedspread = 3,
        pos                = [[0, 4, 0]],
        sizegrowth         = 0.25,
        sizemod            = 1.0,
        texture            = [[bigexplosmoke]],
      },
    },
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = false,
      properties = {
        airdrag            = 0.92,
        alwaysvisible      = true,
        colormap           = [[0.14 0.12 0.09 0.13 	0 0 0 0.0]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = -2,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.02, 0]],
        numparticles       = 120,
        particlelife       = 10,
        particlelifespread = 70,
        particlesize       = 3.7,
        particlesizespread = 1.4,
        particlespeed      = 6.6,
        particlespeedspread = 2.6,
        pos                = [[0, 4, 0]],
        sizegrowth         = 0.6,
        sizemod            = 1.0,
        texture            = [[bigexplosmoke]],
      },
    },
    outerflash = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true, 
	  underwater         = true,
      properties = {
        alwaysvisible      = true,
        heat               = 14,
        heatfalloff        = 1.3,
        maxheat            = 40,
        pos                = [[r-2 r2, 4, r-2 r2]],
        size               = 15,
        sizegrowth         = 1.2,
        speed              = [[0, 1 0, 0]],
        texture            = [[orangenovaexplo]],
      },
    },
  },

}


function tableMerge(t1, t2)
    for k,v in pairs(t2) do
    	if type(v) == "table" then
    		if type(t1[k] or false) == "table" then
    			tableMerge(t1[k] or {}, t2[k] or {})
    		else
    			t1[k] = v
    		end
    	else
    		t1[k] = v
    	end
    end
    return t1
end

function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

-- add different sizes
definitions[root] = definitions[root.."-small"]
local sizes = {
	small = {
	
	},
	
	medium = {
	
	},
	
	large = {
	
	},
}
for size, effects in pairs(sizes) do
	--definitions[root.."-"..size] = tableMerge(deepcopy(definitions[root.."-small"]), deepcopy(effects))
end

-- add coloring
local colors = {
	blue = {
		groundflash = {
			color = {0.15,0.15,1},
		}
	},
	["blue-emp"] = {
		groundflash = {
			color = {0.15,0.15,1},
		}
	},
	green = {
		groundflash = {
			color = {0.15,1,0.15},
		}
	},
	red = {
		groundflash = {
			color = {1,0.15,0.15},
		}
	},
	white = {
		groundflash = {
			color = {1,1,1},
		}
	},
	purple = {
		groundflash = {
			color = {1,0.15,1},
		}
	}
}
for color, effects in pairs(colors) do
	for size, e in pairs(sizes) do
		definitions[root.."-"..size.."-"..color] = tableMerge(deepcopy(definitions[root.."-"..size]), deepcopy(effects))
	end
end

-- remove dust clouds for beams
for size, e in pairs(sizes) do
	local defname = root.."-"..size.."-beam"
	definitions[defname] = deepcopy(definitions[root.."-"..size])
	definitions[defname].clouddust = nil
	definitions[defname].groundflash.flashalpha = definitions[defname].groundflash.flashalpha / 5
	definitions[defname].centerflare.properties.heat = math.ceil(definitions[defname].centerflare.properties.heat / 5)
	definitions[defname].centerflare.properties.maxheat = math.ceil(definitions[defname].centerflare.properties.maxheat / 5)
	definitions[defname].explosion.properties.numparticles = math.ceil(definitions[defname].explosion.properties.numparticles / 5)
	definitions[defname].dirt.properties.numparticles = math.ceil(definitions[defname].dirt.properties.numparticles / 5)
	definitions[defname].dirt2.properties.numparticles = math.ceil(definitions[defname].dirt2.properties.numparticles / 5)
	definitions[defname].grounddust.properties.particlespeed = definitions[defname].grounddust.properties.particlespeed / 2
	definitions[defname].grounddust.properties.particlespeedspread = definitions[defname].grounddust.properties.particlespeedspread * 2
	definitions[defname].grounddust.properties.numparticles = math.ceil(definitions[defname].grounddust.properties.numparticles / 5)
end

		
return definitions