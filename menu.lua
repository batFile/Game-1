local composer = require( "composer" );
local scene = composer.newScene();
local music = require( "music" );

local sceneGroup;
local background;
local title;
local playBtn;

-- local clickMusic = audio.loadStream("click.mp3");
-- local clickMusicChannel;

function createAll(scene)
	background = display.newImageRect("1b.jpg", display.contentWidth, display.contentHeight);
	background.x = display.contentCenterX;
	background.y = display.contentCenterY;
	
	title = display.newImageRect("titleTestNine.png", 600, 500);
	title.x = display.contentCenterX+40;
	title.y = display.contentCenterY/1.2;
	
	playBtn = display.newImageRect("start.png", 240, 240);
	playBtn.x = display.contentCenterX;
	playBtn.y = display.contentCenterY + 200;
	
	
	scene:insert( background );
	scene:insert( title );
	scene:insert( playBtn );
end

function onPlayBtn()
	music.onSounds();
	composer.gotoScene( "openText", "fade", 800 );
end

-----------------------------------------------------------------------------------------

function scene:create( event )
	sceneGroup = self.view;
	createAll(sceneGroup);
end

function scene:show( event )
	sceneGroup = self.view;
	local phase = event.phase;
	
	if phase == "will" then

	elseif phase == "did" then
		playBtn:addEventListener('tap', onPlayBtn);
	end	
end

function scene:destroy( event )
	sceneGroup = self.view;
end

-- Listener setup
scene:addEventListener( "create", scene );
scene:addEventListener( "show", scene );
scene:addEventListener( "destroy", scene );

-----------------------------------------------------------------------------------------

return scene;