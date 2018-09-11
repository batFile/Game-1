local composer = require( "composer" );
local saver = require( "saving" );
local music = require( "music" );
local scene = composer.newScene();

local sceneGroup;
local background;
local playBtn;
local content;
local title;
local choosePart;
local conf;
local closeBtn;

local congBlock;
local closeConf;
local resetBtn;

local checkBack = false;

function createAll(scene)
	
	-- background = display.newImageRect("1b.jpg", display.contentWidth, display.contentHeight);
	-- background.x = display.contentCenterX;
	-- background.y = display.contentCenterY;
	
	title = display.newImageRect("titleTestNine.png", 350, 280);
	title.x = display.contentCenterX + 20;
	title.y = display.contentCenterY/3.2;
	
	-- content = display.newImageRect("content.jpg", 500, 500);
	-- content.x = display.contentCenterX;
	-- content.y = display.contentCenterY/1.4;
	
	playBtn = display.newImageRect("playBtn.png", 460, 200);
	playBtn.x = display.contentCenterX;
	playBtn.y = display.contentCenterY*1.3;
	
	choosePart = display.newImageRect("achiv.png", 460, 200);
	choosePart.x = display.contentCenterX;
	choosePart.y = display.contentCenterY*1.53;
	
	conf = display.newImageRect("confBtn.png", 150, 150);
	conf.x = display.contentCenterX-200;
	conf.y = display.contentCenterY*1.8;
	
	closeBtn = display.newImageRect("back.png", 150, 150);
	closeBtn.x = display.contentCenterX+200;
	closeBtn.y = display.contentCenterY*1.8;
	
	congBlock = display.newImageRect("confBlockBG.jpg", 800, 600);
	congBlock.x = display.contentCenterX*4;
	congBlock.y = display.contentCenterY;
	
	closeConf = display.newImageRect("exitBtn.png", 100, 100);
	closeConf.x = display.contentCenterX*4;
	closeConf.y = display.contentCenterY/1.4;
	
	resetBtn = display.newImageRect("reset.png", 250, 250);
	resetBtn.x = display.contentCenterX*4;
	resetBtn.y = display.contentCenterY/1.2;
	
	playBtn:addEventListener('tap', onPlayBtn);
	choosePart:addEventListener('tap', onChoosePart);
	
	-- scene:insert( background );
	-- scene:insert( content );
	scene:insert( playBtn );
	scene:insert( title );
	scene:insert( choosePart );
	scene:insert( conf );
	scene:insert( closeBtn );
	
	scene:insert( congBlock );
	scene:insert( closeConf );
	scene:insert( resetBtn );
end

function onConf()
	music.onSounds();
	congBlock.x = display.contentCenterX;
	closeConf.x = display.contentCenterX+150;
	resetBtn.x = display.contentCenterX;
	playBtn:removeEventListener('tap', onPlayBtn);
	choosePart:removeEventListener('tap', onChoosePart);
end

function onCloseConf()
	music.onSounds();
	congBlock.x = display.contentCenterX*4;
	closeConf.x = display.contentCenterX*4;
	resetBtn.x = display.contentCenterX*4;
	playBtn:addEventListener('tap', onPlayBtn);
	choosePart:addEventListener('tap', onChoosePart);
end

function onReset()
	music.onSounds();
	saver.reWP(1);
	saver.reWC(1);
	
	saver.reWAchOne(0);
	saver.reWAchTwo(0);
	saver.reWAchThree(0);
end
-- go to another scene

function onChoosePart()
	music.onSounds();
	composer.gotoScene( "storyOne.parts", "fade", 800 );
end

function onPlayBtn()
	music.onSounds();
	-- local tmp = saver.readPart();
	composer.gotoScene( "storyOne.slides.slide"..saver.readPart(), "fade", 800 );
end

-- close game Part

function closeapp()
	music.onSounds();
	composer.gotoScene( "gameVision", "fade", 800 );
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
	if playBtn then
		playBtn:removeSelf();
		playBtn = nil;
	end
	if choosePart then
		choosePart:removeSelf();
		choosePart = nil;
	end
	if congBlock then
		congBlock:removeSelf();
		congBlock = nil;
	end
	if closeConf then
		closeConf:removeSelf();
		closeConf = nil;
	end
	if conf then
		conf:removeSelf();
		conf = nil;
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
		conf:addEventListener('tap', onConf);
		closeConf:addEventListener('tap', onCloseConf);
		resetBtn:addEventListener('tap', onReset);
		closeBtn:addEventListener( "tap", closeapp );
	end	
end

function scene:destroy( event )
	sceneGroup = self.view;
	tmpR = false;
	deleteAll();
end

-- Listener setup
scene:addEventListener( "create", scene );
scene:addEventListener( "show", scene );
scene:addEventListener( "destroy", scene );

-----------------------------------------------------------------------------------------

return scene;