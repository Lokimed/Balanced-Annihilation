function widget:GetInfo()
	return {
		name      = "Show Builder Queue",	-- old name: Show Build
		desc      = "Shows buildings about to be built",
		author    = "WarXperiment",
		date      = "February 15, 2010",
		license   = "GNU GPL, v2 or later",
        version   = "5",
        layer     = -4,
		enabled   = true,  --  loaded by default?
    }
end


-- project page on github: https://github.com/jamerlan/unit_showbuild

--Changelog
-- before v2 developed outside of BA by WarXperiment
-- v2 [teh]decay - fixed crash: Error in DrawWorld(): [string "LuaUI/Widgets/unit_showbuild.lua"]:82: bad argument #1 to 'GetTeamColor' (number expected, got no value)
-- v3 [teh]decay - updated for spring 98 engine
-- v4 Floris - lots of performance increases
-- v5 Floris - cleanup, polishing and fixes

local command = {}
local commandOrdered = {}
local builders = {}
local buildersOrdered = {{},{},{},{},{},{},{},{},{},{}}
local myPlayerID = Spring.GetMyPlayerID()

local glPushMatrix		= gl.PushMatrix
local glPopMatrix		= gl.PopMatrix
local glTranslate		= gl.Translate
local glColor			= gl.Color
local glDepthTest		= gl.DepthTest
local glRotate			= gl.Rotate
local glUnitShape		= gl.UnitShape
local glLoadIdentity	= gl.LoadIdentity

local spGetUnitDefID	= Spring.GetUnitDefID


local builderUnitDefs = {}
for udefID,def in ipairs(UnitDefs) do
	if def.isBuilder and not def.isFactory and def.buildOptions[1] then
		local buildOptions = {}
		for _,unit in ipairs(def.buildOptions) do
			buildOptions[unit] = true
		end
		builderUnitDefs[udefID] = buildOptions
	end
end

function addBuilders()
	command = {}
	local allUnits = Spring.GetAllUnits()
	for _, unitID in pairs(allUnits) do
		local uDefID = spGetUnitDefID(unitID)
		if builderUnitDefs[uDefID] then
			local random = math.random(1,10)
			buildersOrdered[random][unitID] = true
			builders[unitID] = random
		end
	end
end

function widget:Initialize()
	if Spring.GetGameFrame() > 0 then
		addBuilders()
	end
end

function widget:PlayerChanged(playerID)
	if playerID == myPlayerID and Spring.GetGameFrame() > 0 and Spring.GetSpectatingState() then
		addBuilders()
	end
end

function checkBuilder(unitID)
	local queue = Spring.GetCommandQueue(unitID, 200)
	if commandOrdered[unitID] then
		for id, _ in pairs(commandOrdered[unitID]) do
			if command[id] and command[id][unitID] then
				command[id][unitID] = nil
				if #command[id] == 0 then
					command[id] = nil
				end
			end
		end
		commandOrdered[unitID] = nil
	end
	if(queue and #queue > 0) then
		for _, cmd in ipairs(queue) do
			if ( cmd.id < 0 ) then
				local myCmd = {
					id = math.abs(cmd.id),
					teamid = Spring.GetUnitTeam(unitID),
					params = cmd.params
				}
				local id = Spring.GetUnitTeam(unitID)..'_'..math.abs(cmd.id)..'_'..cmd.params[1]..'_'..cmd.params[2]..'_'..cmd.params[3]
				if command[id] == nil then
					command[id] = {id = myCmd}
				end
				command[id][unitID] = true
				if commandOrdered[unitID] == nil then
					commandOrdered[unitID] = {}
				end
				commandOrdered[unitID][id] = true
			end
		end
	end
end

local currentBatch = 1
function widget:GameFrame(gameframe)
	if gameframe % 3 == 1 then
		for unitID, random in pairs(buildersOrdered[currentBatch]) do
			checkBuilder(unitID)
		end
		currentBatch = currentBatch + 1
		if currentBatch > 10 then
			currentBatch = 1
		end
	end
end

--function widget:UnitCommand(unitID, unitDefID, unitTeam, cmdID, cmdOpts, cmdParams)
--	if cmdID == 70 and builderUnitDefs[unitDefID] then
--		checkBuilder(unitID)
--	end
--end

function widget:UnitCreated(unitID, unitDefID, unitTeam, builderID)
	if builderUnitDefs[unitDefID] then
		local random = math.random(1,10)
		buildersOrdered[random][unitID] = true
		builders[unitID] = random
	end
end
function widget:UnitDestroyed(unitID, unitDefID, unitTeam, builderID)
	if builders[unitID] then
		buildersOrdered[builders[unitID]][unitID] = nil
		builders[unitID] = nil
	end
end

function widget:DrawWorld()
	glDepthTest(true)
	for id, units in pairs(command) do
		local myCmd = units.id
		local params = myCmd.params

		local x, y, z, h = params[1], params[2], params[3], params[4]
		if(h ~= nil) then
			local degrees = h * 90
			if Spring.IsAABBInView(x-1,y-1,z-1,x+1,y+1,z+1) then
				glPushMatrix()
					glLoadIdentity()
					glTranslate( x, y, z )
					glRotate( degrees, 0, 1.0, 0 )
					glUnitShape(myCmd.id, myCmd.teamid, false, false, false)
				glPopMatrix()
			end
		end
	end
	glDepthTest(false)
	glColor(1, 1, 1, 1)
end
