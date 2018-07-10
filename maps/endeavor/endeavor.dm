#if !defined(USING_MAP_DATUM)

	#include "endeavor_defines.dm"
	#include "endeavor_elevator.dm"
	#include "endeavor_areas.dm"
	#include "endeavor_things.dm"
	#include "endeavor_jobs.dm"
	#include "endeavor_telecomms.dm"
	#include "endeavor_shuttles.dm"

	#include "endeavor-1.dmm" //Deck 1
	#include "endeavor-2.dmm" //Deck 2
	#include "endeavor-3.dmm" //Deck 3
	#include "endeavor-4.dmm" //Deck 4
	#include "endeavor-5.dmm" //Transit
	#include "endeavor-6.dmm" //CentComm

	#define USING_MAP_DATUM /datum/map/endeavor

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Endeavor

#endif
