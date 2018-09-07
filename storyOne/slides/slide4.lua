local composer = require( "composer" );
local saver = require( "saving" );
saver.reWP(4);
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

local wordsThirtySix;
local wordsThirtySeven;
local wordsThirtyEight;
local wordsThirtyNine;
local wordsFourty;

local wordsFourtyOne;

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
	wordsOne = createWords("Давайте разделимся на две группы и встретимся на противоположной стороне.");
	wordsTwo = createWords("Отлично. Мы втроем с Дони пойдем налево.");
	wordsThree = createWords("Остальным предлагаю не тратить время и тоже выдвигаться.");
	wordsFour = createWords("Не забывайте о возможных ловушках.");
	wordsFive = createWords("Без паники, док, мы сможем о себе позаботиться.");
	wordsSix = createWords("Догоняйте, давайте не будем тратить время.");
	wordsSeven = createWords("Еще во времена Жан-Батиста эти края были исследованы французскими мореплавателями,");
	wordsEight = createWords("но знаменитое  Эльдорадо так никто и не нашел.");
	wordsNine = createWords("Откуда такие познания истории?");
	wordsTen = createWords("Да так, увлекалась в свое время.");
end

function subFuncCreateSubThree()
	wordsEleven = createWords("Вот черт!!!! Посмотрите что напротив нас!!");
	wordsTwelve = createWords("Это что пантера?");
	wordsThirteen = createWords("Только без паники, не двигайтесь я смогу ее отпугнуть,");
	wordsFourteen = createWords("настало время использовать арбалет с успокоительной стрелой.");
	wordsFifteen = createWords("Дони, она рычит сделай что то.");
	wordsSixteen = createWords("Я не хочу умирать.");
	wordsSeventeen = createWords("Без паники, стреляю.");
	wordsEighteen = createWords("Она спит?");
	wordsNineteen = createWords("Да, пару часов так точно.");
	wordsTwenty = createWords("Ребята, кажется я вижу путь к храму!");
end

function subFuncCreateSubFour()
	wordsTwentyOne = createWords("Мы можем добраться до входа, если будем идти по одному вдоль этой стены.");
	wordsTwentyTwo = createWords("Ты прав. Осталось дождаться остальных.");
	wordsTwentyThree = createWords("А вот и они. Где вас носит?! Мы уже заждались.");
	wordsTwentyFour = createWords("На нас только что чуть не  напала пантера, но Дони ее усыпил.");
	wordsTwentyFive = createWords("Hет, у нас не все хорошо Алекс укусила змея, у нее жар.");
	wordsTwentySix = createWords("Мне нужно домой, мне очень плохо.");
	wordsTwentySeven = createWords("Подведите ее ко мне, У меня есть противоядие.");
	wordsTwentyEight = createWords("Как быстро ей станет лучше?");
	wordsTwentyNine = createWords("Буквально в течении получаса.");
	wordsThirty = createWords("Вы нашли проход?");
end

function subFuncCreateSubFive()
	wordsThirtyOne = createWords("Да, вот он! По одному мы сможем дойти до главного входа.");
	wordsThirtyTwo = createWords("А это не рискованно?");
	wordsThirtyThree = createWords("Доктор Муни, можете заказать пиццу и подождать у самолета.");
	wordsThirtyFour = createWords("Вот только вашу часть сокровищ мы заберем себе. Ха-ха-ха.");
	wordsThirtyFive = createWords("Думаю беспокоится не о чем, главное не торопиться, здесь очень узкий проход.");
	wordsThirtySix = createWords("Я пойду первый, а вы следуйте за мной.");
	wordsThirtySeven = createWords("Наконец-то мы добрались до Храма. И конечно же, дверь заперта.");
	wordsThirtyEight = createWords("И что теперь делать?");
	wordsThirtyNine = createWords("Эту дверь не отпирали сотни лет. Хммм… Давайте попробуем надавить на дверь все вместе.");
	wordsFourty = createWords("Должно сработать. На счет три. Раз…два…три!");
	wordsFourtyOne = createWords("Есть!");
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
	subFuncCreateSubFive();
	
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
	clickBox:addEventListener('tap', changeAlphaTwo);
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

function subFuncChangeAlphaOne()
	if count == 2 then
		faceFour.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameFive.alpha = 1;
	
		wordsOne.alpha = 0;
		wordsTwo.alpha = 1;
	end
	if count == 3 then
		wordsTwo.alpha = 0;
		wordsThree.alpha = 1;
	end
	if count == 4 then
		faceSixteen.alpha = 0;
		faceSeven.alpha = 1;
		
		nameFive.alpha = 0;
		nameThree.alpha = 1;
		
		wordsThree.alpha = 0;
		wordsFour.alpha = 1;
	end
	if count == 5 then
		faceSeven.alpha = 0;
		faceEighteen.alpha = 1;
		
		nameThree.alpha = 0;
		nameFive.alpha = 1;
		
		wordsFour.alpha = 0;
		wordsFive.alpha = 1;
	end
	if count == 6 then
		faceEighteen.alpha = 0;
		faceTen.alpha = 1;
		
		nameFive.alpha = 0;
		nameFour.alpha = 1;
		
		wordsFive.alpha = 0;
		wordsSix.alpha = 1;
	end
	if count == 7 then
		faceTen.alpha = 0;
		faceFour.alpha = 1;
		
		nameFour.alpha = 0;
		nameSix.alpha = 1;
		
		wordsSix.alpha = 0;
		wordsSeven.alpha = 1;
	end
	if count == 8 then
		wordsSeven.alpha = 0;
		wordsEight.alpha = 1;	
	end
	if count == 9 then
		faceFour.alpha = 0;
		faceEighteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameFive.alpha = 1;
	
		wordsEight.alpha = 0;
		wordsNine.alpha = 1;
	end
	if count == 10 then
		faceEighteen.alpha = 0;
		faceFive.alpha = 1;
		
		nameFive.alpha = 0;
		nameSix.alpha = 1;
		
		wordsNine.alpha = 0;
		wordsTen.alpha = 1;
	end
end

function subFuncChangeAlphaTwo()
	if count == 11 then
		faceFive.alpha = 0;
		faceSeventeen.alpha = 1;
		
		nameSix.alpha = 0;
		nameFive.alpha = 1;
		
		wordsTen.alpha = 0;
		wordsEleven.alpha = 1;
	end
	if count == 12 then
		faceSeventeen.alpha = 0;
		faceSix.alpha = 1;
		
		nameFive.alpha = 0;
		nameSix.alpha = 1;
	
		wordsEleven.alpha = 0;
		wordsTwelve.alpha = 1;
	end
	if count == 13 then
		faceSix.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameOne.alpha = 1;
		
		wordsTwelve.alpha = 0;
		wordsThirteen.alpha = 1;
	end
	if count == 14 then
		wordsThirteen.alpha = 0;
		wordsFourteen.alpha = 1;
	end
	if count == 15 then
		faceThirteen.alpha = 0;
		faceSeventeen.alpha = 1;
		
		nameOne.alpha = 0;
		nameFive.alpha = 1;
		
		wordsFourteen.alpha = 0;
		wordsFifteen.alpha = 1;
	end
	if count == 16 then
		faceSeventeen.alpha = 0;
		faceSix.alpha = 1;
		
		nameFive.alpha = 0;
		nameSix.alpha = 1;
		
		wordsFifteen.alpha = 0;
		wordsSixteen.alpha = 1;
	end
	if count == 17 then
		faceSix.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameOne.alpha = 1;	
	
		wordsSixteen.alpha = 0;
		wordsSeventeen.alpha = 1;
	end
	if count == 18 then
		faceThirteen.alpha = 0;
		faceFour.alpha = 1;
		
		nameOne.alpha = 0;
		nameSix.alpha = 1;
		
		wordsSeventeen.alpha = 0;
		wordsEighteen.alpha = 1;
	end
	if count == 19 then
		faceFour.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameOne.alpha = 1;
		
		wordsEighteen.alpha = 0;
		wordsNineteen.alpha = 1;
		
		onAchiv(achivOne);
		local tm = timer.performWithDelay( 3500, onAchivOneEnd );
	end
	if count == 20 then
		wordsNineteen.alpha = 0;
		wordsTwenty.alpha = 1;
	end
end

function subFuncChangeAlphaThree()
	if count == 21 then
		wordsTwenty.alpha = 0;
		wordsTwentyOne.alpha = 1;
	end
	if count == 22 then
		faceThirteen.alpha = 0;
		faceFour.alpha = 1;
		
		nameOne.alpha = 0;
		nameSix.alpha = 1;
	
		wordsTwentyOne.alpha = 0;
		wordsTwentyTwo.alpha = 1;
	end
	if count == 23 then
		faceFour.alpha = 0;
		faceSixteen.alpha = 1;

		nameSix.alpha = 0;
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
		faceFour.alpha = 0;
		faceEleven.alpha = 1;
		
		nameSix.alpha = 0;
		nameFour.alpha = 1;
		
		wordsTwentyFour.alpha = 0;
		wordsTwentyFive.alpha = 1;
	end
	if count == 26 then
		faceEleven.alpha = 0;
		faceTwo.alpha = 1;
		
		nameFour.alpha = 0;
		nameTwo.alpha = 1;
	
		wordsTwentyFive.alpha = 0;
		wordsTwentySix.alpha = 1;
	end
	if count == 27 then
		faceTwo.alpha = 0;
		faceFour.alpha = 1;
		
		nameTwo.alpha = 0;
		nameSix.alpha = 1;
		
		wordsTwentySix.alpha = 0;
		wordsTwentySeven.alpha = 1;
	end
	if count == 28 then
		faceFour.alpha = 0;
		faceSeven.alpha = 1;
		
		nameSix.alpha = 0;
		nameThree.alpha = 1;
		
		wordsTwentySeven.alpha = 0;
		wordsTwentyEight.alpha = 1;
	end
	if count == 29 then
		faceSeven.alpha = 0;
		faceFour.alpha = 1;
		
		nameThree.alpha = 0;
		nameSix.alpha = 1;
		
		wordsTwentyEight.alpha = 0;
		wordsTwentyNine.alpha = 1;
		
		onAchiv(achivTwo);
		local tm = timer.performWithDelay( 3500, onAchivTwoEnd );
	end
	if count == 30 then
		faceFour.alpha = 0;
		faceSeven.alpha = 1;
		
		nameSix.alpha = 0;
		nameThree.alpha = 1;
		
		wordsTwentyNine.alpha = 0;
		wordsThirty.alpha = 1;
	end
end

function subFuncChangeAlphaFour()
	if count == 31 then
		faceSeven.alpha = 0;
		faceTen.alpha = 1;
		
		nameThree.alpha = 0;
		nameFour.alpha = 1;
		
		wordsThirty.alpha = 0;
		wordsThirtyOne.alpha = 1;
	end
	if count == 32 then
		faceTen.alpha = 0;
		faceNine.alpha = 1;
		
		nameFour.alpha = 0;
		nameThree.alpha = 1;
		
		wordsThirtyOne.alpha = 0;
		wordsThirtyTwo.alpha = 1;
	end
	if count == 33 then
		faceNine.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameThree.alpha = 0;
		nameOne.alpha = 1;
		
		wordsThirtyTwo.alpha = 0;
		wordsThirtyThree.alpha = 1;
	end
	if count == 34 then
		faceThirteen.alpha = 0;
		faceFifteeen.alpha = 1;
		
		wordsThirtyThree.alpha = 0;
		wordsThirtyFour.alpha = 1;
	end
	if count == 35 then
		faceFifteeen.alpha = 0;
		faceFour.alpha = 1;
		
		nameOne.alpha = 0;
		nameSix.alpha = 1;
		
		wordsThirtyFour.alpha = 0;
		wordsThirtyFive.alpha = 1;
	end
	if count == 36 then
		faceFour.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameFive.alpha = 1;
		
		wordsThirtyFive.alpha = 0;
		wordsThirtySix.alpha = 1;
	end
	if count == 37 then
		faceSixteen.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameFive.alpha = 0;
		nameOne.alpha = 1;
		
		wordsThirtySix.alpha = 0;
		wordsThirtySeven.alpha = 1;
	end
	if count == 38 then
		faceThirteen.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameOne.alpha = 0;
		nameFive.alpha = 1;
		
		wordsThirtySeven.alpha = 0;
		wordsThirtyEight.alpha = 1;
	end
	if count == 39 then
		faceSixteen.alpha = 0;
		faceSeven.alpha = 1;
		
		nameFive.alpha = 0;
		nameThree.alpha = 1;
		
		wordsThirtyEight.alpha = 0;
		wordsThirtyNine.alpha = 1;
	end
	if count == 40 then
		faceSeven.alpha = 0;
		faceTen.alpha = 1;
		
		nameThree.alpha = 0;
		nameFour.alpha = 1;
		
		wordsThirtyNine.alpha = 0;
		wordsFourty.alpha = 1;
	end
	if count == 41 then
		faceTen.alpha = 0;
		faceThree.alpha = 1;
		
		nameFour.alpha = 0;
		nameTwo.alpha = 1;
		
		wordsFourty.alpha = 0;
		wordsFourtyOne.alpha = 1;
	end
end

function checkAlpha()
	subFuncChangeAlphaOne();
	subFuncChangeAlphaTwo();
	subFuncChangeAlphaThree();
	subFuncChangeAlphaFour();
end

function changeAlpha()
	count = count + 1;
	
	subFuncChangeAlphaOne();
	subFuncChangeAlphaTwo();
	subFuncChangeAlphaThree();
	subFuncChangeAlphaFour();
	
	saver.reWC(count);
end

function changeAlphaTwo()
	if count == 42 then
		saver.reWC(1);
		saver.reWP(1);
		composer.removeScene("storyOne.slides.slide4");
		composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
	end
end

-- go to another scene

function onBackBtn()
	-- composer.setVariable( "checkpoint", 4 );
	-- composer.setVariable( "count", count );
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
			transition.to( faceFour, { time=800, alpha=1 });
			transition.to( nameSix, { time=800, alpha=1 });
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