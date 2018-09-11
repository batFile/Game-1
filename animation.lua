local sheetdata = {
	width = 720,
	height = 1280,
	numFrames = 10,
	sheetcontentWidth = 720 * 5,
	sheetcontentHeight = 1280 * 2
};

local mySheet = graphics.newImageSheet("spriteSheet.png", sheetdata);

local seequenceData = {
	{name = "startAnim", start = 1, count = 10, time = 1090, loopCount = 1}
};

local animation = display.newSprite(mySheet, seequenceData);
animation.x = display.contentWidth/2;
animation.y = display.contentHeight/2;
animation:toBack();

function openMap()
	animation:play();
end

local animation = {openMap = openMap};
return animation;