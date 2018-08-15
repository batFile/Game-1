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

local congBlock;
local closeConf;

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
	
	congBlock = display.newImageRect("UNDER-CONSTRUCTION.png", 800, 600);
	congBlock.x = display.contentCenterX*4;
	congBlock.y = display.contentCenterY;
	
	closeConf = display.newImageRect("exitBtn.png", 100, 100);
	closeConf.x = display.contentCenterX*4;
	closeConf.y = display.contentCenterY/1.4;
	
	scene:insert( background );
	scene:insert( content );
	scene:insert( title );
	scene:insert( storyOne );
	scene:insert( storyTwo );
	scene:insert( conf );
	scene:insert( closeBtn );
	
	scene:insert( congBlock );
	scene:insert( closeConf );
end

-- open, close config part (music, sounds, achivments)

function onConf()
	congBlock.x = display.contentCenterX;
	closeConf.x = display.contentCenterX+150;
end

function onCloseConf()
	congBlock.x = display.contentCenterX*4;
	closeConf.x = display.contentCenterX*4;
end

-- go to another scene

function onStoryOne()
	composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
end

-- close game Part

function closeapp()
    if  system.getInfo("platformName")=="Android" then
		native.requestExit()
    else
		os.exit();
    end
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
	if conf then
		conf:removeSelf();
		conf = nil;
	end
	if congBlock then
		congBlock:removeSelf();
		congBlock = nil;
	end
	if closeConf then
		closeConf:removeSelf();
		closeConf = nil;
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
		conf:addEventListener( "tap", onConf );
		closeConf:addEventListener( "tap", onCloseConf );
		storyOne:addEventListener('tap', onStoryOne);
		closeBtn:addEventListener( "tap", closeapp );
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