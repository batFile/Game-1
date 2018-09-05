local composer = require( "composer" );
local saver = require( "saving" );
local scene = composer.newScene();

local sceneGroup;

local background;
local title;
local content;
local storyOne;
local storyTwo;
local conf;
local closeBtn;
local resetBtn;
local checkR = false;

local congBlock;
local closeConf;

-- local clickMusic = audio.loadStream("click.mp3");
-- local clickMusicChannel;

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
	
	congBlock = display.newImageRect("confBlockBG.jpg", 600, 600);
	congBlock.x = display.contentCenterX*4;
	congBlock.y = display.contentCenterY;
	
	closeConf = display.newImageRect("exitBtn.png", 100, 100);
	closeConf.x = display.contentCenterX*4;
	closeConf.y = display.contentCenterY/1.4;
	
	resetBtn = display.newImageRect("reset.png", 250, 250);
	resetBtn.x = display.contentCenterX*4;
	resetBtn.y = display.contentCenterY/1.2;
	
	scene:insert( background );
	scene:insert( content );
	scene:insert( title );
	scene:insert( storyOne );
	scene:insert( storyTwo );
	scene:insert( conf );
	scene:insert( closeBtn );
	
	scene:insert( congBlock );
	scene:insert( closeConf );
	scene:insert( resetBtn );
end

-- open, close config part (music, sounds, achivments)

function onConf()
	-- clickMusicChannel = audio.play( clickMusic, { channel=1, loops=0} );
	congBlock.x = display.contentCenterX;
	closeConf.x = display.contentCenterX+150;
	resetBtn.x = display.contentCenterX;
	storyOne:removeEventListener('tap', onStoryOne);
end

function onCloseConf()
	-- clickMusicChannel = audio.play( clickMusic, { channel=1, loops=0} );
	congBlock.x = display.contentCenterX*4;
	closeConf.x = display.contentCenterX*4;
	resetBtn.x = display.contentCenterX*4;
	storyOne:addEventListener('tap', onStoryOne);
end

-- go to another scene

function onStoryOne()
	-- clickMusicChannel = audio.play( clickMusic, { channel=1, loops=0} );
	-- composer.setVariable( "reset", checkR );
	-- composer.setVariable( "checkpoint", 1 );
	composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
end

function onReset()
	saver.reWP(1);
	saver.reWC(1);
	
	saver.reWAchOne(0);
	saver.reWAchTwo(0);
	saver.reWAchThree(0);
end

-- close game Part

function closeapp()
    if  system.getInfo("platformName")=="Android" then
		native.requestExit()
    else
		os.exit();
    end
end

-----------------------------------------------------------------------------------------

function scene:create( event )
	sceneGroup = self.view;
	createAll(sceneGroup);
	storyOne:addEventListener('tap', onStoryOne);
end

function scene:show( event )
	sceneGroup = self.view;
	local phase = event.phase;
	
	if phase == "will" then

	elseif phase == "did" then
		conf:addEventListener( "tap", onConf );
		closeConf:addEventListener( "tap", onCloseConf );
		closeBtn:addEventListener( "tap", closeapp );
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