-- DOOM Demons Expansion for Map Sweepers by Octantis Addons (MerekiDor & JonahSoldier)


--Faction
jcms.factions.doomdemons = {
	name = "doomdemons",
	color = Color(255, 72, 0)
}

if CLIENT then
	--Mission Type
	jcms.missions.doomdemonscorruption = {
		faction = "doomdemons",
		tags = { "killsrequired" }
	}

	--Bestiary
	jcms.bestiary.doomdemons_zombie = {
		faction = "doomdemons",
		mdl = "models/doom_eternal/monsters/zombie/zombie_hell.mdl", 
	
		bounty = 20,
		health = 40,

		camfov = 27,
	}

	jcms.bestiary.doomdemons_mancubus = {
		faction = "doomdemons",
		mdl = "models/doom_eternal/monsters/mancubus/mancubus.mdl",

		bounty = 175,
		health = 700
	}

	jcms.bestiary.doomdemons_marauder = {
		faction = "doomdemons",
		mdl = "models/doom_eternal/monsters/marauder/marauder.mdl",

		bounty = 666,
		health = 900,

		camfov = 35,
		camlookvector = Vector(0, 0, 50)
	}
end