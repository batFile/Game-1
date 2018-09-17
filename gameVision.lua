local composer = require( "composer" );
-- local saver = require( "saving" );
local animation = require( "animation" );
local music = require( "music" );
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

function createAll(scene)
	title = display.newImageRect("titleTestNine.png", 350, 280);
	title.x = display.contentCenterX + 20;
	title.y = display.contentCenterY/3.2;
	title.alpha = 0;
	
	storyOne = display.newImageRect("lvlOne.png", 460, 200);
	storyOne.x = display.contentCenterX;
	storyOne.y = display.contentCenterY*1.3;
	storyOne.alpha = 0;
	
	storyTwo = display.newImageRect("lvlTwo.png", 460, 200);
	storyTwo.x = display.contentCenterX;
	storyTwo.y = display.contentCenterY*1.53;
	storyTwo.alpha = 0;
	
	conf = display.newImageRect("confBtn.png", 150, 150);
	conf.x = display.contentCenterX-200;
	conf.y = display.contentCenterY*1.8;
	conf.alpha = 0;
	
	closeBtn = display.newImageRect("exitBtn.png", 150, 150);
	closeBtn.x = display.contentCenterX+200;
	closeBtn.y = display.contentCenterY*1.8;
	closeBtn.alpha = 0;
	
	congBlock = display.newImageRect("confBlockBG.jpg", 600, 600);
	congBlock.x = display.contentCenterX*4;
	congBlock.y = display.contentCenterY;
	
	closeConf = display.newImageRect("exitBtn.png", 100, 100);
	closeConf.x = display.contentCenterX*4;
	closeConf.y = display.contentCenterY/1.4;
	
	resetBtn = display.newImageRect("reset.png", 250, 250);
	resetBtn.x = display.contentCenterX*4;
	resetBtn.y = display.contentCenterY/1.2;
	
	scene:insert(title);
	scene:insert(storyOne);
	scene:insert(storyTwo);
	scene:insert(conf);
	scene:insert(closeBtn);
	scene:insert(congBlock);
	scene:insert(closeConf);
	scene:insert(resetBtn);
	
end

-- open, close config part (music, sounds, achivments)

function onConf()
	music.onSounds();
	congBlock.x = display.contentCenterX;
	closeConf.x = display.contentCenterX+150;
	resetBtn.x = display.contentCenterX;
	storyOne:removeEventListener('tap', onStoryOne);
end

function onCloseConf()
	music.onSounds();
	congBlock.x = display.contentCenterX*4;
	closeConf.x = display.contentCenterX*4;
	resetBtn.x = display.contentCenterX*4;
	storyOne:addEventListener('tap', onStoryOne);
end

-- go to another scene

function onStoryOne()
	music.onSounds();
	composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
end

function onReset()
	music.onSounds();
	-- saver.reWP(1);
	-- saver.reWC(1);
	
	-- saver.reWAchOne(0);
	-- saver.reWAchTwo(0);
	-- saver.reWAchThree(0);
end

-- close game Part

function closeapp()
	music.onSounds();
    if  system.getInfo("platformName")=="Android" then
		native.requestExit()
    else
		os.exit();
    end
end

-----------------------------------------------------------------------------------------

function scene:create( event )
	sceneGroup = self.view;
	animation.openMap();
	createAll(sceneGroup);
	storyOne:addEventListener('tap', onStoryOne);
end

function scene:show( event )
	sceneGroup = self.view;
	local phase = event.phase;
	
	if phase == "will" then

	elseif phase == "did" then
		
		conf:addEventListener( "tap", onConf );
		resetBtn:addEventListener( "tap", onReset );
		closeConf:addEventListener( "tap", onCloseConf );
		closeBtn:addEventListener( "tap", closeapp );
		
		transition.to( title, { time=2000, alpha=1 });
		transition.to( storyOne, { time=2000, alpha=1 });
		transition.to( storyTwo, { time=2000, alpha=1 });
		transition.to( conf, { time=2000, alpha=1 });
		transition.to( closeBtn, { time=2000, alpha=1 });
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