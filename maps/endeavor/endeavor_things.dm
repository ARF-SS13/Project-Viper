/obj/structure/window/reinforced/polarized/full
	dir = SOUTHWEST
	icon_state = "fwindow"
	maxhealth = 80


/obj/structure/window/phoronreinforced/full
	dir = SOUTHWEST
	maxhealth = 160
	icon_state = "phoronwindow0"

//Endeavor map_data obj
/obj/effect/landmark/map_data/endeavor
    height = 4


//Radiation closets
/obj/structure/closet/radiation
	starts_with = list(
		/obj/item/clothing/suit/radiation = 3,
		/obj/item/clothing/head/radiation = 3,
		/obj/item/device/geiger = 3,
		/obj/item/clothing/glasses/meson = 3)

/*
//Departure shuttle doors
// ferry departure cryo doors that turn into ordinary airlock doors at round end
/obj/machinery/cryopod/robot/door/ferry
	name = "\improper ferry Station"
	icon = 'icons/obj/doors/Doorext.dmi'
	icon_state = "door_closed"
	base_icon_state = "door_closed"
	occupied_icon_state = "door_locked"
	desc = "The ferry station you may have came in from. You can leave through here."
	on_store_message = "has departed on the ferry."
	on_store_name = "Travel Oversight"
	on_enter_occupant_message = "The ferry arrives at the platform; you step inside and take a seat."
	on_store_visible_message_1 = "'s speakers chime, anouncing a ferry has arrived to take"
	on_store_visible_message_2 = "to the colony"
	time_till_despawn = 10 SECONDS
	spawnpoint_type = /datum/spawnpoint/ferry

/obj/machinery/cryopod/robot/door/ferry/process()
	if(emergency_shuttle.online() || emergency_shuttle.returned())
		// Transform into a door!  But first despawn anyone inside
		time_till_despawn = 0
		..()
		var/turf/T = get_turf(src)
		var/obj/machinery/door/airlock/external/door = new(T)
		door.req_access = null
		door.req_one_access = null
		qdel(src)
	// Otherwise just operate normally
	return ..()

/obj/machinery/cryopod/robot/door/ferry/Bumped(var/atom/movable/AM)
	if(!ishuman(AM))
		return

	var/mob/living/carbon/human/user = AM

	var/choice = alert("Do you want to depart via the ferry? Your character will leave the round.","Departure","Yes","No")
	if(user && Adjacent(user) && choice == "Yes")
		user.ghostize()
		despawn_occupant(user)

/datum/spawnpoint/ferry
	display_name = "Arrivals Dock"
	msg = "has arrived on the ferry"

*/

//explorer intercom
/obj/item/device/radio/intercom/explorer
	name = "intercom (explorer)"
	frequency = EXP_FREQ
