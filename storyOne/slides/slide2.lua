local composer = require( "composer" );
local saver = require( "saving" );
local music = require( "music" );
saver.reWP(2);
local scene = composer.newScene();

local Timer;

local sceneGroup;

local background;
local backBtn;

local count = tonumber(saver.readCount());

local choiceBtnOne;
local choiceBtnTwo;
local choiceBtnThree;

local clickBox;
	
local bgText;
local bgName;

local faceOne;
local faceTwo;
local faceThree;
local faceFour;
local faceFive;

local faceSix;
local faceSeven;
local faceEight;
local faceNine;
local faceTen;

local faceEleven;
local faceTwelve;
local faceThirteen;

local nameOne;
local nameTwo;
local nameThree;

local nameFour;
local nameFive;
local nameSix;

local wordsOne;
local wordsTwo;
local wordsThree;
local wordsFour;
local wordsFive;

local wordsSix;
local wordsSeven;
local wordsEight;
local wordsNine;
local wordsTen;

local wordsEleven;
local wordsTwelve;
local wordsThirteen;
local wordsFourteen;
local wordsFifteen;

local wordsSixteen;
local wordsSeventeen;
local wordsEighteen;
local wordsNineteen;
local wordsTwenty;

local wordsTwentyOne;
local wordsTwentyTwo;
local wordsTwentyThree;
local wordsTwentyFour;
local wordsTwentyFive;

local wordsTwentySix;
local wordsTwentySeven;
local wordsTwentyEight;
local wordsTwentyNine;
local wordsThirty;

local wordsThirtyOne;
local wordsThirtyTwo;

local tmpF = "";
local tmpN = "";
local tmpW = "";

local achiv;
-- face creating functions

function changeFace(face)
	tmpF = face;
end

function createFace(face)

	changeFace(face);

	local subjectOne = display.newImageRect("storyOne/subjects/"..tmpF..".png", display.contentWidth/2.2, display.contentHeight/3.2);
	subjectOne.x = display.contentCenterX*1.45;
	subjectOne.y = display.contentCenterY/1.101;
	subjectOne.alpha = 0;
	
	sceneGroup:insert( subjectOne );
	
	return subjectOne;
end

-- name creating functions

function changeName(name)
	tmpN = name;
end

function createName(name)

	changeName(name);
	
	local optionsTxtN = {
		text = ""..tmpN,
		x = display.contentCenterX - 80,
		y = 860,
		width = display.contentWidth/1.4,
		height = display.contentHeight/3.8,
		font = native.systemFontBold,
		fontSize = 52,
		align = "center"
	}
	
	local subjectName = display.newText(optionsTxtN);
	subjectName:setTextColor( 255, 255, 255 );
	subjectName.alpha = 0;
	sceneGroup:insert( subjectName );
	
	return subjectName;
end

-- text creating functions

function changeWords(words)
	tmpW = words;
end

function createWords(words)

	changeWords(words);
	
	local optionsTxtW = {
		text = ""..tmpW,
		x = display.contentCenterX,
		y = display.contentHeight/1.32,
		width = display.contentWidth/1.2,
		height = display.contentHeight/3.8,
		font = native.systemFontBold,
		fontSize = 46,
		align = "center"
	}
	
	local subjectWords = display.newText(optionsTxtW);
	subjectWords:setTextColor( 0, 0, 0 );
	subjectWords.alpha = 0;
	sceneGroup:insert( subjectWords );
	
	return subjectWords;
end


function createSubjects(scene)
	
	bgText = display.newImageRect("bgTextTwo.png", display.contentWidth, display.contentHeight/1.95);
	bgText.x = display.contentCenterX;
	bgText.y = display.contentCenterY*1.4;
	bgText.alpha = 0;
	
	bgName = display.newImageRect("nameBG.png", display.contentWidth/2.2, display.contentHeight/11.6);
	bgName.x = display.contentCenterX-40;
	bgName.y = 720;
	bgName.alpha = 0;
	
	scene:insert( bgName );
	
	-- ______________________________SUBJ_FACES_______________________________________________________________	
	
	faceOne = createFace("1-2");
	faceTwo = createFace("1-3");
	faceThree = createFace("2-1");
	faceFour = createFace("2-2");
	faceFive = createFace("2-3");
	
	faceSix = createFace("3-1");
	faceSeven = createFace("4-1");
	faceEight = createFace("4-3");
	faceNine = createFace("5-1");
	faceTen = createFace("5-3");
	
	faceEleven = createFace("6-1");
	faceTwelve = createFace("6-2");
	faceThirteen = createFace("1-1");
	
	-- background for text
	
	scene:insert( bgText );
	-- ______________________________SUBJ_NAMES_______________________________________________________________
	
	nameOne = createName("Дони");
	nameTwo = createName("Алекс");
	nameThree = createName("Муни");
	
	nameFour = createName("Дэн");
	nameFive = createName("Уил");
	nameSix = createName("Жули");
	-- ______________________________SUBJ_TEEEXT______________________________________________________________
	
	wordsOne = createWords("Брррр… Жуткое место.");
	wordsTwo = createWords("Не удивительно, что люди покинули эти края.");
	wordsThree = createWords("Охотники за сокровищами не давали спокойно жить местному населению");
	wordsFour = createWords("и оставаться было слишком опасно.");
	wordsFive = createWords("Поэтому люди были вынуждены бросить всё и отправиться в горы.");
	wordsSix = createWords("Неужели они не могли себя защитить?");
	wordsSeven = createWords("Со временем технологии взяли верх над копьями и факелами.");
	wordsEight = createWords("Им не чем было защищаться.");
	wordsNine = createWords("Смотрите, я вижу Храм! Давайте ускоримся!");
	wordsTen = createWords("Ребята, я кажется не смогу ускорится.");
	
	wordsEleven = createWords("Попал в какую то ловушку.");
	wordsTwelve = createWords("Стой!!! Не двигайся!!!");
	wordsThirteen = createWords("Это древняя ловушка, которую оставили испанцы из своего последнего путешествия.");
	wordsFourteen = createWords("Вот блин. Что же теперь делать?");
	wordsFifteen = createWords("Уил, не вздумай двигаться!!!");
	wordsSixteen = createWords("В противном случаи это будет твоя последняя поездка.");
	wordsSeventeen = createWords("Отойдите, я попробую взломать замочный механизм ловушки.");
	wordsEighteen = createWords("Еще минутку…..и, есть, можешь выходить.");
	wordsNineteen = createWords("Муни, я тебе больше не доверяю.");
	wordsTwenty = createWords("Это и был самый безопасный путь?");
	
	wordsTwentyOne = createWords("Я думаю пещера «Дьявола» или водопад «Аранджо» принесли бы нам больше неприятностей.");
	wordsTwentyTwo = createWords("Пещера «Дьявола», звучит не очень,");
	wordsTwentyThree = createWords("я согласна что деревня была оптимальным вариантом.");
	wordsTwentyFour = createWords("Я обследовал местность,");
	wordsTwentyFive = createWords("впереди путь свободен, ловушек не нашел.");
	wordsTwentySix = createWords("Надеюсь так и будет, не хотелось бы мне очутиться в одной из них.");
	wordsTwentySeven = createWords("Я вижу храм, почти пришли.");
	wordsTwentyEight = createWords("Чёрт! Ступеньки практически разрушены… Какие будут предложения?");
	wordsTwentyNine = createWords("Элементарно. Давайте искать обходной путь.");
	wordsThirty = createWords("Можно попробовать подсадить друг друга и по одному взобраться по развалинам.");
	
	wordsThirtyOne = createWords("Предлагаю кому-то залезть на дерево и разведать территорию.");
	wordsThirtyTwo = createWords("На карте указан обходной путь, но остальные варианты тоже не плохие. Какой же выбрать?");
end

function createAll(scene)
	background = display.newImageRect("2b.jpg", display.contentWidth, display.contentHeight);
	background.x = display.contentCenterX;
	background.y = display.contentCenterY;
	
	backBtn = display.newImageRect("back.png", 100, 100);
	backBtn.x = 80;
	backBtn.y = 80;
	
	choiceBtnOne = display.newImageRect("btnOne.png", display.contentWidth/3.5, 100);
	choiceBtnOne.alpha = 0;
	
	choiceBtnTwo = display.newImageRect("btnTwo.png", display.contentWidth/3.5, 100);
	choiceBtnTwo.alpha = 0;
	
	choiceBtnThree = display.newImageRect("btnThree.png", display.contentWidth/3.5, 100);
	choiceBtnThree.alpha = 0;
	
	clickBox = display.newImageRect("nameBG.png", display.contentWidth, display.contentHeight-200);
	clickBox.x = display.contentCenterX;
	clickBox.y = display.contentCenterY + 100;
	clickBox.alpha = 0;
	scene:insert( clickBox );
	clickBox:addEventListener('tap', changeAlpha);
	--Timer = timer.performWithDelay( 5000, changeAlpha, -1);
	
	achiv = display.newImageRect("achivments/Hack.png", 700, 200);
	achiv.x = display.contentCenterX;
	achiv.y = display.contentCenterY - 350;
	achiv.alpha = 0;
	
	scene:insert( background );
	scene:insert( backBtn );
	scene:insert( choiceBtnOne );
	scene:insert( choiceBtnTwo );
	scene:insert( choiceBtnThree );
	createSubjects(sceneGroup);
	scene:insert( achiv );
end

-- tell them story

function onAchiv()
	achiv.alpha = 1;
end

function onAchivEnd()
	transition.to( achiv, { time=2500, alpha=0 });
end

function checkAlpha()
	if count == 2 then
		faceEleven.alpha = 1;
		nameFive.alpha = 1;
		wordsTwo.alpha = 1;
	end
	if count == 3 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsThree.alpha = 1;
	end
	if count == 4 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsFour.alpha = 1;
	end
	if count == 5 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsFive.alpha = 1;
	end
	if count == 6 then
		faceOne.alpha = 1;
		nameTwo.alpha = 1;
		wordsSix.alpha = 1;
	end
	if count == 7 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsSeven.alpha = 1;
	end
	if count == 8 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsEight.alpha = 1;	
	end
	if count == 9 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsNine.alpha = 1;
	end
	if count == 10 then
		faceEleven.alpha = 1;
		nameFive.alpha = 1;
		wordsTen.alpha = 1;
	end
	if count == 11 then
		faceTwelve.alpha = 1;
		nameFive.alpha = 1;
		wordsEleven.alpha = 1;
	end
	if count == 12 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsTwelve.alpha = 1;
	end
	if count == 13 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsThirteen.alpha = 1;
	end
	if count == 14 then
		faceOne.alpha = 1;
		nameTwo.alpha = 1;
		wordsFourteen.alpha = 1;
	end
	if count == 15 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsFifteen.alpha = 1;
	end
	if count == 16 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsSixteen.alpha = 1;
	end
	if count == 17 then
		faceSeven.alpha = 1;
		nameFour.alpha = 1;
		wordsSeventeen.alpha = 1;
	end
	if count == 18 then
		faceEight.alpha = 1;
		nameFour.alpha = 1;
		wordsEighteen.alpha = 1;
	end
	if count == 19 then
		faceEleven.alpha = 1;
		nameFive.alpha = 1;
		wordsNineteen.alpha = 1;
	end
	if count == 20 then
		faceEleven.alpha = 1;
		nameFive.alpha = 1;
		wordsTwenty.alpha = 1;
	end
	if count == 21 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsTwentyOne.alpha = 1;
		
	end
	if count == 22 then
		faceFive.alpha = 1;
		nameSix.alpha = 1;
		wordsTwentyTwo.alpha = 1;
	end
	if count == 23 then
		faceThree.alpha = 1;
		nameSix.alpha = 1;
		wordsTwentyThree.alpha = 1;
	end
	if count == 24 then
		faceNine.alpha = 1;
		nameOne.alpha = 1;
		wordsTwentyFour.alpha = 1;
	end
	if count == 25 then
		faceTen.alpha = 1;
		nameOne.alpha = 1;
		wordsTwentyFive.alpha = 1;
	end
	if count == 26 then
		faceTwo.alpha = 1;
		nameTwo.alpha = 1;
		wordsTwentySix.alpha = 1;
	end
	if count == 27 then
		faceSeven.alpha = 1;
		nameFour.alpha = 1;
		wordsTwentySeven.alpha = 1;
	end
	if count == 28 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsTwentyEight.alpha = 1;
	end
	if count == 29 then
		faceEleven.alpha = 1;
		nameFive.alpha = 1;
		wordsTwentyNine.alpha = 1;
	end
	if count == 30 then
		faceNine.alpha = 1;
		nameOne.alpha = 1;
		wordsThirty.alpha = 1;
	end
	if count == 31 then
		faceThirteen.alpha = 1;
		nameTwo.alpha = 1;
		wordsThirtyOne.alpha = 1;
	end
	if count == 32 then
		faceSix.alpha = 1;
		nameThree.alpha = 1;
		wordsThirtyTwo.alpha = 1;
		
		clickBox.alpha = 0;
		
		choiceBtnOne.x = display.contentCenterX/2.4;
		choiceBtnOne.y = display.contentCenterY*1.8;
		choiceBtnOne.alpha = 1;
		
		choiceBtnTwo.x = display.contentCenterX;
		choiceBtnTwo.y = display.contentCenterY*1.8;
		choiceBtnTwo.alpha = 1;
		
		choiceBtnThree.x = display.contentCenterX*1.6;
		choiceBtnThree.y = display.contentCenterY*1.8;
		choiceBtnThree.alpha = 1;
	end
end

function changeAlpha()
	
	count = count + 1;
	
	if count == 2 then
		wordsOne.alpha = 0;
		wordsTwo.alpha = 1;
	end
	if count == 3 then
		faceEleven.alpha = 0;
		faceSix.alpha = 1;
		
		nameFive.alpha = 0;
		nameThree.alpha = 1;
		
		wordsTwo.alpha = 0;
		wordsThree.alpha = 1;
	end
	if count == 4 then
		wordsThree.alpha = 0;
		wordsFour.alpha = 1;
	end
	if count == 5 then
		wordsFour.alpha = 0;
		wordsFive.alpha = 1;
	end
	if count == 6 then
		faceSix.alpha = 0;
		faceOne.alpha = 1;
		
		nameThree.alpha = 0;
		nameTwo.alpha = 1;
	
		wordsFive.alpha = 0;
		wordsSix.alpha = 1;
	end
	if count == 7 then
		faceOne.alpha = 0;
		faceSix.alpha = 1;
		
		nameTwo.alpha = 0;
		nameThree.alpha = 1;
		
		wordsSix.alpha = 0;
		wordsSeven.alpha = 1;
	end
	if count == 8 then
		wordsSeven.alpha = 0;
		wordsEight.alpha = 1;	
	end
	if count == 9 then
		faceSix.alpha = 0;
		faceFour.alpha = 1;
		
		nameThree.alpha = 0;
		nameSix.alpha = 1;
	
		wordsEight.alpha = 0;
		wordsNine.alpha = 1;
	end
	if count == 10 then
		faceFour.alpha = 0;
		faceEleven.alpha = 1;
		
		nameSix.alpha = 0;
		nameFive.alpha = 1;
		
		wordsNine.alpha = 0;
		wordsTen.alpha = 1;
	end
	if count == 11 then
		faceEleven.alpha = 0;
		faceTwelve.alpha = 1;
	
		wordsTen.alpha = 0;
		wordsEleven.alpha = 1;
	end
	if count == 12 then
		faceTwelve.alpha = 0;
		faceSix.alpha = 1;
		
		nameFive.alpha = 0;
		nameThree.alpha = 1;
	
		wordsEleven.alpha = 0;
		wordsTwelve.alpha = 1;
	end
	if count == 13 then
		wordsTwelve.alpha = 0;
		wordsThirteen.alpha = 1;
	end
	if count == 14 then
		faceSix.alpha = 0;
		faceOne.alpha = 1;
		
		nameThree.alpha = 0;
		nameTwo.alpha = 1;
		
		wordsThirteen.alpha = 0;
		wordsFourteen.alpha = 1;
	end
	if count == 15 then
		faceOne.alpha = 0;
		faceSix.alpha = 1;
		
		nameTwo.alpha = 0;
		nameThree.alpha = 1;
		
		wordsFourteen.alpha = 0;
		wordsFifteen.alpha = 1;
	end
	if count == 16 then
		wordsFifteen.alpha = 0;
		wordsSixteen.alpha = 1;
	end
	if count == 17 then
		faceSix.alpha = 0;
		faceSeven.alpha = 1;
		
		nameThree.alpha = 0;
		nameFour.alpha = 1;	
	
		wordsSixteen.alpha = 0;
		wordsSeventeen.alpha = 1;
	end
	if count == 18 then
		faceSeven.alpha = 0;
		faceEight.alpha = 1;
	
		wordsSeventeen.alpha = 0;
		wordsEighteen.alpha = 1;
		
		onAchiv();
		local tm = timer.performWithDelay( 3500, onAchivEnd );
	end
	if count == 19 then
		faceEight.alpha = 0;
		faceEleven.alpha = 1;
		
		nameFour.alpha = 0;
		nameFive.alpha = 1;
		
		wordsEighteen.alpha = 0;
		wordsNineteen.alpha = 1;
	end
	if count == 20 then
		wordsNineteen.alpha = 0;
		wordsTwenty.alpha = 1;
	end
	if count == 21 then
		faceEleven.alpha = 0;
		faceSix.alpha = 1;
		
		nameFive.alpha = 0;
		nameThree.alpha = 1;
	
		wordsTwenty.alpha = 0;
		wordsTwentyOne.alpha = 1;
		
	end
	if count == 22 then
		faceSix.alpha = 0;
		faceFive.alpha = 1;
		
		nameThree.alpha = 0;
		nameSix.alpha = 1;
	
		wordsTwentyOne.alpha = 0;
		wordsTwentyTwo.alpha = 1;
	end
	if count == 23 then
		faceFive.alpha = 0;
		faceThree.alpha = 1;
	
		wordsTwentyTwo.alpha = 0;
		wordsTwentyThree.alpha = 1;
	end
	if count == 24 then
		faceThree.alpha = 0;
		faceNine.alpha = 1;
		
		nameSix.alpha = 0;
		nameOne.alpha = 1;
	
		wordsTwentyThree.alpha = 0;
		wordsTwentyFour.alpha = 1;
	end
	if count == 25 then
		faceNine.alpha = 0;
		faceTen.alpha = 1;
	
		wordsTwentyFour.alpha = 0;
		wordsTwentyFive.alpha = 1;
	end
	if count == 26 then
		faceTen.alpha = 0;
		faceTwo.alpha = 1;
		
		nameOne.alpha = 0;
		nameTwo.alpha = 1;
	
		wordsTwentyFive.alpha = 0;
		wordsTwentySix.alpha = 1;
	end
	if count == 27 then
		faceTwo.alpha = 0;
		faceSeven.alpha = 1;
		
		nameTwo.alpha = 0;
		nameFour.alpha = 1;
		
		wordsTwentySix.alpha = 0;
		wordsTwentySeven.alpha = 1;
	end
	if count == 28 then
		faceSeven.alpha = 0;
		faceSix.alpha = 1;
		
		nameFour.alpha = 0;
		nameThree.alpha = 1;
		
		wordsTwentySeven.alpha = 0;
		wordsTwentyEight.alpha = 1;
	end
	if count == 29 then
		faceSix.alpha = 0;
		faceEleven.alpha = 1;
		
		nameThree.alpha = 0;
		nameFive.alpha = 1;
		
		wordsTwentyEight.alpha = 0;
		wordsTwentyNine.alpha = 1;
	end
	if count == 30 then
		faceEleven.alpha = 0;
		faceNine.alpha = 1;
		
		nameFive.alpha = 0;
		nameOne.alpha = 1;
		
		wordsTwentyNine.alpha = 0;
		wordsThirty.alpha = 1;
	end
	if count == 31 then
		faceNine.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameOne.alpha = 0;
		nameTwo.alpha = 1;
		
		wordsThirty.alpha = 0;
		wordsThirtyOne.alpha = 1;
	end
	if count == 32 then
		faceThirteen.alpha = 0;
		faceSix.alpha = 1;
		
		nameTwo.alpha = 0;
		nameThree.alpha = 1;
		
		wordsThirtyOne.alpha = 0;
		wordsThirtyTwo.alpha = 1;
		
		clickBox.alpha = 0;
		
		choiceBtnOne.x = display.contentCenterX/2.4;
		choiceBtnOne.y = display.contentCenterY*1.8;
		choiceBtnOne.alpha = 1;
		
		choiceBtnTwo.x = display.contentCenterX;
		choiceBtnTwo.y = display.contentCenterY*1.8;
		choiceBtnTwo.alpha = 1;
		
		choiceBtnThree.x = display.contentCenterX*1.6;
		choiceBtnThree.y = display.contentCenterY*1.8;
		choiceBtnThree.alpha = 1;
	end
	
	saver.reWC(count);
end

-- go to another scene

function onBackBtn()
	music.onSounds();
	composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
end

function onBtnOne()
	music.onSounds();
	saver.reWC(1);
	composer.removeScene("storyOne.slides.slide2");
	composer.gotoScene( "storyOne.slides.slide4", "slideLeft", 800 );
end

function onBtnTwo()
	music.onSounds();
	saver.reWC(1);
	composer.removeScene("storyOne.slides.slide2");
	composer.gotoScene( "storyOne.slides.slide5", "slideLeft", 800 );
end

function onBtnThree()
	music.onSounds();
	saver.reWC(1);
	composer.removeScene("storyOne.slides.slide2");
	composer.gotoScene( "storyOne.slides.slide6", "slideLeft", 800 );
end

function onTimer()
	clickBox.alpha = 1;
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
		choiceBtnOne:addEventListener('tap', onBtnOne);
		choiceBtnTwo:addEventListener('tap', onBtnTwo);
		choiceBtnThree:addEventListener('tap', onBtnThree);
		
		if count == 1 then
			transition.to( faceEleven, { time=800, alpha=1 });
			transition.to( nameFive, { time=800, alpha=1 });
			transition.to( wordsOne, { time=800, alpha=1 });
			transition.to( bgText, { time=800, alpha=1 });
			transition.to( bgName, { time=800, alpha=1 });
			local tm = timer.performWithDelay( 800, onTimer );
		end
		
		if count > 1 then
			checkAlpha();
			bgText.alpha = 1;
			bgName.alpha = 1;
			local tm = timer.performWithDelay( 800, onTimer );
		end
		
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