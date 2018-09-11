local composer = require( "composer" );
local music = require( "music" );
local scene = composer.newScene();

local sceneGroup;
local background;
local title;

local partOne;
local partTwo;
local partThree;
local partFour;
local partFive;
local partSix;

local backBtn;

function createAll(scene)
	background = display.newImageRect("1b.jpg", display.contentWidth, display.contentHeight);
	background.x = display.contentCenterX;
	background.y = display.contentCenterY;
	
	title = display.newImageRect("titleTestNine.png", 350, 280);
	title.x = display.contentCenterX + 20;
	title.y = display.contentCenterY/3.2;
	
	partOne = display.newImageRect("achivments/Locked.png", 500, 150);
	partOne.x = display.contentCenterX;
	partOne.y = display.contentCenterY/1.75;
	
	partTwo = display.newImageRect("achivments/Locked.png", 500, 150);
	partTwo.x = display.contentCenterX;
	partTwo.y = display.contentCenterY/1.22;
	
	partThree = display.newImageRect("achivments/Locked.png", 500, 150);
	partThree.x = display.contentCenterX;
	partThree.y = display.contentCenterY+45;
	
	backBtn = display.newImageRect("back.png", 200, 200);
	backBtn.x = display.contentCenterX+200;
	backBtn.y = display.contentCenterY*1.8;
	
	scene:insert( background );
	scene:insert( title );
	scene:insert( partOne );
	scene:insert( partTwo );
	scene:insert( partThree );
	scene:insert( backBtn );
end

-- go to another scene

function onBackBtn()
	music.onSounds();
	composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
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
		backBtn:addEventListener('tap', onBackBtn);
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