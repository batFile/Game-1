local composer = require( "composer" );

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

local tmp = composer.getVariable( "startCheckpoint" );
local tmpR = composer.getVariable( "reset" );

local checkBack = false;

local clickMusic = audio.loadStream("click.mp3");
local clickMusicChannel;

function createAll(scene)
	
	background = display.newImageRect("1b.jpg", display.contentWidth, display.contentHeight);
	background.x = display.contentCenterX;
	background.y = display.contentCenterY;
	
	title = display.newImageRect("title.png", 500, 200);
	title.x = display.contentCenterX;
	title.y = display.contentCenterY/5.4;
	
	content = display.newImageRect("content.jpg", 500, 500);
	content.x = display.contentCenterX;
	content.y = display.contentCenterY/1.4;
	
	playBtn = display.newImageRect("playBtn.png", 460, 200);
	playBtn.x = display.contentCenterX;
	playBtn.y = display.contentCenterY*1.3;
	
	choosePart = display.newImageRect("achiv.png", 460, 200);
	choosePart.x = display.contentCenterX;
	choosePart.y = display.contentCenterY*1.53;
	
	conf = display.newImageRect("confBtn.png", 200, 200);
	conf.x = display.contentCenterX-200;
	conf.y = display.contentCenterY*1.8;
	
	closeBtn = display.newImageRect("exitBtn.png", 200, 200);
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
	
	scene:insert( background );
	scene:insert( content );
	scene:insert( playBtn );
	scene:insert( title );
	scene:insert( choosePart );
	scene:insert( conf );
	scene:insert( closeBtn );
	
	scene:insert( congBlock );
	scene:insert( closeConf );
	scene:insert( resetBtn );
end

-- open, close config part (music, sounds, achivments)

function onConf()
	clickMusicChannel = audio.play( clickMusic, { channel=1, loops=0} );
	congBlock.x = display.contentCenterX;
	closeConf.x = display.contentCenterX+150;
	resetBtn.x = display.contentCenterX;
	playBtn:removeEventListener('tap', onPlayBtn);
	choosePart:removeEventListener('tap', onChoosePart);
end

function onCloseConf()
	clickMusicChannel = audio.play( clickMusic, { channel=1, loops=0} );
	congBlock.x = display.contentCenterX*4;
	closeConf.x = display.contentCenterX*4;
	resetBtn.x = display.contentCenterX*4;
	playBtn:addEventListener('tap', onPlayBtn);
	choosePart:addEventListener('tap', onChoosePart);
end

function onReset()
	clickMusicChannel = audio.play( clickMusic, { channel=1, loops=0} );
	tmpR = true;
end
-- go to another scene

function onChoosePart()
	clickMusicChannel = audio.play( clickMusic, { channel=1, loops=0} );
	composer.gotoScene( "storyOne.parts", "fade", 800 );
end

function reWriteData(saveData)
	local path = system.pathForFile("part.txt", system.ResourceDirectory);
	local file = io.open( path, "w" );
	file:write( saveData );
	io.close( file );
end

function reWriteDataCount(saveData)
	local path = system.pathForFile("count.txt", system.ResourceDirectory);
	local file = io.open( path, "w" );
	file:write( saveData );
	io.close( file );
end

function onPlayBtn()
	clickMusicChannel = audio.play( clickMusic, { channel=1, loops=0} );
	local tmpT = composer.getVariable( "checkpoint" );
	
	if tmpR then
		tmp = 1;
		tmpT = 1;
	end
	
	if checkBack then
		composer.gotoScene( "storyOne.slides.slide"..tmpT, "fade", 800 );
	else
		checkBack = true;
		composer.gotoScene( "storyOne.slides.slide"..tmp, "fade", 800 );
	end
end

-- close game Part

function closeapp()
	
	-- rewrite data
	
	tmp = composer.getVariable( "checkpoint" );
	local tmpC = composer.getVariable( "count" );
	reWriteData(tmp);
	reWriteDataCount(tmpC);
	
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