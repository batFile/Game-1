local composer = require( "composer" );
local scene = composer.newScene();

local sceneGroup;
local background;
local title;

local partOne;
local partTwo;
local partThree;

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

function onPartOne()
	composer.gotoScene( "storyOne.slides.slide1", "fade", 800 );
end

function onPartTwo()
	composer.gotoScene( "storyOne.slides.slide2", "fade", 800 );
end

function onPartThree()
	composer.gotoScene( "storyOne.slides.slide3", "fade", 800 );
end

function onBackBtn()
	composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
end

function deleteAll()
	if background then
		background:removeSelf();
		background = nil;
	end
	if title then
		title:removeSelf();
		title = nil;
	end
	if partOne then
		partOne:removeSelf();
		partOne = nil;
	end
	if partTwo then
		partTwo:removeSelf();
		partTwo = nil;
	end
	if partThree then
		partThree:removeSelf();
		partThree = nil;
	end
	if backBtn then
		backBtn:removeSelf();
		backBtn = nil;
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
		partOne:addEventListener('tap', onPartOne);
		partTwo:addEventListener('tap', onPartTwo);
		partThree:addEventListener('tap', onPartThree);
		backBtn:addEventListener('tap', onBackBtn);
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