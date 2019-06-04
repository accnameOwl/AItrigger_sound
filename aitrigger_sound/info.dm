/*

	@Author: Tafe
	Language: .DM (Dream Maker)
	Latest Update: v1
	Date: 6. June 2019

	Hub:
	Github


	This is a non-flexible library for making sound, to trigger ai.
	There is NO ACTUAL sound, and you might wonder why.
	byond does not support sound distance to trigger ai, so we are
	visualizing the concept of sound to trigger AI.

*/


/*
## Object tree & Functions

	_Sound

		New(mob/_player)
		Generate( volume )
		GetSoundIntensity( mob/source, mob/target, volume = 0 )

		sound_pointer["r1","r2","i1","i2"]
		mob/player

	mob
		MakeSound( volume )
		SoundListener( mob/source, volume )

		_Sound/_sound
		current_volume
*/

/*

## NAMING CONVENTION

	Types & Functions:
		/Monster & /AITrigger
		Function() & AnotherFunction()

	Variables:
		variable_naming = ""


*/