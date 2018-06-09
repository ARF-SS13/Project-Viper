#if !defined(USING_MAP_DATUM)

	#include "endeavor_defines.dm"
	#include "endeavor_elevator.dm"
	#include "endeavor_areas.dm"
	#include "endeavor_things.dm"

	#include "endeavor-1.dmm" //Bottom deck
	#include "endeavor-2.dmm" //Maintenance deck
	#include "endeavor-3.dmm" //Top deck
	#include "endeavor-4.dmm" //Transit Z-Level

	#define USING_MAP_DATUM /datum/map/endeavor

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Endeavor

#endif