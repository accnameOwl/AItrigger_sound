mob

	var
		/*
		*	This is the actual AI trigger
		*	But you only have to call "MakeSound(volume)" to generate volume
		*	Volumes distance reach is determined by how loud it is(100 = 10 tiles)
		*/
		_Sound/_sound

		/*
		* current_volume keeps track of the previous sound that was made
		*/
		current_volume

	New()
		..()
		//We have to create a new _sound, by passing src as argument.
		_sound = new(src)

	proc

		/*
		*	MakeSound( volume )
		*
		*	To have a mob make a sound, call MakeSound()
		*	The rest happens as a response from calling it.
		*/
		MakeSound( volume )
			_sound.Generate(volume)


		/*
		*	SoundListener(mob/source, volume)
		*
		*	args:
		*		mob/source	-Source of whom created the sound
		*		volume		-Volume percieved based on distance from source
		*
		*	This is the listener where you want to write your trigger
		*	for the AI, or anything else really.
		*	argument volume is the volume percieved from the listeners distance
		*	from the sound's source.
		*
		*	You can override this proc in your own project!
		*/
		SoundListener(mob/source, volume)
			world << volume
			current_volume = volume
			world << "This is where you trigger the AI"