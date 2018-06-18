#if !defined(USING_MAP_DATUM)

	#include "kaevis_defines.dm"
	#include "kaevis_areas.dm"
	#include "kaevis_planet.dm"
	#include "kaevis_turfs.dm"

	#include "kaevis-1.dmm"
	#include "kaevis-2.dmm"

	#define USING_MAP_DATUM /datum/map/kaevis

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Kaevis

#endif