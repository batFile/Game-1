local composer = require( "composer" );
local scene = composer.newScene();

local sceneGroup;
local background;
local title;
local content;
local storyOne;
local storyTwo;
local conf;
local closeBtn;

function createAll(scene)
	background = display.newImageRect("testBG.jpg", display.contentWidth, display.contentHeight);
	background.x = display.contentCenterX;
	background.y = display.contentCenterY;
	
	title = display.newImageRect("title.png", 500, 200);
	title.x = display.contentCenterX;
	title.y = display.contentCenterY/5.4;
	
	content = display.newImageRect("content.jpg", 500, 500);
	content.x = display.contentCenterX;
	content.y = display.contentCenterY/1.4;
	
	storyOne = display.newImageRect("lvlOne.png", 460, 200);
	storyOne.x = display.contentCenterX;
	storyOne.y = display.contentCenterY*1.3;
	
	storyTwo = display.newImageRect("lvlTwo.png", 460, 200);
	storyTwo.x = display.contentCenterX;
	storyTwo.y = display.contentCenterY*1.53;
	
	conf = display.newImageRect("confBtn.png", 200, 200);
	conf.x = display.contentCenterX-200;
	conf.y = display.contentCenterY*1.8;
	
	closeBtn = display.newImageRect("exitBtn.png", 200, 200);
	closeBtn.x = display.contentCenterX+200;
	closeBtn.y = display.contentCenterY*1.8;
	
	scene:insert( background );
	scene:insert( content );
	scene:insert( title );
	scene:insert( storyOne );
	scene:insert( storyTwo );
	scene:insert( conf );
	scene:insert( closeBtn );
end

function onStoryOne()
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
	if content then
		content:removeSelf();
		content = nil;
	end
	if storyOne then
		storyOne:removeSelf();
		storyOne = nil;
	end
	if storyTwo then
		storyTwo:removeSelf();
		storyTwo = nil;
	end
	if achivments then
		achivments:removeSelf();
		achivments = nil;
	end
	if closeBtn then
		closeBtn:removeSelf();
		closeBtn = nil;
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
		-- playBtn:addEventListener('tap', onPlayBtn);
	end	
end

function scene:destroy( event )
	sceneGroup = self.view;
	deleteAll();
end

-- Listener setup
scene:addEventListener( "create", scene );
scene:addEventListener( "show", scene );
scene:addEventListener( "hide", scene );
scene:addEventListener( "destroy", scene );

-----------------------------------------------------------------------------------------

return scene;