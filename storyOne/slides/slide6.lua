local composer = require( "composer" );
local saver = require( "saving" );
local music = require( "music" );
saver.reWP(6);
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
local wordsFourtyTwo;
local wordsFourtyThree;
local wordsFourtyFour;
local wordsFourtyFive;

local wordsFourtySix;
local wordsFourtySeven;
local wordsFourtyEight;
local wordsFourtyNine;
local wordsFifty;

local wordsFiftyOne;
local wordsFiftyTwo;
local wordsFiftyThree;
local wordsFiftyFour;
local wordsFiftyFive;

local wordsFiftySix;
local wordsFiftySeven;
local wordsFiftyEight;
local wordsFiftyNine;
local wordsSixty;

local achivOne;
local achivTwo;

local tmpF = "";
local tmpN = "";
local tmpW = "";

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
	wordsOne = createWords("Ну, кто-то из вас занимался скалолазанием?");
	wordsTwo = createWords("Есть желающие проявить себя?");
	wordsThree = createWords("На меня можете не надеяться. Я предпочту другой план.");
	wordsFour = createWords("Думаю я смогу. Подсадите только.");
	wordsFive = createWords("Давай я помогу.");
	wordsSix = createWords("Так, я на верхушке... Ваааау! Невероятный вид!");
	wordsSeven = createWords("Я хочу сделать пару снимков сейчас же!");
	wordsEight = createWords("Говори громче, мы тебя не слышим.");
	wordsNine = createWords("Очень красиво здесь!!!");
	wordsTen = createWords("Алекс, мы не ради видов приехали сюда!");
end

function subFuncCreateSubThree()
	wordsEleven = createWords("Лучше смотри в оба и ищи как нам пройти ко главному входу!");
	wordsTwelve = createWords("Вдоль стены есть парапет, по нему мы сможем дойти до главного входа.");
	wordsThirteen = createWords("В таком случае не будем тратить время.");
	wordsFourteen = createWords("А это не рискованно?");
	wordsFifteen = createWords("Доктор Муни, можете заказать пиццу и подождать у самолета.");
	wordsSixteen = createWords("Вот только вашу часть сокровищ мы заберем себе. Ха-ха-ха.");
	wordsSeventeen = createWords("Думаю беспокоится не о чем, главное не спешить.");
	wordsEighteen = createWords("Я пойду первый, а вы следуйте за мной.");
	wordsNineteen = createWords("Давайте разделимся на две группы и встретимся на противоположной стороне,");
	wordsTwenty = createWords("может по дороге мы найдем какие то реликвии.");
end

function subFuncCreateSubFour()
	wordsTwentyOne = createWords("Отлично. Мы втроем с Дони пойдем налево.");
	wordsTwentyTwo = createWords("Остальным предлагаю не тратить время и тоже выдвигаться.");
	wordsTwentyThree = createWords("Не забывайте о возможных ловушках.");
	wordsTwentyFour = createWords("Без паники, док, мы сможем о себе позаботиться.");
	wordsTwentyFive = createWords("Догоняйте, давайте не будем тратить время.");
	wordsTwentySix = createWords("Еще во времена Жан-Батиста эти края были исследованы французскими мореплавателями,");
	wordsTwentySeven = createWords("но знаменитое  Эльдорадо так никто и не нашел.");
	wordsTwentyEight = createWords("Откуда такие познания истории?");
	wordsTwentyNine = createWords("Да так, увлекалась в свое время.");
	wordsThirty = createWords("Вот черт!!!! Посмотрите что напротив нас!!");
end

function subFuncCreateSubFive()
	wordsThirtyOne = createWords("Это что пантера?");
	wordsThirtyTwo = createWords("Только без паники, не двигайтесь я смогу ее отпугнуть,");
	wordsThirtyThree = createWords("настало время использовать арбалет с успокоительной стрелой.");
	wordsThirtyFour = createWords("Дони, она рычит сделай что то.");
	wordsThirtyFive = createWords("Я не хочу умирать.");
	wordsThirtySix = createWords("Без паники, стреляю.");
	wordsThirtySeven = createWords("Она спит?");
	wordsThirtyEight = createWords("Да, пару часов так точно.");
	wordsThirtyNine = createWords("Ребята, кажется я вижу путь к храму!");
	wordsFourty = createWords("Мы можем добраться до входа, если будем идти по одному вдоль этой стены.");
end

function subFuncCreateSubSix()
	wordsFourtyOne = createWords("Ты прав. Осталось дождаться остальных.");
	wordsFourtyTwo = createWords("А вот и они. Где вас носит?! Мы уже заждались.");
	wordsFourtyThree = createWords("На нас только что чуть не  напала пантера, но Дони ее усыпил.");
	wordsFourtyFour = createWords("Нет, у нас не все хорошо Алекс укусила змея, у нее жар.");
	wordsFourtyFive = createWords("Мне нужно домой, мне очень плохо.");
	wordsFourtySix = createWords("Подведите ее ко мне, У меня есть противоядие.");
	wordsFourtySeven = createWords("Как быстро ей станет лучше?");
	wordsFourtyEight = createWords("Буквально в течении получаса.");
	wordsFourtyNine = createWords("Вы нашли проход?");
	wordsFifty = createWords("Да, вот он! По одному мы сможем дойти до главного входа.");
end

function subFuncCreateSubSeven()
	wordsFiftyOne = createWords("А это не рискованно?");
	wordsFiftyTwo = createWords("Доктор Муни, можете заказать пиццу и подождать у самолета.");
	wordsFiftyThree = createWords("Вот только вашу часть сокровищ мы заберем себе. Ха-ха-ха.");
	wordsFiftyFour = createWords("Думаю беспокоится не о чем, главное не торопиться, здесь очень узкий проход.");
	wordsFiftyFive = createWords("Я пойду первый, а вы следуйте за мной.");
	wordsFiftySix = createWords("Наконец-то мы добрались до Храма. И конечно же, дверь заперта.");
	wordsFiftySeven = createWords("И что теперь делать?");
	wordsFiftyEight = createWords("Эту дверь не отпирали сотни лет. Хммм… Давайте попробуем надавить на дверь все вместе.");
	wordsFiftyNine = createWords("Должно сработать. На счет три. Раз…два…три!");
	wordsSixty = createWords("Есть!");
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
	subFuncCreateSubSix();
	subFuncCreateSubSeven();
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
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsTwo.alpha = 1;
	end
	if count == 3 then
		faceSeven.alpha = 1;
		nameThree.alpha = 1;
		wordsThree.alpha = 1;
	end
	if count == 4 then
		faceOne.alpha = 1;
		nameTwo.alpha = 1;
		wordsFour.alpha = 1;
	end
	if count == 5 then
		faceTen.alpha = 1;
		nameFour.alpha = 1;
		wordsFive.alpha = 1;
	end
	if count == 6 then
		faceThree.alpha = 1;
		nameTwo.alpha = 1;
		wordsSix.alpha = 1;
	end
	if count == 7 then
		faceThree.alpha = 1;
		nameTwo.alpha = 1;
		wordsSeven.alpha = 1;
	end
	if count == 8 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsEight.alpha = 1;	
	end
	if count == 9 then
		faceThree.alpha = 1;
		nameTwo.alpha = 1;
		wordsNine.alpha = 1;
	end
	if count == 10 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
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
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsThirteen.alpha = 1;
	end
	if count == 14 then
		faceNine.alpha = 1;
		nameThree.alpha = 1;
		wordsFourteen.alpha = 1;
	end
	if count == 15 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsFifteen.alpha = 1;
	end
	if count == 16 then
		faceFifteeen.alpha = 1;
		nameOne.alpha = 1;
		wordsSixteen.alpha = 1;
	end
	if count == 17 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;	
		wordsSeventeen.alpha = 1;
	end
	if count == 18 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsEighteen.alpha = 1;
	end
	if count == 19 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsNineteen.alpha = 1;
	end
	if count == 20 then
		faceFive.alpha = 1;
		nameSix.alpha = 1;
		wordsTwenty.alpha = 1;
	end
end

function checkAlphaThree()
	if count == 21 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsTwentyOne.alpha = 1;
	end
	if count == 22 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsTwentyTwo.alpha = 1;
	end
	if count == 23 then
		faceSeven.alpha = 1;
		nameThree.alpha = 1;
		wordsTwentyThree.alpha = 1;
	end
	if count == 24 then
		faceEighteen.alpha = 1;
		nameFive.alpha = 1;
		wordsTwentyFour.alpha = 1;
	end
	if count == 25 then
		faceTen.alpha = 1;
		nameFour.alpha = 1;
		wordsTwentyFive.alpha = 1;
	end
	if count == 26 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsTwentySix.alpha = 1;
	end
	if count == 27 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsTwentySeven.alpha = 1;
	end
	if count == 28 then
		faceEighteen.alpha = 1;
		nameFive.alpha = 1;
		wordsTwentyEight.alpha = 1;
	end
	if count == 29 then
		faceFive.alpha = 1;
		nameSix.alpha = 1;
		wordsTwentyNine.alpha = 1;
	end
	if count == 30 then
		faceSeventeen.alpha = 1;
		nameFive.alpha = 1;
		wordsThirty.alpha = 1;
	end
end

function checkAlphaFour()
	if count == 31 then
		faceSix.alpha = 1;
		nameSix.alpha = 1;
		wordsThirtyOne.alpha = 1;
	end
	if count == 32 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsThirtyTwo.alpha = 1;
	end
	if count == 33 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsThirtyThree.alpha = 1;
	end
	if count == 34 then
		faceSeventeen.alpha = 1;
		nameFive.alpha = 1;
		wordsThirtyFour.alpha = 1;
	end
	if count == 35 then
		faceSix.alpha = 1;
		nameSix.alpha = 1;
		wordsThirtyFive.alpha = 1;
	end
	if count == 36 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;	
		wordsThirtySix.alpha = 1;
	end
	if count == 37 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsThirtySeven.alpha = 1;
	end
	if count == 38 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsThirtyEight.alpha = 1;
	end
	if count == 39 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsThirtyNine.alpha = 1;
	end
	if count == 40 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsFourty.alpha = 1;
	end
end

function checkAlphaFive()
	if count == 41 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsFourtyOne.alpha = 1;
	end
	if count == 42 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsFourtyTwo.alpha = 1;
	end
	if count == 43 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsFourtyThree.alpha = 1;
	end
	if count == 44 then
		faceEleven.alpha = 1;
		nameFour.alpha = 1;
		wordsFourtyFour.alpha = 1;
	end
	if count == 45 then
		faceTwo.alpha = 1;
		nameTwo.alpha = 1;
		wordsFourtyFive.alpha = 1;
	end
	if count == 46 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsFourtySix.alpha = 1;
	end
	if count == 47 then
		faceSeven.alpha = 1;
		nameThree.alpha = 1;
		wordsFourtySeven.alpha = 1;
	end
	if count == 48 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsFourtyEight.alpha = 1;
	end
	if count == 49 then
		faceSeven.alpha = 1;
		nameThree.alpha = 1;
		wordsFourtyNine.alpha = 1;
	end
	if count == 50 then
		faceTen.alpha = 1;
		nameFour.alpha = 1;
		wordsFifty.alpha = 1;
	end
end

function checkAlphaSix()
	if count == 51 then
		faceNine.alpha = 1;
		nameThree.alpha = 1;
		wordsFiftyOne.alpha = 1;
	end
	if count == 52 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsFiftyTwo.alpha = 1;
	end
	if count == 53 then
		faceFifteeen.alpha = 1;
		nameOne.alpha = 1;
		wordsFiftyThree.alpha = 1;
	end
	if count == 54 then
		faceFour.alpha = 1;
		nameSix.alpha = 1;
		wordsFiftyFour.alpha = 1;
	end
	if count == 55 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsFiftyFive.alpha = 1;
	end
	if count == 56 then
		faceThirteen.alpha = 1;
		nameOne.alpha = 1;
		wordsFiftySix.alpha = 1;
	end
	if count == 57 then
		faceSixteen.alpha = 1;
		nameFive.alpha = 1;
		wordsFiftySeven.alpha = 1;
	end
	if count == 58 then
		faceSeven.alpha = 1;
		nameThree.alpha = 1;
		wordsFiftyEight.alpha = 1;
	end
	if count == 59 then
		faceTen.alpha = 1;
		nameFour.alpha = 1;
		wordsFiftyNine.alpha = 1;
	end
	if count == 60 then
		faceThree.alpha = 1;
		nameTwo.alpha = 1;
		wordsSixty.alpha = 1;
	end
end

function subFuncChangeAlphaOne()
	if count == 2 then
		wordsOne.alpha = 0;
		wordsTwo.alpha = 1;
	end
	if count == 3 then
		faceSixteen.alpha = 0;
		faceSeven.alpha = 1;
		
		nameFive.alpha = 0;
		nameThree.alpha = 1;
	
		wordsTwo.alpha = 0;
		wordsThree.alpha = 1;
	end
	if count == 4 then
		faceSeven.alpha = 0;
		faceOne.alpha = 1;
		
		nameThree.alpha = 0;
		nameTwo.alpha = 1;
		
		wordsThree.alpha = 0;
		wordsFour.alpha = 1;
	end
	if count == 5 then
		faceOne.alpha = 0;
		faceTen.alpha = 1;
		
		nameTwo.alpha = 0;
		nameFour.alpha = 1;
		
		wordsFour.alpha = 0;
		wordsFive.alpha = 1;
	end
	if count == 6 then
		faceTen.alpha = 0;
		faceThree.alpha = 1;
		
		nameFour.alpha = 0;
		nameTwo.alpha = 1;
	
		wordsFive.alpha = 0;
		wordsSix.alpha = 1;
	end
	if count == 7 then
		wordsSix.alpha = 0;
		wordsSeven.alpha = 1;
	end
	if count == 8 then
		faceThree.alpha = 0;
		faceFour.alpha = 1;
		
		nameTwo.alpha = 0;
		nameSix.alpha = 1;
	
		wordsSeven.alpha = 0;
		wordsEight.alpha = 1;	
	end
	if count == 9 then
		faceFour.alpha = 0;
		faceThree.alpha = 1;
		
		nameSix.alpha = 0;
		nameTwo.alpha = 1;
	
		wordsEight.alpha = 0;
		wordsNine.alpha = 1;
	end
	if count == 10 then
		faceThree.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameTwo.alpha = 0;
		nameFive.alpha = 1;
		
		wordsNine.alpha = 0;
		wordsTen.alpha = 1;
	end
end

function subFuncChangeAlphaTwo()
	if count == 11 then
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
		faceThirteen.alpha = 1;
		
		nameTwo.alpha = 0;
		nameOne.alpha = 1;
	
		wordsTwelve.alpha = 0;
		wordsThirteen.alpha = 1;
	end
	if count == 14 then
		faceThirteen.alpha = 0;
		faceNine.alpha = 1;
		
		nameOne.alpha = 0;
		nameThree.alpha = 1;
		
		wordsThirteen.alpha = 0;
		wordsFourteen.alpha = 1;
	end
	if count == 15 then
		faceNine.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameThree.alpha = 0;
		nameOne.alpha = 1;
		
		wordsFourteen.alpha = 0;
		wordsFifteen.alpha = 1;
	end
	if count == 16 then
		faceThirteen.alpha = 0;
		faceFifteeen.alpha = 1;
		
		wordsFifteen.alpha = 0;
		wordsSixteen.alpha = 1;
	end
	if count == 17 then
		faceFifteeen.alpha = 0;
		faceFour.alpha = 1;
		
		nameOne.alpha = 0;
		nameSix.alpha = 1;	
	
		wordsSixteen.alpha = 0;
		wordsSeventeen.alpha = 1;
	end
	if count == 18 then
		faceFour.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameFive.alpha = 1;
	
		wordsSeventeen.alpha = 0;
		wordsEighteen.alpha = 1;
	end
	if count == 19 then
		faceSixteen.alpha = 0;
		faceFour.alpha = 1;
		
		nameFive.alpha = 0;
		nameSix.alpha = 1;
		
		wordsEighteen.alpha = 0;
		wordsNineteen.alpha = 1;
	end
	if count == 20 then
		faceFour.alpha = 0;
		faceFive.alpha = 1;
	
		wordsNineteen.alpha = 0;
		wordsTwenty.alpha = 1;
	end
end

function subFuncChangeAlphaThree()
	if count == 21 then
		faceFive.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameFive.alpha = 1;
	
		wordsTwenty.alpha = 0;
		wordsTwentyOne.alpha = 1;
	end
	if count == 22 then
		wordsTwentyOne.alpha = 0;
		wordsTwentyTwo.alpha = 1;
	end
	if count == 23 then
		faceSixteen.alpha = 0;
		faceSeven.alpha = 1;
		
		nameFive.alpha = 0;
		nameThree.alpha = 1;
		
		wordsTwentyTwo.alpha = 0;
		wordsTwentyThree.alpha = 1;
	end
	if count == 24 then
		faceSeven.alpha = 0;
		faceEighteen.alpha = 1;
		
		nameThree.alpha = 0;
		nameFive.alpha = 1;
	
		wordsTwentyThree.alpha = 0;
		wordsTwentyFour.alpha = 1;
	end
	if count == 25 then
		faceEighteen.alpha = 0;
		faceTen.alpha = 1;
		
		nameFive.alpha = 0;
		nameFour.alpha = 1;
	
		wordsTwentyFour.alpha = 0;
		wordsTwentyFive.alpha = 1;
	end
	if count == 26 then
		faceTen.alpha = 0;
		faceFour.alpha = 1;
		
		nameFour.alpha = 0;
		nameSix.alpha = 1;
	
		wordsTwentyFive.alpha = 0;
		wordsTwentySix.alpha = 1;
	end
	if count == 27 then
		wordsTwentySix.alpha = 0;
		wordsTwentySeven.alpha = 1;
	end
	if count == 28 then
		faceFour.alpha = 0;
		faceEighteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameFive.alpha = 1;
		
		wordsTwentySeven.alpha = 0;
		wordsTwentyEight.alpha = 1;
	end
	if count == 29 then
		faceEighteen.alpha = 0;
		faceFive.alpha = 1;
		
		nameFive.alpha = 0;
		nameSix.alpha = 1;
		
		wordsTwentyEight.alpha = 0;
		wordsTwentyNine.alpha = 1;
	end
	if count == 30 then
		faceFive.alpha = 0;
		faceSeventeen.alpha = 1;
		
		nameSix.alpha = 0;
		nameFive.alpha = 1;
		
		wordsTwentyNine.alpha = 0;
		wordsThirty.alpha = 1;
	end
end

function subFuncChangeAlphaFour()
	if count == 31 then
		faceSeventeen.alpha = 0;
		faceSix.alpha = 1;
		
		nameFive.alpha = 0;
		nameSix.alpha = 1;
		
		wordsThirty.alpha = 0;
		wordsThirtyOne.alpha = 1;
	end
	if count == 32 then
		faceSix.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameOne.alpha = 1;
		
		wordsThirtyOne.alpha = 0;
		wordsThirtyTwo.alpha = 1;
	end
	if count == 33 then
		wordsThirtyTwo.alpha = 0;
		wordsThirtyThree.alpha = 1;
	end
	if count == 34 then
		faceThirteen.alpha = 0;
		faceSeventeen.alpha = 1;
		
		nameOne.alpha = 0;
		nameFive.alpha = 1;
		
		wordsThirtyThree.alpha = 0;
		wordsThirtyFour.alpha = 1;
	end
	if count == 35 then
		faceSeventeen.alpha = 0;
		faceSix.alpha = 1;
		
		nameFive.alpha = 0;
		nameSix.alpha = 1;
		
		wordsThirtyFour.alpha = 0;
		wordsThirtyFive.alpha = 1;
	end
	if count == 36 then
		faceSix.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameOne.alpha = 1;	
		
		wordsThirtyFive.alpha = 0;
		wordsThirtySix.alpha = 1;
	end
	if count == 37 then
		faceThirteen.alpha = 0;
		faceFour.alpha = 1;
		
		nameOne.alpha = 0;
		nameSix.alpha = 1;
		
		wordsThirtySix.alpha = 0;
		wordsThirtySeven.alpha = 1;
	end
	if count == 38 then
		faceFour.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameOne.alpha = 1;
		
		wordsThirtySeven.alpha = 0;
		wordsThirtyEight.alpha = 1;
		
		onAchiv(achivOne);
		local tm = timer.performWithDelay( 3500, onAchivOneEnd );
	end
	if count == 39 then
		wordsThirtyEight.alpha = 0;
		wordsThirtyNine.alpha = 1;
	end
	if count == 40 then
		wordsThirtyNine.alpha = 0;
		wordsFourty.alpha = 1;
	end
end

function subFuncChangeAlphaFive()
	if count == 41 then
		faceThirteen.alpha = 0;
		faceFour.alpha = 1;
		
		nameOne.alpha = 0;
		nameSix.alpha = 1;
		
		wordsFourty.alpha = 0;
		wordsFourtyOne.alpha = 1;
	end
	if count == 42 then
		faceFour.alpha = 0;
		faceSixteen.alpha = 1;

		nameSix.alpha = 0;
		nameFive.alpha = 1;
		
		wordsFourtyOne.alpha = 0;
		wordsFourtyTwo.alpha = 1;
	end
	if count == 43 then
		faceSixteen.alpha = 0;
		faceFour.alpha = 1;
		
		nameFive.alpha = 0;
		nameSix.alpha = 1;
		
		wordsFourtyTwo.alpha = 0;
		wordsFourtyThree.alpha = 1;
	end
	if count == 44 then
		faceFour.alpha = 0;
		faceEleven.alpha = 1;
		
		nameSix.alpha = 0;
		nameFour.alpha = 1;
		
		wordsFourtyThree.alpha = 0;
		wordsFourtyFour.alpha = 1;
	end
	if count == 45 then
		faceEleven.alpha = 0;
		faceTwo.alpha = 1;
		
		nameFour.alpha = 0;
		nameTwo.alpha = 1;
		
		wordsFourtyFour.alpha = 0;
		wordsFourtyFive.alpha = 1;
	end
	if count == 46 then
		faceTwo.alpha = 0;
		faceFour.alpha = 1;
		
		nameTwo.alpha = 0;
		nameSix.alpha = 1;
		
		wordsFourtyFive.alpha = 0;
		wordsFourtySix.alpha = 1;
	end
	if count == 47 then
		faceFour.alpha = 0;
		faceSeven.alpha = 1;
		
		nameSix.alpha = 0;
		nameThree.alpha = 1;
		
		wordsFourtySix.alpha = 0;
		wordsFourtySeven.alpha = 1;
	end
	if count == 48 then
		faceSeven.alpha = 0;
		faceFour.alpha = 1;
		
		nameThree.alpha = 0;
		nameSix.alpha = 1;
		
		wordsFourtySeven.alpha = 0;
		wordsFourtyEight.alpha = 1;
		
		onAchiv(achivTwo);
		local tm = timer.performWithDelay( 3500, onAchivTwoEnd );
	end
	if count == 49 then
		faceFour.alpha = 0;
		faceSeven.alpha = 1;
		
		nameSix.alpha = 0;
		nameThree.alpha = 1;
		
		wordsFourtyEight.alpha = 0;
		wordsFourtyNine.alpha = 1;
	end
	if count == 50 then
		faceSeven.alpha = 0;
		faceTen.alpha = 1;
		
		nameThree.alpha = 0;
		nameFour.alpha = 1;
		
		wordsFourtyNine.alpha = 0;
		wordsFifty.alpha = 1;
	end
end

function subFuncChangeAlphaSix()
	if count == 51 then
		faceTen.alpha = 0;
		faceNine.alpha = 1;
		
		nameFour.alpha = 0;
		nameThree.alpha = 1;
		
		wordsFifty.alpha = 0;
		wordsFiftyOne.alpha = 1;
	end
	if count == 52 then
		faceNine.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameThree.alpha = 0;
		nameOne.alpha = 1;
		
		wordsFiftyOne.alpha = 0;
		wordsFiftyTwo.alpha = 1;
	end
	if count == 53 then
		faceThirteen.alpha = 0;
		faceFifteeen.alpha = 1;
		
		wordsFiftyTwo.alpha = 0;
		wordsFiftyThree.alpha = 1;
	end
	if count == 54 then
		faceFifteeen.alpha = 0;
		faceFour.alpha = 1;
		
		nameOne.alpha = 0;
		nameSix.alpha = 1;
		
		wordsFiftyThree.alpha = 0;
		wordsFiftyFour.alpha = 1;
	end
	if count == 55 then
		faceFour.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameSix.alpha = 0;
		nameFive.alpha = 1;
		
		wordsFiftyFour.alpha = 0;
		wordsFiftyFive.alpha = 1;
	end
	if count == 56 then
		faceSixteen.alpha = 0;
		faceThirteen.alpha = 1;
		
		nameFive.alpha = 0;
		nameOne.alpha = 1;
		
		wordsFiftyFive.alpha = 0;
		wordsFiftySix.alpha = 1;
	end
	if count == 57 then
		faceThirteen.alpha = 0;
		faceSixteen.alpha = 1;
		
		nameOne.alpha = 0;
		nameFive.alpha = 1;
		
		wordsFiftySix.alpha = 0;
		wordsFiftySeven.alpha = 1;
	end
	if count == 58 then
		faceSixteen.alpha = 0;
		faceSeven.alpha = 1;
		
		nameFive.alpha = 0;
		nameThree.alpha = 1;
		
		wordsFiftySeven.alpha = 0;
		wordsFiftyEight.alpha = 1;
	end
	if count == 59 then
		faceSeven.alpha = 0;
		faceTen.alpha = 1;
		
		nameThree.alpha = 0;
		nameFour.alpha = 1;
		
		wordsFiftyEight.alpha = 0;
		wordsFiftyNine.alpha = 1;
	end
	if count == 60 then
		faceTen.alpha = 0;
		faceThree.alpha = 1;
		
		nameFour.alpha = 0;
		nameTwo.alpha = 1;
		
		wordsFiftyNine.alpha = 0;
		wordsSixty.alpha = 1;
	end
	if count == 61 then
		saver.reWC(1);
		saver.reWP(1);
		composer.removeScene("storyOne.slides.slide6");
		composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
	end
end

function checkAlpha()
	checkAlphaOne();
	checkAlphaTwo();
	checkAlphaThree();
	checkAlphaFour();
	checkAlphaFive();
	checkAlphaSix();
end

function changeAlpha()
	
	count = count + 1;
	
	subFuncChangeAlphaOne();
	subFuncChangeAlphaTwo();
	subFuncChangeAlphaThree();
	subFuncChangeAlphaFour();
	subFuncChangeAlphaFive();
	subFuncChangeAlphaSix();
	
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
			transition.to( faceSixteen, { time=800, alpha=1 });
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