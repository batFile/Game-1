local composer = require( "composer" );
local scene = composer.newScene();

local sceneGroup;

local count;

local background;
local backBtn;

local choiceBtnOne;
local choiceBtnTwo;

local bgText;
local subject;
local subjectTxt;
local subjectName;
	
function createSubjects(scene)
	
	local tmpFace = "4-1";
	local tmpName = "Test";
	local tmpWords = "Test";
	
	bgText = display.newImageRect("bgText.png", display.contentWidth, display.contentHeight/3.2);
	bgText.x = display.contentCenterX;
	bgText.y = display.contentCenterY*1.4;
	bgText.alpha = 0;
	
	subject = display.newImageRect("storyOne/subjects/"..tmpFace..".png", display.contentWidth/2.2, display.contentHeight/3.2);
	subject.x = display.contentCenterX*1.7;
	subject.y = display.contentCenterY/1.1;
	subject.alpha = 0;

	local optionsTxtW = {
		text = ""..tmpWords,
		x = display.contentCenterX-45,
		y = display.contentHeight/1.4,
		width = display.contentWidth/1.4,
		height = display.contentHeight/3.8,
		font = native.systemFontBold,
		fontSize = 46,
		align = "center"
	}
	
	local optionsTxtN = {
		text = ""..tmpName,
		x = display.contentCenterX,
		y = 800,
		width = display.contentWidth/1.4,
		height = display.contentHeight/3.8,
		font = native.systemFontBold,
		fontSize = 52,
		align = "center"
	}
	
	subjectName = display.newText(optionsTxtN);
	subjectName:setTextColor( 255, 255, 255 );
	subjectName.alpha = 0;
	
	subjectTxt = display.newText(optionsTxtW);
	subjectTxt:setTextColor( 0, 0, 0 );
	subjectTxt.alpha = 0;
	
	scene:insert( subject );
	
	scene:insert( bgText );
	scene:insert( subjectName );
	scene:insert( subjectTxt );
	
	transition.to( subject, { time=1000, alpha=1 });
	transition.to( subjectName, { time=1000, alpha=1 });
	transition.to( subjectTxt, { time=1000, alpha=1 });
	transition.to( bgText, { time=1000, alpha=1 });
end

function createAll(scene)
	background = display.newImageRect("1b.jpg", display.contentWidth, display.contentHeight);
	background.x = display.contentCenterX;
	background.y = display.contentCenterY;
	
	backBtn = display.newImageRect("back.png", 100, 100);
	backBtn.x = 80;
	backBtn.y = 80;
	
	
	
	scene:insert( background );
	scene:insert( backBtn );
end

-- go to another scene

function onBackBtn()
	composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
end

function deleteAll()
	if background then
		background:removeSelf();
		background = nil;
	end
	if backBtn then
		backBtn:removeSelf();
		backBtn = nil;
	end
	if subjects then
		subjects:removeSelf();
		subjects = nil;
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
		backBtn:addEventListener('tap', onBackBtn);
		timer.performWithDelay( 1000, createSubjects(sceneGroup) );
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