local composer = require( "composer" );
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
	
	title = display.newImageRect("title.png", 500, 200);
	title.x = display.contentCenterX;
	title.y = display.contentCenterY/5.4;
	
	partOne = display.newImageRect("partOne.png", 460, 200);
	partOne.x = display.contentCenterX;
	partOne.y = display.contentCenterY/1.65;
	
	partTwo = display.newImageRect("partTwo.png", 460, 200);
	partTwo.x = display.contentCenterX;
	partTwo.y = display.contentCenterY/1.22;
	
	partThree = display.newImageRect("partThree.png", 460, 200);
	partThree.x = display.contentCenterX;
	partThree.y = display.contentCenterY+20;
	
	partFour = display.newImageRect("partOne.png", 460, 200);
	partFour.x = display.contentCenterX;
	partFour.y = display.contentCenterY*1.23;
	
	partFive = display.newImageRect("partTwo.png", 460, 200);
	partFive.x = display.contentCenterX;
	partFive.y = display.contentCenterY*1.43;
	
	partSix = display.newImageRect("partThree.png", 460, 200);
	partSix.x = display.contentCenterX;
	partSix.y = display.contentCenterY*1.6;
		
	backBtn = display.newImageRect("back.png", 200, 200);
	backBtn.x = display.contentCenterX+200;
	backBtn.y = display.contentCenterY*1.8;
	
	scene:insert( background );
	scene:insert( title );
	scene:insert( partOne );
	scene:insert( partTwo );
	scene:insert( partThree );
	scene:insert( partFour );
	scene:insert( partFive );
	scene:insert( partSix );
	scene:insert( backBtn );
end

-- go to another scene

function onPartOne()
	composer.gotoScene( "storyOne.slides.slide1", "fade", 800 );
end

function onPartTwo()
	composer.gotoScene( "storyOne.slides.slide2", "fade", 800 );
end

function onPartThree()
	composer.gotoScene( "storyOne.slides.slide3", "fade", 800 );
end

function onPartFour()
	composer.gotoScene( "storyOne.slides.slide4", "fade", 800 );
end

function onPartFive()
	composer.gotoScene( "storyOne.slides.slide5", "fade", 800 );
end

function onPartSix()
	composer.gotoScene( "storyOne.slides.slide6", "fade", 800 );
end

function onBackBtn()
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
		partOne:addEventListener('tap', onPartOne);
		partTwo:addEventListener('tap', onPartTwo);
		partThree:addEventListener('tap', onPartThree);
		-- partFour:addEventListener('tap', onPartFour);
		-- partFive:addEventListener('tap', onPartFive);
		-- partSix:addEventListener('tap', onPartSix);
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