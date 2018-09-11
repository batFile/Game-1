local composer = require( "composer" );
local scene = composer.newScene();

local optionsTxtO = {
		text = "Ключевое значение в этой серии игор имеет сделаный выбор",
		x = display.contentCenterX,
		y = display.contentCenterY,
		width = display.contentWidth - 40,
		height = display.contentHeight/3.8,
		font = native.systemFontBold,
		fontSize = 35,
		align = "center"
	}
	
local optionsTxtT = {
		text = "Сюжет развивается в зависимости от действий игрока",
		x = display.contentCenterX,
		y = display.contentCenterY + 120,
		width = display.contentWidth - 40,
		height = display.contentHeight/3.8,
		font = native.systemFontBold,
		fontSize = 35,
		align = "center"
	}
	
local textOne = display.newText(optionsTxtO);
textOne:setTextColor( 255, 255, 255 );
textOne.alpha = 0;
	
local textTwo = display.newText(optionsTxtT);
textTwo:setTextColor( 255, 255, 255 );
textTwo.alpha = 0;

transition.to( textOne, { time=1500, alpha=1 });
transition.to( textTwo, { time=1500, alpha=1 });

function onTimerTwo()
	composer.gotoScene( "gameVision", "fade", 800 );
end

function onTimer()
	transition.to( textOne, { time=1500, alpha=0 });
	transition.to( textTwo, { time=1500, alpha=0 });
	local tm = timer.performWithDelay( 1500, onTimerTwo );
end

local tm = timer.performWithDelay( 5500, onTimer );

return scene;