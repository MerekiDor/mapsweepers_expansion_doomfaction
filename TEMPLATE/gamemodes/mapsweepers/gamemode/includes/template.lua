--The includes directory lets you run arbitrary extra code that doesn't fit in any of the other folder.
--We use it here to register information about our mission/faction clientside

--[[ 
	!!!IMPORTANT!!! 

	Make sure you rename this file!
		If multiple extensions use the same file names they will overwrite each-other.
--]]

--Register our faction in the lobby
jcms.factions.YOURFACTIONNAME = {
	name = "YOURFACTIONNAME",
	color = Color(255, 0, 0) -- Set faction colour here (affects portals and spawn-effects)
}


if CLIENT then
	--Register our mission in the lobby, so that we can actually switch to it.
	jcms.missions.MISSIONNAME = {
		faction = "YOURFACTIONNAME",
		tags = { "killsrequired", "hacking", "timer" }
		-- Valid mission tags: 'hacking', 'infighting', 'timer', 'extraorders', 'rarebosses', 'killsrequired', 'naturalhazard'
	}

	-- Optional bestiary entries for your NPCs.
	jcms.bestiary.YOURFACTIONNAME_NPCNAME = {
		name = "Custom NPC", 
		desc = "This is my awesome Custom NPC",
		-- 2 lines above must be removed if you have localization in your addon!
		-- If these lines are removed, the name & description will be:
		-- * name: #jcms.bestiary_YOURFACTIONNAME_NPCNAME
		-- * desc: #jcms.bestiary_YOURFACTIONNAME_NPCNAME_desc

		faction = "YOURFACTIONNAME",
		mdl = "models/antlion_guard.mdl",

		bounty = 20,
		health = 100, -- Use "healthbar" addons or wikis to find out how much health an NPC has.

		-- Lines below are optional and can be removed.
		mats = { "models/jcms/cyberguard" }, -- Submaterial overrides for  the NPC. If you dont have custom materials remove this line.
		camlookvector = Vector(0, 0, 50), -- The position at which the camera will be looking. For big NPCs change the 3rd number to be bigger. For small NPCs change to 0,0,0
		camfov = 30, -- FOV of the camera in bestiary. Higher number for small NPCs, bigger FOV for huge NPCs.
		scale = 1.0 -- Scale of the NPC model, so that you can fit big models better
	}
end