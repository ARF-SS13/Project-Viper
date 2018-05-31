#if !defined(USING_MAP_DATUM)

	#include "endeavor-1.dmm" //Bottom deck
	#include "endeavor-2.dmm" //Maintenance deck
	#include "endeavor-3.dmm" //Top deck

	#include "example_defines.dm"
	#include "example_elevator.dm"
	#include "example_areas.dm"


	#define USING_MAP_DATUM /datum/map/example

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Northern Star

#endif