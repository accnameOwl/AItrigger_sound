


mob

	var
		//This is the actual AI trigger
		//But you only have to call "MakeSound(volume)" to generate volume
		//Volumes distance reach is determined by how loud it is(100 = 10 tiles)
		_Sound/_sound


		current_volume

	New()
		..()
		_sound = new(src)

	proc

		MakeSound( volume )
			_sound.Generate(volume)

		//This is called to mob's who recieve a sound volume.
		//It is called through _sound.Generate(volume)
		SoundListener(mob/source, volume)
			world << volume
			//if volume is lower than 10, don't bother activating
			if(volume > 10)
				if(volume > current_volume)
					world << "This is where you trigger the AI"
				else
					. = 0