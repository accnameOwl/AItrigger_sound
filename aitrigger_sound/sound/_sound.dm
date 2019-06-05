_Sound

	parent_type = /atom/movable

	var
		/*
		*	player, is recieved from this.New()
		*
		*	mob/player is the holder of this object
		*/
		mob/player

		/*
		*	sound_pointer
		*
		*	This is variables you should never have to worry about.
		*	They handle the math of calculating sound-volume decay
		*	based on sender & reciever distance
		*/
		list/sound_pointer = list(\
			"i1" = 0,
			"i2" = 0,
			"r1" = 0,
			"r2" = 0)

	New(mob/_player)
		player = _player

	proc
		/*
		*	Generate()
		*
		*	args:
		*		volume		- The amount of input, raw from source. pref: 0 to 100
		*
		*
		*	volume is the raw sound that the source makes.
		*	This proc determines how far and loud the sound is to a recipiant.
		*/
		Generate(volume)
			/*
			*	I would avoid this for-loop, but honestly.
			*	The functions are so minimalized to begin with
			*	it shouldn't be a problem unless there are 50+ recipients
			*
			*	you can adjust sound-distance traveling by adjusting orange(distance)
			*/
			for(var/mob/m in orange(round(volume/10), player) )
				if(m != player)

					//generate a signal to the m's sound listener.
					//Calling m.SoundListener
					m.SoundListener(player, GetSoundIntensity(player, m, volume) )

		/*
		*	GetSoundIntensity()
		*
		*	args:
		*		source			-	The source(src.player) who calls to this object
		*		target			-	The recipiant of the sound
		*		volume			-	The initial volume created by source
		*/
		GetSoundIntensity(mob/source, mob/target, volume = 0)
			sound_pointer["i1"] = 1
			sound_pointer["r1"] = volume
			sound_pointer["r2"] = get_dist(source, target)
			. = sound_pointer["i2"] = sound_pointer["i1"]*(sound_pointer["r1"]/sound_pointer["r2"])^2
