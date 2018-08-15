local composer = require( "composer" );
local scene = composer.newScene();

local sceneGroup;
local background;
local playBtn;

function createAll(scene)
	background = display.newImageRect("aztecBG.png", display.contentHeight, display.contentHeight);
	background.x = display.contentCenterX;
	background.y = display.contentCenterY;
	
	playBtn = display.newImageRect("buttonP.png", 400, 400);
	playBtn.x = display.contentCenterX;
	playBtn.y = display.contentCenterY;
	
	scene:insert( background );
	scene:insert( playBtn );
end

function onPlayBtn()
	composer.gotoScene( "gameVision", "fade", 1200 );
end

function deleteAll()
	if background then
		background:removeSelf();
		background = nil;
	end
	if playBtn then
		playBtn:removeSelf();
		playBtn = nil;
	end
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
	deleteAll();
end

-- Listener setup
scene:addEventListener( "create", scene );
scene:addEventListener( "show", scene );
scene:addEventListener( "destroy", scene );

-----------------------------------------------------------------------------------------

return scene;