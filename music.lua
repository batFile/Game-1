local bgmusic = audio.loadStream("bgmusic.mp3");
local clickMusic = audio.loadStream("click.mp3");
local backgroundMusicChannel;
local clickMusicChannel;

function onBackMusic()
	backgroundMusicChannel = audio.play( bgmusic, { channel=1, loops=-1} );
end

function onSounds()
	clickMusicChannel = audio.play( clickMusic, { channel=1, loops=0} );
end

function offBackMusic()
	backgroundMusicChannel = nil;
end

function offSounds()
	clickMusicChannel = nil;
end

local audio = {onBackMusic = onBackMusic, onSounds = onSounds};
return audio;