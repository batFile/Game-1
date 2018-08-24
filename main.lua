local composer = require "composer";
display.setStatusBar( display.HiddenStatusBar );

local fileO = "part.txt";
local fileT = "count.txt";
local lines = {};
local linesT = {};

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

composer.setVariable( "startCheckpoint", lines[1] );
composer.setVariable( "startCount", linesT[1] );


composer.gotoScene( "menu" );