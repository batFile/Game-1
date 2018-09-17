local json = require("json");

local fileO = "part.txt";
local fileT = "count.txt";

local fAchOne = "achivments/a1.txt";
local fAchTwo = "achivments/a2.txt";
local fAchThree = "achivments/a3.txt";

local part = {};
local count = {};
local acOne = {};
local acTwo = {};
local acThree = {};

local function readSome(file, arrayS)
	local path = system.pathForFile(file, system.ResourceDirectory);
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
	return arrayS[1];
end

local function reWriteSome(file, saveData)
	local path = system.pathForFile(file, system.ResourceDirectory);
	local file = io.open( path, "w" );
	file:write( saveData );
	io.close( file );
end

local function reWP(saveData)
	reWriteSome(fileO, saveData);
end

local function reWC(saveData)
	reWriteSome(fileT, saveData);
end

local function reWAchOne(saveData)
	reWriteSome(fAchOne, saveData);
end

local function reWAchTwo(saveData)
	reWriteSome(fAchTwo, saveData);
end

local function reWAchThree(saveData)
	reWriteSome(fAchThree, saveData);
end

local function readPart()
	local num = readSome(fileO, part);
	return num;
end

local function readCount()
	local num = readSome(fileT, count);
	return num;
end

local function readAOne()
	local num = readSome(fAchOne, acOne);
	return num;
end

local function readATwo()
	local num = readSome(fAchTwo, acTwo);
	return num;
end

local function readAThree()
	local num = readSome(fAchThree, acThree);
	return num;
end

local saving = {reWP = reWP,
				reWC = reWC,
				reWAchOne = reWAchOne,
				reWAchTwo = reWAchTwo,
				reWAchThree = reWAchThree,
				readPart = readPart,
				readCount = readCount,
				readAOne = readAOne,
				readATwo = readATwo,
				readAThree = readAThree}

return saving;