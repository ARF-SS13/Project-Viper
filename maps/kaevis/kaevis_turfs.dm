//Simulated
KAEVIS_TURF_CREATE(/turf/simulated/open)
/turf/simulated/open/kaevis
	edge_blending_priority = 0.5 //Turfs which also have e_b_p and higher than this will plop decorative edges onto this turf
/turf/simulated/open/kaevis/New()
	..()
	if(outdoors)
		outdoor_turfs.Add(src)

KAEVIS_TURF_CREATE(/turf/simulated/floor)

/turf/simulated/floor/kaevis_indoors
	KAEVIS_SET_ATMOS
/turf/simulated/floor/kaevis_indoors/update_graphic(list/graphic_add = null, list/graphic_remove = null)
	return 0

KAEVIS_TURF_CREATE(/turf/simulated/floor/reinforced)
KAEVIS_TURF_CREATE(/turf/simulated/floor/tiled/steel_dirty)

KAEVIS_TURF_CREATE(/turf/simulated/floor/outdoors/dirt)
KAEVIS_TURF_CREATE(/turf/simulated/floor/outdoors/rocks)
KAEVIS_TURF_CREATE(/turf/simulated/floor/outdoors/grass/sif)
/turf/simulated/floor/outdoors/grass/sif
	turf_layers = list(
		/turf/simulated/floor/outdoors/rocks/kaevis,
		/turf/simulated/floor/outdoors/dirt/kaevis
		)

//Unsimulated
/turf/unsimulated/wall/planetary/kaevis
	name = "facility wall"
	desc = "An eight-meter tall carbyne wall."
	alpha = 0xFF
	KAEVIS_SET_ATMOS

/turf/unsimulated/mineral/kaevis
	blocks_air = TRUE

/turf/unsimulated/floor/steel
	icon = 'icons/turf/flooring/tiles_vr.dmi'
	icon_state = "steel"


/turf/unsimulated/wall
	blocks_air = 1

/turf/unsimulated/wall/planetary
	blocks_air = 1

//Sky stuff!
// A simple turf to fake the appearance of flying.
/turf/simulated/sky/kaevis
	color = "#FFBBBB"

/turf/simulated/sky/kaevis/initialize()
	outdoor_turfs.Add(src)
	set_light(2, 2, "#FFBBBB")

/turf/simulated/sky/kaevis/north
	dir = NORTH
/turf/simulated/sky/kaevis/south
	dir = SOUTH
/turf/simulated/sky/kaevis/east
	dir = EAST
/turf/simulated/sky/kaevis/west
	dir = WEST

/turf/simulated/sky/kaevis/moving
	icon_state = "sky_fast"
/turf/simulated/sky/kaevis/moving/north
	dir = NORTH
/turf/simulated/sky/kaevis/moving/south
	dir = SOUTH
/turf/simulated/sky/kaevis/moving/east
	dir = EAST
/turf/simulated/sky/kaevis/moving/west
	dir = WEST