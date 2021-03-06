local composer = require( "composer" );
local saver = require( "saving" );
local music = require( "music" );
saver.reWP(5);
local scene = composer.newScene();

local Timer;

local sceneGroup;

local background;
local backBtn;

local count = tonumber(saver.readCount());

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
local faceFourteen;
local faceFifteeen;

local faceSixteen;
local faceSeventeen;
local faceEighteen;

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
local wordsThirtyThree;
local wordsThirtyFour;
local wordsThirtyFive;

local tmpF = "";
local tmpN = "";
local tmpW = "";

local achivOne;
local achivTwo;

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

function subFuncCreateSubOne()
	faceOne = createFace("1-1");
	faceTwo = createFace("1-2");
	faceThree = createFace("1-3");
	faceFour = createFace("2-1");
	faceFive = createFace("2-2");
	
	faceSix = createFace("2-3");
	faceSeven = createFace("3-1");
	faceEight = createFace("3-2");
	faceNine = createFace("3-3");
	faceTen = createFace("4-1");
	
	faceEleven = createFace("4-2");
	faceTwelve = createFace("4-3");
	faceThirteen = createFace("5-1");
	faceFourteen = createFace("5-2");
	faceFifteeen = createFace("5-3");
	
	faceSixteen = createFace("6-1");
	faceSeventeen = createFace("6-2");
	faceEighteen = createFace("6-3");
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

function subFuncCreateSubTwo()
	wordsOne = createWords("Боюсь, что мне на плечи никто не сядет. Разве что Жули.");
	wordsTwo = createWords("Я тоже не в восторге от этой затеи, но почему бы не попробовать.");
	wordsThree = createWords("Дони может всех подсадить.");
	wordsFour = createWords("Вот только у Дони забыли спросить.");
	wordsFive = createWords("Та брось, ты самый крепкий, для тебя это не будет проблемой.");
	wordsSix = createWords("Вау. Это можно расценивать как комплимент?");
	wordsSeven = createWords("Ребята, давайте не будем тратить время.");
	wordsEight = createWords("Я предлагаю что бы Дони и Уил подсадили остальных, и так мы сможем взобраться.");
	wordsNine = createWords("Я бы выбрал другой путь, но ладно давайте быстрее.");
	wordsTen = createWords("Поехали, Муни ты первый, кто-то идите к Уилу.");
end

function subFuncCreateSubThree()
	wordsEleven = createWords("Девочки подходите, кого еще подсадить.");
	wordsTwelve = createWords("Все девочки уже взобрались.");
	wordsThirteen = createWords("Уил, аккуратно, там пантера.");
	wordsFourteen = createWords("Как то она агрессивно настроена.");
	wordsFifteen = createWords("Что за день? Почему только со мной это происходит?");
	wordsSixteen = createWords("Уил, не шевелись, я выстрелю в нее из арбалета усыпляющей стрелой.");
	wordsSeventeen = createWords("Давай быстрее, она все ближе.");
	wordsEighteen = createWords("Не двигайся, стреляю.");
	wordsNineteen = createWords("Попал! Молодец!");
	wordsTwenty = createWords("Кажется опасность миновала, давайте продвигаться дальше.");
end

function subFuncCreateSubFour()
	wordsTwentyOne = createWords("Что то мне не хорошо.");
	wordsTwentyTwo = createWords("Что на этот раз случилось?");
	wordsTwentyThree = createWords("Она вся горит.");
	wordsTwentyFour = createWords("Смотрите, у нее на шее укус,");
	wordsTwentyFive = createWords("такой след мог оставить только «ядовитый чешуистый москит».");
	wordsTwentySix = createWords("Я слышал, что укусы этих насекомых могут привести к трагическим последствиям.");
	wordsTwentySeven = createWords("Так и есть, но я смогу ее вылечить.");
	wordsTwentyEight = createWords("Мне уже лучше, пошлите дальше.");
	wordsTwentyNine = createWords("Наконец-то мы добрались до Храма. И конечно же, дверь заперта.");
	wordsThirty = createWords("И что теперь делать?");
	
	wordsThirtyOne = createWords("Эту дверь не отпирали сотни лет.");
	wordsThirtyTwo = createWords("Хммм… Давайте попробуем надавить на дверь все вместе.");
	wordsThirtyThree = createWords("Должно сработать. На счет три. Раз…два…три!");
	wordsThirtyFour = createWords("Есть!");
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
	
	subFuncCreateSubOne();
	
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
	
	subFuncCreateSubTwo();
	subFuncCreateSubThree();
	subFuncCreateSubFour();
	
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
	
	achivOne = display.newImageRect("achivments/Tank.png", 700, 200);
	achivOne.x = display.contentCenterX;
	achivOne.y = display.contentCenterY - 350;
	achivOne.alpha = 0;
	
	achivTwo = display.newImageRect("achivments/Heal.png", 700, 200);
	achivTwo.x = display.contentCenterX;
	achivTwo.y = display.contentCenterY - 350;
	achivTwo.alpha = 0;
	
	scene:insert( background );
	scene:insert( backBtn );
	scene:insert( choiceBtnOne );
	scene:insert( choiceBtnTwo );
	scene:insert( choiceBtnThree );
	createSubjects(sceneGroup);
end

-- tell them story

function onAchiv(achiv)
	achiv.alpha = 1;
end

function onAchivOneEnd()
	transition.to( achivOne, { time=2500, alpha=0 });
end

function onAchivTwoEnd()
	transition.to( achivTwo, { time=2500, alpha=0 });
end

function checkAlphaOne()
	if count == 2 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsTwo.alpha = 1;
	end
	if count == 3 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsThree.alpha = 1;
	end
	if count == 4 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsFour.alpha = 1;
	end
	if count == 5 then
		faceFive.alpha = 1;
		nameSix.alpha = 1;
		wordsFive.alpha = 1;
	end
	if count == 6 then
		faceFifteeen.alpha = 1;
		nameOne.alpha = 1;
		wordsSix.alpha = 1;
	end
	if count == 7 then
		faceTen.alpha = 1;
		nameFour.alpha = 1;
		wordsSeven.alpha = 1;
	end
	if count == 8 then
		faceOne.alpha = 1;
		nameTwo.alpha = 1;
		wordsEight.alpha = 1;	
	end
	if count == 9 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsNine.alpha = 1;
	end
	if count == 10 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsTen.alpha = 1;
	end
end

function checkAlphaTwo()
	if count == 11 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsEleven.alpha = 1;
	end
	if count == 12 then
		faceOne.alpha = 1;
		nameTwo.alpha = 1;
		wordsTwelve.alpha = 1;
	end
	if count == 13 then
		faceSix.alpha = 1;
		nameSix.alpha = 1;
		wordsThirteen.alpha = 1;
	end
	if count == 14 then
		faceSeven.alpha = 1;
		nameThree.alpha = 1;
		wordsFourteen.alpha = 1;
	end
	if count == 15 then
		faceSeventeen.alpha = 1;
		nameFive.alpha = 1;
		wordsFifteen.alpha = 1;
	end
	if count == 16 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsSixteen.alpha = 1;
	end
	if count == 17 then
		faceSeventeen.alpha = 1;
		nameFive.alpha = 1;	
		wordsSeventeen.alpha = 1;
	end
	if count == 18 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;	
		wordsEighteen.alpha = 1;
	end
	if count == 19 then
		faceFive.alpha = 1;
		nameSix.alpha = 1;
		wordsNineteen.alpha = 1;
	end
	if count == 20 then
		faceSeven.alpha = 1;
		nameThree.alpha = 1;
		wordsTwenty.alpha = 1;
	end
end

function checkAlphaThree()
	if count == 21 then
		faceTwo.alpha = 1;
		nameTwo.alpha = 1;
		wordsTwentyOne.alpha = 1;
	end
	if count == 22 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsTwentyTwo.alpha = 1;
	end
	if count == 23 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsTwentyThree.alpha = 1;
	end
	if count == 24 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsTwentyFour.alpha = 1;
	end
	if count == 25 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsTwentyFive.alpha = 1;
	end
	if count == 26 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsTwentySix.alpha = 1;
	end
	if count == 27 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsTwentySeven.alpha = 1;
	end
	if count == 28 then
		faceThree.alpha = 1;
		nameTwo.alpha = 1;
		wordsTwentyEight.alpha = 1;
	end
	if count == 29 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsTwentyNine.alpha = 1;
	end
	if count == 30 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsThirty.alpha = 1;
	end
	if count == 31 then
		faceSeven.alpha = 1;
		nameThree.alpha = 1;
		wordsThirtyOne.alpha = 1;
	end
	if count == 32 then			
		faceSeven.alpha = 1;
		nameThree.alpha = 1;
		wordsThirtyTwo.alpha = 1;
	end
	if count == 33 then
		faceTen.alpha = 1;
		nameFour.alpha = 1;
		wordsThirtyThree.alpha = 1;
	end
	if count == 34 then
		faceThree.alpha = 1;
		nameTwo.alpha = 1;
		wordsThirtyFour.alpha = 1;
	end
end

function subFuncChangeAlphaOne()
	if count == 2 then
		faceOne.alpha = 0;
		faceFour.alpha = 1;
		
		nameTwo.alpha = 0;
		nameSix.alpha = 1;
		
		wordsOne.alpha = 0;
		wordsTwo.alpha = 1;
	end
	if count == 3 then
		wordsTwo.alpha = 0;
		wordsThree.alpha = 1;
	end
	if count == 4 then
		faceFour.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameOne.alpha = 1;
		
		wordsThree.alpha = 0;
		wordsFour.alpha = 1;
	end
	if count == 5 then
		faceThirteen.alpha = 0;
		faceFive.alpha = 1;
		
		nameOne.alpha = 0;
		nameSix.alpha = 1;
		
		wordsFour.alpha = 0;
		wordsFive.alpha = 1;
	end
	if count == 6 then
		faceFive.alpha = 0;
		faceFifteeen.alpha = 1;
		
		nameSix.alpha = 0;
		nameOne.alpha = 1;
		
		wordsFive.alpha = 0;
		wordsSix.alpha = 1;
	end
	if count == 7 then
		faceFifteeen.alpha = 0;
		faceTen.alpha = 1;
		
		nameOne.alpha = 0;
		nameFour.alpha = 1;
		
		wordsSix.alpha = 0;
		wordsSeven.alpha = 1;
	end
	if count == 8 then
		faceTen.alpha = 0;
		faceOne.alpha = 1;
		
		nameFour.alpha = 0;
		nameTwo.alpha = 1;
		
		wordsSeven.alpha = 0;
		wordsEight.alpha = 1;	
	end
	if count == 9 then
		faceOne.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameTwo.alpha = 0;
		nameFive.alpha = 1;
	
		wordsEight.alpha = 0;
		wordsNine.alpha = 1;
	end
	if count == 10 then
		faceSixteen.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameFive.alpha = 0;
		nameOne.alpha = 1;
		
		wordsNine.alpha = 0;
		wordsTen.alpha = 1;
	end
end

function subFuncChangeAlphaTwo()
	if count == 11 then
		faceThirteen.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameOne.alpha = 0;
		nameFive.alpha = 1;
		
		wordsTen.alpha = 0;
		wordsEleven.alpha = 1;
	end
	if count == 12 then
		faceSixteen.alpha = 0;
		faceOne.alpha = 1;
		
		nameFive.alpha = 0;
		nameTwo.alpha = 1;
	
		wordsEleven.alpha = 0;
		wordsTwelve.alpha = 1;
	end
	if count == 13 then
		faceOne.alpha = 0;
		faceSix.alpha = 1;
		
		nameTwo.alpha = 0;
		nameSix.alpha = 1;
		
		wordsTwelve.alpha = 0;
		wordsThirteen.alpha = 1;
	end
	if count == 14 then
		faceSix.alpha = 0;
		faceSeven.alpha = 1;
		
		nameSix.alpha = 0;
		nameThree.alpha = 1;
		
		wordsThirteen.alpha = 0;
		wordsFourteen.alpha = 1;
	end
	if count == 15 then
		faceSeven.alpha = 0;
		faceSeventeen.alpha = 1;
		
		nameThree.alpha = 0;
		nameFive.alpha = 1;
		
		wordsFourteen.alpha = 0;
		wordsFifteen.alpha = 1;
	end
	if count == 16 then
		faceSeventeen.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameFive.alpha = 0;
		nameOne.alpha = 1;
		
		wordsFifteen.alpha = 0;
		wordsSixteen.alpha = 1;
	end
	if count == 17 then
		faceThirteen.alpha = 0;
		faceSeventeen.alpha = 1;
		
		nameOne.alpha = 0;
		nameFive.alpha = 1;	
	
		wordsSixteen.alpha = 0;
		wordsSeventeen.alpha = 1;
	end
	if count == 18 then
		faceSeventeen.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameFive.alpha = 0;
		nameOne.alpha = 1;	
		
		wordsSeventeen.alpha = 0;
		wordsEighteen.alpha = 1;
		
		onAchiv(achivOne);
		local tm = timer.performWithDelay( 3500, onAchivOneEnd );
	end
	if count == 19 then
		faceThirteen.alpha = 0;
		faceFive.alpha = 1;
		
		nameOne.alpha = 0;
		nameSix.alpha = 1;
		
		wordsEighteen.alpha = 0;
		wordsNineteen.alpha = 1;
	end
	if count == 20 then
		faceFive.alpha = 0;
		faceSeven.alpha = 1;
		
		nameSix.alpha = 0;
		nameThree.alpha = 1;
		
		wordsNineteen.alpha = 0;
		wordsTwenty.alpha = 1;
	end
end

function subFuncChangeAlphaThree()
	if count == 21 then
		faceSeven.alpha = 0;
		faceTwo.alpha = 1;
		
		nameThree.alpha = 0;
		nameTwo.alpha = 1;
	
		wordsTwenty.alpha = 0;
		wordsTwentyOne.alpha = 1;
	end
	if count == 22 then
		faceTwo.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameTwo.alpha = 0;
		nameOne.alpha = 1;
	
		wordsTwentyOne.alpha = 0;
		wordsTwentyTwo.alpha = 1;
	end
	if count == 23 then
		faceThirteen.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameOne.alpha = 0;
		nameFive.alpha = 1;
		
		wordsTwentyTwo.alpha = 0;
		wordsTwentyThree.alpha = 1;
	end
	if count == 24 then
		faceSixteen.alpha = 0;
		faceFour.alpha = 1;
		
		nameFive.alpha = 0;
		nameSix.alpha = 1;
	
		wordsTwentyThree.alpha = 0;
		wordsTwentyFour.alpha = 1;
	end
	if count == 25 then
		wordsTwentyFour.alpha = 0;
		wordsTwentyFive.alpha = 1;
	end
	if count == 26 then
		faceFour.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameFive.alpha = 1;
	
		wordsTwentyFive.alpha = 0;
		wordsTwentySix.alpha = 1;
	end
	if count == 27 then
		faceSixteen.alpha = 0;
		faceFour.alpha = 1;
		
		nameFive.alpha = 0;
		nameSix.alpha = 1;
		
		wordsTwentySix.alpha = 0;
		wordsTwentySeven.alpha = 1;
		
		onAchiv(achivTwo);
		local tm = timer.performWithDelay( 3500, onAchivTwoEnd );
	end
	if count == 28 then
		faceFour.alpha = 0;
		faceThree.alpha = 1;
		
		nameSix.alpha = 0;
		nameTwo.alpha = 1;
		
		wordsTwentySeven.alpha = 0;
		wordsTwentyEight.alpha = 1;
	end
	if count == 29 then
		faceThree.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameTwo.alpha = 0;
		nameOne.alpha = 1;
		
		wordsTwentyEight.alpha = 0;
		wordsTwentyNine.alpha = 1;
	end
	if count == 30 then
		faceThirteen.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameOne.alpha = 0;
		nameFive.alpha = 1;
		
		wordsTwentyNine.alpha = 0;
		wordsThirty.alpha = 1;
	end
	if count == 31 then
		faceSixteen.alpha = 0;
		faceSeven.alpha = 1;
		
		nameFive.alpha = 0;
		nameThree.alpha = 1;
		
		wordsThirty.alpha = 0;
		wordsThirtyOne.alpha = 1;
	end
	if count == 32 then
		wordsThirtyOne.alpha = 0;
		wordsThirtyTwo.alpha = 1;
	end
	if count == 33 then
		faceSeven.alpha = 0;
		faceTen.alpha = 1;
		
		nameThree.alpha = 0;
		nameFour.alpha = 1;
		
		wordsThirtyTwo.alpha = 0;
		wordsThirtyThree.alpha = 1;
	end
	if count == 34 then
		faceTen.alpha = 0;
		faceThree.alpha = 1;
		
		nameFour.alpha = 0;
		nameTwo.alpha = 1;
		
		wordsThirtyThree.alpha = 0;
		wordsThirtyFour.alpha = 1;
	end
	if count == 35 then
		saver.reWC(1);
		saver.reWP(1);
		composer.removeScene("storyOne.slides.slide5");
		composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
	end
end

function checkAlpha()
	checkAlphaOne();
	checkAlphaTwo();
	checkAlphaThree();
end

function changeAlpha()
	
	count = count + 1;
	
	subFuncChangeAlphaOne();
	subFuncChangeAlphaTwo();
	subFuncChangeAlphaThree();
	
	saver.reWC(count);
end

-- go to another scene

function onBackBtn()
	music.onSounds();
	composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
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
		
		if count == 1 then
			transition.to( faceOne, { time=800, alpha=1 });
			transition.to( nameTwo, { time=800, alpha=1 });
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