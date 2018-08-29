local composer = require "composer";
display.setStatusBar( display.HiddenStatusBar );
local fileO = "part.txt";
local fileT = "count.txt";
local lines = {};
local linesT = {};

local bgmusic = audio.loadStream("bgmusic.mp3");

local backgroundMusicChannel = audio.play( bgmusic, { channel=1, loops=-1} );

local function createWords(fileS, arrayS)
	local path = system.pathForFile(fileS, system.ResourceDirectory);
	local file, errorString = io.open( path, "r" );

	if not file then
		print( "File error: " .. errorString );
	else
		for line in file:lines() do
			table.insert(arrayS, line);
		end
		io.close(file);
	end
	file = nil;
end

createWords(fileO, lines);
createWords(fileT, linesT);

print(lines[1]);

composer.setVariable( "startCheckpoint", lines[1] );
composer.setVariable( "startCount", linesT[1] );
	
composer.gotoScene( "menu" );