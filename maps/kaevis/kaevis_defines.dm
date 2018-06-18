// Z levels!!
#define Z_LEVEL_FIRST_PLANE						1
#define Z_LEVEL_SECOND_PLANE					2

//Atmosphere properties - jesus what
#define KAEVIS_ONE_ATMOSPHERE	102 //kPa
#define KAEVIS_AVG_TEMP	293 //kelvin

#define KAEVIS_PER_N2		0.80 //percent
#define KAEVIS_PER_O2		0.20
#define KAEVIS_PER_N2O		0.00 //Currently no capacity to 'start' a turf with this. See turf.dm
#define KAEVIS_PER_CO2		0.00
#define KAEVIS_PER_PHORON	0.00

//Math only beyond this point, targetted towards atmos.
#define KAEVIS_MOL_PER_TURF	(KAEVIS_ONE_ATMOSPHERE*CELL_VOLUME/(KAEVIS_AVG_TEMP*R_IDEAL_GAS_EQUATION))
#define KAEVIS_MOL_N2			(KAEVIS_MOL_PER_TURF * KAEVIS_PER_N2)
#define KAEVIS_MOL_O2			(KAEVIS_MOL_PER_TURF * KAEVIS_PER_O2)
#define KAEVIS_MOL_N2O			(KAEVIS_MOL_PER_TURF * KAEVIS_PER_N2O)
#define KAEVIS_MOL_CO2			(KAEVIS_MOL_PER_TURF * KAEVIS_PER_CO2)
#define KAEVIS_MOL_PHORON		(KAEVIS_MOL_PER_TURF * KAEVIS_PER_PHORON)

//Turfmakers.
#define KAEVIS_SET_ATMOS	nitrogen=KAEVIS_MOL_N2;oxygen=KAEVIS_MOL_O2;carbon_dioxide=KAEVIS_MOL_CO2;phoron=KAEVIS_MOL_PHORON;temperature=KAEVIS_AVG_TEMP
#define KAEVIS_TURF_CREATE(x)	x/kaevis/nitrogen=KAEVIS_MOL_N2;x/kaevis/oxygen=KAEVIS_MOL_O2;x/kaevis/carbon_dioxide=KAEVIS_MOL_CO2;x/kaevis/phoron=KAEVIS_MOL_PHORON;x/kaevis/temperature=KAEVIS_AVG_TEMP;x/kaevis/outdoors=TRUE;x/kaevis/update_graphic(list/graphic_add = null, list/graphic_remove = null) return 0
#define KAEVIS_TURF_CREATE_UN(x)	x/kaevis/nitrogen=KAEVIS_MOL_N2;x/kaevis/oxygen=KAEVIS_MOL_O2;x/kaevis/carbon_dioxide=KAEVIS_MOL_CO2;x/kaevis/phoron=KAEVIS_MOL_PHORON;x/kaevis/temperature=KAEVIS_AVG_TEMP


/datum/map/kaevis
	name = "Prototype Test Map"
	full_name = "The Kaevis Test Map"
	path = "kaevis"

	lobby_icon = 'icons/misc/title.dmi'
	lobby_screens = list("mockingjay00")

	zlevel_datum_type = /datum/map_z_level/kaevis

	station_name  = "The Kaevis for every Kaevis"
	station_short = "The kaevis"
	dock_name     = "the Maximum Fun Chamber"
	boss_name     = "Mister Fun"
	boss_short    = "Mr. Fun"
	company_name  = "Fun Inc."
	company_short = "FI"
	starsys_name  = "Not ARFS"

/datum/map_z_level/kaevis/first
	z = Z_LEVEL_FIRST_PLANE
	name = "The Ground"
	flags = MAP_LEVEL_STATION|MAP_LEVEL_CONTACT|MAP_LEVEL_PLAYER
	transit_chance = 50
	base_turf = /turf/simulated/floor/outdoors/rocks/kaevis

/datum/map_z_level/kaevis/second
	z = Z_LEVEL_SECOND_PLANE
	name = "The Sky"
	flags = MAP_LEVEL_STATION|MAP_LEVEL_CONTACT|MAP_LEVEL_PLAYER
	transit_chance = 50
	base_turf = /turf/simulated/open


/obj/turbolift_map_holder/example
	name = "Example turbolift map placeholder"
	depth = 2
	lift_size_x = 4
	lift_size_y = 4
	icon = 'icons/obj/turbolift_preview_5x5.dmi'

	areas_to_use = list(
		/area/turbolift/example_ground,
		/area/turbolift/example_top
		)