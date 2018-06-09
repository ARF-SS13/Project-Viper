//Normal map defs
#define Z_LEVEL_SPACE_LOW					1
#define Z_LEVEL_SPACE_MID					2
#define Z_LEVEL_SPACE_HIGH					3
#define Z_LEVEL_TRANSIT						4

/datum/map/endeavor
	name = "Endeavor"
	full_name = "ARFS Endeavor"
	path = "endeavor"

	zlevel_datum_type = /datum/map_z_level/endeavor

	lobby_icon = 'icons/misc/title_vr.dmi'
	lobby_screens = list("tether")
	id_hud_icons = 'icons/mob/hud_jobs_vr.dmi'
	station_name  = "ARFS Endeavor"
	station_short = "Endeavor"
	dock_name     = "ARFS Endeavor"
	boss_name     = "Central Command"
	boss_short    = "CentCom"
	company_name  = "Alliance of Racial Federations"
	company_short = "ARF"
	starsys_name  = "Odin"

	shuttle_docked_message = "The scheduled Orange Line tram to the %dock_name% has arrived. It will depart in approximately %ETD%."
	shuttle_leaving_dock = "The Orange Line tram has left the station. Estimate %ETA% until the tram arrives at %dock_name%."
	shuttle_called_message = "A scheduled crew transfer to the %dock_name% is occuring. The tram will be arriving shortly. Those departing should proceed to the Orange Line tram station within %ETA%."
	shuttle_recall_message = "The scheduled crew transfer has been cancelled."
	emergency_shuttle_docked_message = "The evacuation tram has arrived at the tram station. You have approximately %ETD% to board the tram."
	emergency_shuttle_leaving_dock = "The emergency tram has left the station. Estimate %ETA% until the shuttle arrives at %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation has begun, and an off-schedule tram has been called. It will arrive at the tram station in approximately %ETA%."
	emergency_shuttle_recall_message = "The evacuation tram has been recalled."

	station_networks = list(
							NETWORK_CARGO,
							NETWORK_CIVILIAN,
							NETWORK_COMMAND,
							NETWORK_ENGINE,
							NETWORK_ENGINEERING,
							NETWORK_ENGINEERING_OUTPOST,
							NETWORK_DEFAULT,
							NETWORK_MEDICAL,
							NETWORK_MINE,
							NETWORK_NORTHERN_STAR,
							NETWORK_RESEARCH,
							NETWORK_RESEARCH_OUTPOST,
							NETWORK_ROBOTS,
							NETWORK_PRISON,
							NETWORK_SECURITY,
							NETWORK_INTERROGATION
							)

	allowed_spawns = list("Cryogenic Storage")
	spawnpoint_died = /datum/spawnpoint/cryo
	spawnpoint_left = /datum/spawnpoint/cryo
	spawnpoint_stayed = /datum/spawnpoint/cryo
/*
// Short range computers see only the six main levels, others can see the surrounding surface levels.
/datum/map/endeavor/get_map_levels(var/srcz, var/long_range = TRUE)
	if (long_range && (srcz in map_levels))
		return map_levels
	else if (srcz == Z_LEVEL_TRANSIT)
		return list() // Nothing on transit!
	else if (srcz >= Z_LEVEL_SPACE_LOW && srcz <= Z_LEVEL_SPACE_HIGH)
		return list(
			Z_LEVEL_SPACE_LOW,
			Z_LEVEL_SPACE_MID,
			Z_LEVEL_SPACE_HIGH)
	else
		return ..()
*/
// We have a bunch of stuff common to the station z levels
/datum/map_z_level/endeavor/ship
	flags = MAP_LEVEL_STATION|MAP_LEVEL_CONTACT|MAP_LEVEL_PLAYER|MAP_LEVEL_CONSOLES

/datum/map_z_level/endeavor/ship/low
	z = Z_LEVEL_SPACE_LOW
	name = "Endeavor 1"
	base_turf = /turf/space
	transit_chance = 33

/datum/map_z_level/endeavor/ship/mid
	z = Z_LEVEL_SPACE_MID
	name = "Endeavor 2"
	base_turf = /turf/simulated/open
	transit_chance = 33

/datum/map_z_level/endeavor/ship/high
	z = Z_LEVEL_SPACE_HIGH
	name = "Endeavor 3"
	base_turf = /turf/simulated/open
	transit_chance = 33



/datum/map_z_level/endeavor/transit
	z = Z_LEVEL_TRANSIT
	name = "Transit"
	flags = MAP_LEVEL_SEALED|MAP_LEVEL_PLAYER|MAP_LEVEL_CONTACT
