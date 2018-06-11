/obj/structure/window/reinforced/polarized/full
	dir = SOUTHWEST
	icon_state = "fwindow"
	maxhealth = 80

//Turbolift stuff
/obj/turbolift_map_holder/endeavor
	name = "Endeavor Elevator"
	depth = 3
	lift_size_x = 4
	lift_size_y = 4
	icon = 'icons/obj/turbolift_preview_5x5.dmi'

	areas_to_use = list(
		/area/turbolift/endeavor/deck1,
		/area/turbolift/endeavor/deck2,
		/area/turbolift/endeavor/deck3
		)

/datum/turbolift
	music = list('sound/music/elevator.ogg')  // Woo elevator music!



//Endeavor map_data obj
/obj/effect/landmark/map_data/endeavor
    height = 3
