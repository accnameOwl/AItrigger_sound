/*
	These are simple defaults for your project.
 */

world
	fps = 25		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 6		// show up to 6 tiles outward from center (13x13 view)


// Make objects move 8 pixels per tick when walking
mob
	step_size = 8

	//
	var
		mob/target

	Login()
		..()
		loc = locate(4,2,1)
		_sound = new(src)

	verb
		makeasound(var/s as num)
			MakeSound(s)

	monster

obj
	step_size = 8




