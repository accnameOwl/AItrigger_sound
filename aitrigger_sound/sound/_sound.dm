_Sound

	parent_type = /atom/movable

	var
		mob/player
		list/sound_pointer = list(\
			"i1" = 0,
			"i2" = 0,
			"r1" = 0,
			"r2" = 0)

	New(mob/_player)
		player = _player

	proc
		Generate(volume)
			for(var/mob/m in orange(round(volume/10), player) )
				if(m != player)
					//generate a signal to the m's sound listener.
					//Calling m.SoundListener
					m.SoundListener(player, GetSoundIntensity(player, m, volume) )

		//calculates volume intensity based on distance from sound source
		GetSoundIntensity(mob/source, mob/target, volume = 0)
			sound_pointer["i1"] = 1
			sound_pointer["r1"] = volume
			sound_pointer["r2"] = get_dist(source, target)
			. = sound_pointer["i2"] = sound_pointer["i1"]*(sound_pointer["r1"]/sound_pointer["r2"])^2
