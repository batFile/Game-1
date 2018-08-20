-- local composer = require( "composer" );
-- local count = require( "storyOne.gameVisionOne" );
-- local scene = composer.newScene();

-- local Timer;

-- local sceneGroup;

-- local background;
-- local backBtn;

-- local count = 1;

-- local clickBox;
	
-- local bgText;
-- local bgName;

-- local faceOne;
-- local faceTwo;
-- local faceThree;
-- local faceFour;
-- local faceFive;

-- local faceSix;
-- local faceSeven;
-- local faceEight;
-- local faceNine;
-- local faceTen;

-- local faceEleven;
-- local faceTwelve;
-- local faceThirteen;
-- local faceFourteen;
-- local faceFifteeen;

-- local faceSixteeen;
-- local faceSeventeen;
-- local faceEighteen;

-- local nameOne;
-- local nameTwo;
-- local nameThree;

-- local nameFour;
-- local nameFive;
-- local nameSix;

-- local wordsOne;
-- local wordsTwo;
-- local wordsThree;
-- local wordsFour;
-- local wordsFive;

-- local wordsSix;
-- local wordsSeven;
-- local wordsEight;
-- local wordsNine;
-- local wordsTen;

-- local wordsEleven;
-- local wordsTwelve;
-- local wordsThirteen;
-- local wordsFourteen;
-- local wordsFifteen;

-- local wordsSixteen;
-- local wordsSeventeen;
-- local wordsEighteen;
-- local wordsNineteen;
-- local wordsTwenty;

-- local wordsTwentyOne;
-- local wordsTwentyTwo;
-- local wordsTwentyThree;
-- local wordsTwentyFour;
-- local wordsTwentyFive;

-- local wordsTwentySix;
-- local wordsTwentySeven;
-- local wordsTwentyEight;
-- local wordsTwentyNine;
-- local wordsThirty;

-- local wordsThirtyOne;
-- local wordsThirtyTwo;
-- local wordsThirtyThree;
-- local wordsThirtyFour;
-- local wordsThirtyFive;

-- local wordsThirtySix;
-- local wordsThirtySeven;
-- local wordsThirtyEight;
-- local wordsThirtyNine;
-- local wordsFourty;

-- local wordsFourtyOne;
-- local wordsFourtyTwo;
-- local wordsFourtyThree;
-- local wordsFourtyFour;
-- local wordsFourtyFive;

-- local wordsFourtySix;
-- local wordsFourtySeven;
-- local wordsFourtyEight;
-- local wordsFourtyNine;
-- local wordsFifty;

-- local wordsFiftyOne;
-- local wordsFiftyTwo;
-- local wordsFiftyThree;
-- local wordsFiftyFour;
-- local wordsFiftyFive;

-- local wordsFiftySix;
-- local wordsFiftySeven;
-- local wordsFiftyEight;
-- local wordsFiftyNine;
-- local wordsSixty;

-- local tmpF = "";
-- local tmpN = "";
-- local tmpW = "";

-- -- face creating functions

-- function changeFace(face)
	-- tmpF = face;
-- end

-- function createFace(face)

	-- changeFace(face);

	-- local subjectOne = display.newImageRect("storyOne/subjects/"..tmpF..".png", display.contentWidth/2.2, display.contentHeight/3.2);
	-- subjectOne.x = display.contentCenterX*1.45;
	-- subjectOne.y = display.contentCenterY/1.101;
	-- subjectOne.alpha = 0;
	
	-- sceneGroup:insert( subjectOne );
	
	-- return subjectOne;
-- end

-- -- name creating functions

-- function changeName(name)
	-- tmpN = name;
-- end

-- function createName(name)

	-- changeName(name);
	
	-- local optionsTxtN = {
		-- text = ""..tmpN,
		-- x = display.contentCenterX - 80,
		-- y = 860,
		-- width = display.contentWidth/1.4,
		-- height = display.contentHeight/3.8,
		-- font = native.systemFontBold,
		-- fontSize = 52,
		-- align = "center"
	-- }
	
	-- local subjectName = display.newText(optionsTxtN);
	-- subjectName:setTextColor( 255, 255, 255 );
	-- subjectName.alpha = 0;
	-- sceneGroup:insert( subjectName );
	
	-- return subjectName;
-- end

-- -- text creating functions

-- function changeWords(words)
	-- tmpW = words;
-- end

-- function createWords(words)

	-- changeWords(words);
	
	-- local optionsTxtW = {
		-- text = ""..tmpW,
		-- x = display.contentCenterX,
		-- y = display.contentHeight/1.32,
		-- width = display.contentWidth/1.2,
		-- height = display.contentHeight/3.8,
		-- font = native.systemFontBold,
		-- fontSize = 46,
		-- align = "center"
	-- }
	
	-- local subjectWords = display.newText(optionsTxtW);
	-- subjectWords:setTextColor( 0, 0, 0 );
	-- subjectWords.alpha = 0;
	-- sceneGroup:insert( subjectWords );
	
	-- return subjectWords;
-- end


-- function createSubjects(scene)
	
	-- bgText = display.newImageRect("bgTextTwo.png", display.contentWidth, display.contentHeight/1.95);
	-- bgText.x = display.contentCenterX;
	-- bgText.y = display.contentCenterY*1.4;
	-- bgText.alpha = 0;
	
	-- bgName = display.newImageRect("nameBG.png", display.contentWidth/2.2, display.contentHeight/11.6);
	-- bgName.x = display.contentCenterX-40;
	-- bgName.y = 720;
	-- bgName.alpha = 0;
	
	-- scene:insert( bgName );
	
	-- -- ______________________________SUBJ_FACES_______________________________________________________________	
	
	-- faceOne = createFace("1-2");
	-- faceTwo = createFace("1-3");
	-- faceThree = createFace("2-1");
	-- faceFour = createFace("2-2");
	-- faceFive = createFace("2-3");
	
	-- faceSix = createFace("3-1");
	-- faceSeven = createFace("4-1");
	-- faceEight = createFace("4-3");
	-- faceNine = createFace("5-1");
	-- faceTen = createFace("5-3");
	
	-- faceEleven = createFace("6-1");
	-- faceTwelve = createFace("6-2");
	
	-- -- background for text
	
	-- scene:insert( bgText );
	-- -- ______________________________SUBJ_NAMES_______________________________________________________________
	
	-- nameOne = createName("Дони");
	-- nameTwo = createName("Алекс");
	-- nameThree = createName("Муни");
	
	-- nameFour = createName("Дэн");
	-- nameFive = createName("Уил");
	-- nameSix = createName("Жули");
	-- -- ______________________________SUBJ_TEEEXT______________________________________________________________
	
	-- wordsOne = createWords("Ну, кто-то из вас занимался скалолазанием?");
	-- wordsTwo = createWords("Есть желающие проявить себя?");
	-- wordsThree = createWords("На меня можете не надеяться. Я предпочту другой план.");
	-- wordsFour = createWords("Думаю я смогу. Подсадите только.");
	-- wordsFive = createWords("Давай я помогу.");
	-- wordsSix = createWords("Так, я на верхушке... Ваааау! Невероятный вид!");
	-- wordsSeven = createWords("Я хочу сделать пару снимков сейчас же!");
	-- wordsEight = createWords("Говори громче, мы тебя не слышим.");
	-- wordsNine = createWords("Очень красиво здесь!!!");
	-- wordsTen = createWords("Алекс, мы не ради видов приехали сюда!");
	
	-- wordsEleven = createWords("Лучше смотри в оба и ищи как нам пройти ко главному входу!");
	-- wordsTwelve = createWords("Вдоль стены есть парапет, по нему мы сможем дойти до главного входа.");
	-- wordsThirteen = createWords("В таком случае не будем тратить время.");
	-- wordsFourteen = createWords("А это не рискованно?");
	-- wordsFifteen = createWords("Доктор Муни, можете заказать пиццу и подождать у самолета.");
	-- wordsSixteen = createWords("Вот только вашу часть сокровищ мы заберем себе. Ха-ха-ха.");
	-- wordsSeventeen = createWords("Думаю беспокоится не о чем, главное не спешить.");
	-- wordsEighteen = createWords("Я пойду первый, а вы следуйте за мной.");
	-- wordsNineteen = createWords("Давайте разделимся на две группы и встретимся на противоположной стороне,");
	-- wordsTwenty = createWords("может по дороге мы найдем какие то реликвии.");
	
	-- wordsTwentyOne = createWords("Отлично. Мы втроем с Дони пойдем налево.");
	-- wordsTwentyTwo = createWords("Остальным предлагаю не тратить время и тоже выдвигаться.");
	-- wordsTwentyThree = createWords("Не забывайте о возможных ловушках.");
	-- wordsTwentyFour = createWords("Без паники, док, мы сможем о себе позаботиться.");
	-- wordsTwentyFive = createWords("Догоняйте, давайте не будем тратить время.");
	-- wordsTwentySix = createWords("Еще во времена Жан-Батиста эти края были исследованы французскими мореплавателями,");
	-- wordsTwentySeven = createWords("но знаменитое  Эльдорадо так никто и не нашел.");
	-- wordsTwentyEight = createWords("Откуда такие познания истории?");
	-- wordsTwentyNine = createWords("Да так, увлекалась в свое время.");
	-- wordsThirty = createWords("Вот черт!!!! Посмотрите что напротив нас!!");
	
	-- wordsThirtyOne = createWords("Это что пантера?");
	-- wordsThirtyTwo = createWords("Только без паники, не двигайтесь я смогу ее отпугнуть,");
	-- wordsThirtyThree = createWords("настало время использовать арбалет с успокоительной стрелой.");
	-- wordsThirtyFour = createWords("Дони, она рычит сделай что то.");
	-- wordsThirtyFive = createWords("Я не хочу умирать.");
	-- wordsThirtySix = createWords("Без паники, стреляю.");
	-- wordsThirtySeven = createWords("Она спит?");
	-- wordsThirtyEight = createWords("Да, пару часов так точно.");
	-- wordsThirtyNine = createWords("Ребята, кажется я вижу путь к храму!");
	-- wordsFourty = createWords("Мы можем добраться до входа, если будем идти по одному вдоль этой стены.");
	
	-- wordsFourtyOne = createWords("Ты прав. Осталось дождаться остальных.");
	-- wordsFourtyTwo = createWords("А вот и они. Где вас носит?! Мы уже заждались.");
	-- wordsFourtyThree = createWords("На нас только что чуть не  напала пантера, но Дони ее усыпил.");
	-- wordsFourtyFour = createWords("Нет, у нас не все хорошо Алекс укусила змея, у нее жар.");
	-- wordsFourtyFive = createWords("Мне нужно домой, мне очень плохо.");
	-- wordsFourtySix = createWords("Подведите ее ко мне, У меня есть противоядие.");
	-- wordsFourtySeven = createWords("Как быстро ей станет лучше?");
	-- wordsFourtyEight = createWords("Буквально в течении получаса.");
	-- wordsFourtyNine = createWords("Вы нашли проход?");
	-- wordsFifty = createWords("Да, вот он! По одному мы сможем дойти до главного входа.");
	
	-- wordsFiftyOne = createWords("А это не рискованно?");
	-- wordsFiftyTwo = createWords("Доктор Муни, можете заказать пиццу и подождать у самолета.");
	-- wordsFiftyThree = createWords("Вот только вашу часть сокровищ мы заберем себе. Ха-ха-ха.");
	-- wordsFiftyFour = createWords("Думаю беспокоится не о чем, главное не торопиться, здесь очень узкий проход.");
	-- wordsFiftyFive = createWords("Я пойду первый, а вы следуйте за мной.");
	-- wordsFiftySix = createWords("Наконец-то мы добрались до Храма. И конечно же, дверь заперта.");
	-- wordsFiftySeven = createWords("И что теперь делать?");
	-- wordsFiftyEight = createWords("Эту дверь не отпирали сотни лет. Хммм… Давайте попробуем надавить на дверь все вместе.");
	-- wordsFiftyNine = createWords("Должно сработать. На счет три. Раз…два…три!");
	-- wordsSixty = createWords("Есть!");
-- end

-- function createAll(scene)
	-- background = display.newImageRect("2b.jpg", display.contentWidth, display.contentHeight);
	-- background.x = display.contentCenterX;
	-- background.y = display.contentCenterY;
	
	-- backBtn = display.newImageRect("back.png", 100, 100);
	-- backBtn.x = 80;
	-- backBtn.y = 80;
	
	-- choiceBtnOne = display.newImageRect("btnOne.png", display.contentWidth/3.5, 100);
	-- choiceBtnOne.alpha = 0;
	
	-- choiceBtnTwo = display.newImageRect("btnTwo.png", display.contentWidth/3.5, 100);
	-- choiceBtnTwo.alpha = 0;
	
	-- choiceBtnThree = display.newImageRect("btnThree.png", display.contentWidth/3.5, 100);
	-- choiceBtnThree.alpha = 0;
	
	-- clickBox = display.newImageRect("nameBG.png", display.contentWidth, display.contentHeight-200);
	-- clickBox.x = display.contentCenterX;
	-- clickBox.y = display.contentCenterY + 100;
	-- clickBox.alpha = 0;
	-- scene:insert( clickBox );
	-- clickBox:addEventListener('tap', changeAlpha);
	-- --Timer = timer.performWithDelay( 5000, changeAlpha, -1);
	
	-- scene:insert( background );
	-- scene:insert( backBtn );
	-- scene:insert( choiceBtnOne );
	-- scene:insert( choiceBtnTwo );
	-- scene:insert( choiceBtnThree );
	-- createSubjects(sceneGroup);
-- end

-- -- tell them story

-- function changeAlpha()
	
	-- count = count + 1;
	-- print(count);
	
	-- if count == 2 then
		-- wordsOne.alpha = 0;
		-- wordsTwo.alpha = 1;
	-- end
	-- if count == 3 then
		-- wordsTwo.alpha = 0;
		-- wordsThree.alpha = 1;
	-- end
	-- if count == 4 then
		-- faceNine.alpha = 0;
		-- faceSeven.alpha = 1;
		
		-- nameOne.alpha = 0;
		-- nameFour.alpha = 1;
		
		-- wordsThree.alpha = 0;
		-- wordsFour.alpha = 1;
	-- end
	-- if count == 5 then
		-- faceSeven.alpha = 0;
		-- faceEleven.alpha = 1;
		
		-- nameFour.alpha = 0;
		-- nameFive.alpha = 1;
		
		-- wordsFour.alpha = 0;
		-- wordsFive.alpha = 1;
	-- end
	-- if count == 6 then
		-- wordsFive.alpha = 0;
		-- wordsSix.alpha = 1;
	-- end
	-- if count == 7 then
		-- faceEleven.alpha = 0;
		-- faceTwo.alpha = 1;
		
		-- nameFive.alpha = 0;
		-- nameTwo.alpha = 1;
		
		-- wordsSix.alpha = 0;
		-- wordsSeven.alpha = 1;
	-- end
	-- if count == 8 then
		-- wordsSeven.alpha = 0;
		-- wordsEight.alpha = 1;	
	-- end
	-- if count == 9 then
		-- faceTwo.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
	
		-- wordsEight.alpha = 0;
		-- wordsNine.alpha = 1;
	-- end
	-- if count == 10 then
		-- faceSix.alpha = 0;
		-- faceEleven.alpha = 1;
		
		-- nameThree.alpha = 0;
		-- nameFive.alpha = 1;
		
		-- wordsNine.alpha = 0;
		-- wordsTen.alpha = 1;
	-- end
	-- if count == 11 then
		-- faceEleven.alpha = 0;
		-- faceTwelve.alpha = 1;
	
		-- wordsTen.alpha = 0;
		-- wordsEleven.alpha = 1;
	-- end
	-- if count == 12 then
		-- faceTwelve.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameFive.alpha = 0;
		-- nameThree.alpha = 1;
	
		-- wordsEleven.alpha = 0;
		-- wordsTwelve.alpha = 1;
	-- end
	-- if count == 13 then
		-- wordsTwelve.alpha = 0;
		-- wordsThirteen.alpha = 1;
	-- end
	-- if count == 14 then
		-- faceSix.alpha = 0;
		-- faceOne.alpha = 1;
		
		-- nameThree.alpha = 0;
		-- nameTwo.alpha = 1;
		
		-- wordsThirteen.alpha = 0;
		-- wordsFourteen.alpha = 1;
	-- end
	-- if count == 15 then
		-- faceOne.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsFourteen.alpha = 0;
		-- wordsFifteen.alpha = 1;
	-- end
	-- if count == 16 then
		-- wordsFifteen.alpha = 0;
		-- wordsSixteen.alpha = 1;
	-- end
	-- if count == 17 then
		-- faceSix.alpha = 0;
		-- faceSeven.alpha = 1;
		
		-- nameThree.alpha = 0;
		-- nameFour.alpha = 1;	
	
		-- wordsSixteen.alpha = 0;
		-- wordsSeventeen.alpha = 1;
	-- end
	-- if count == 18 then
		-- faceSeven.alpha = 0;
		-- faceEight.alpha = 1;
	
		-- wordsSeventeen.alpha = 0;
		-- wordsEighteen.alpha = 1;
	-- end
	-- if count == 19 then
		-- faceEight.alpha = 0;
		-- faceEleven.alpha = 1;
		
		-- nameFour.alpha = 0;
		-- nameFive.alpha = 1;
		
		-- wordsEighteen.alpha = 0;
		-- wordsNineteen.alpha = 1;
	-- end
	-- if count == 20 then
		-- wordsNineteen.alpha = 0;
		-- wordsTwenty.alpha = 1;
	-- end
	-- if count == 21 then
		-- faceEleven.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameFive.alpha = 0;
		-- nameThree.alpha = 1;
	
		-- wordsTwenty.alpha = 0;
		-- wordsTwentyOne.alpha = 1;
	-- end
	-- if count == 22 then
		-- faceSix.alpha = 0;
		-- faceFive.alpha = 1;
		
		-- nameThree.alpha = 0;
		-- nameSix.alpha = 1;
	
		-- wordsTwentyOne.alpha = 0;
		-- wordsTwentyTwo.alpha = 1;
	-- end
	-- if count == 23 then
		-- faceFive.alpha = 0;
		-- faceThree.alpha = 1;
	
		-- wordsTwentyTwo.alpha = 0;
		-- wordsTwentyThree.alpha = 1;
	-- end
	-- if count == 24 then
		-- faceThree.alpha = 0;
		-- faceNine.alpha = 1;
		
		-- nameSix.alpha = 0;
		-- nameOne.alpha = 1;
	
		-- wordsTwentyThree.alpha = 0;
		-- wordsTwentyFour.alpha = 1;
	-- end
	-- if count == 25 then
		-- faceNine.alpha = 0;
		-- faceTen.alpha = 1;
	
		-- wordsTwentyFour.alpha = 0;
		-- wordsTwentyFive.alpha = 1;
	-- end
	-- if count == 26 then
		-- faceTen.alpha = 0;
		-- faceTwo.alpha = 1;
		
		-- nameOne.alpha = 0;
		-- nameTwo.alpha = 1;
	
		-- wordsTwentyFive.alpha = 0;
		-- wordsTwentySix.alpha = 1;
	-- end
	-- if count == 27 then
		-- faceTwo.alpha = 0;
		-- faceSeven.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameFour.alpha = 1;
		
		-- wordsTwentySix.alpha = 0;
		-- wordsTwentySeven.alpha = 1;
	-- end
	-- if count == 28 then
		-- faceSeven.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameFour.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsTwentySeven.alpha = 0;
		-- wordsTwentyEight.alpha = 1;
	-- end
	-- if count == 29 then
		-- faceSix.alpha = 0;
		-- faceEleven.alpha = 1;
		
		-- nameThree.alpha = 0;
		-- nameFive.alpha = 1;
		
		-- wordsTwentyEight.alpha = 0;
		-- wordsTwentyNine.alpha = 1;
	-- end
	-- if count == 30 then
		-- faceEleven.alpha = 0;
		-- faceNine.alpha = 1;
		
		-- nameFive.alpha = 0;
		-- nameOne.alpha = 1;
		
		-- wordsTwentyNine.alpha = 0;
		-- wordsThirty.alpha = 1;
	-- end
	-- if count == 31 then
		-- faceNine.alpha = 0;
		-- faceThirteen.alpha = 1;
		
		-- nameOne.alpha = 0;
		-- nameTwo.alpha = 1;
		
		-- wordsThirty.alpha = 0;
		-- wordsThirtyOne.alpha = 1;
	-- end
	-- if count == 32 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 33 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 34 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 35 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 36 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 37 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 38 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 39 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 40 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 41 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 42 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 43 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 44 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 45 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 46 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 47 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 48 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 49 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 50 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 51 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 52 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 53 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 54 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 55 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 56 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 57 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 58 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 59 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 60 then
		-- faceThirteen.alpha = 0;
		-- faceSix.alpha = 1;
		
		-- nameTwo.alpha = 0;
		-- nameThree.alpha = 1;
		
		-- wordsThirtyOne.alpha = 0;
		-- wordsThirtyTwo.alpha = 1;
	-- end
	-- if count == 61 then
		-- composer.removeScene("storyOne.slides.slide5");
		-- composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
	-- end
-- end

-- -- go to another scene

-- function onBackBtn()
	-- composer.setVariable( "checkpoint", 6 );
	-- composer.gotoScene( "storyOne.gameVisionOne", "fade", 800 );
-- end

-- function onTimer()
	-- clickBox.alpha = 1;
-- end
-- -----------------------------------------------------------------------------------------

-- function scene:create( event )
	-- sceneGroup = self.view;
	-- createAll(sceneGroup);
-- end

-- function scene:show( event )
	-- sceneGroup = self.view;
	-- local phase = event.phase;
	
	-- if phase == "will" then
	-- elseif phase == "did" then
		-- backBtn:addEventListener('tap', onBackBtn);
		
		-- if bgText.alpha == 0 then
			-- transition.to( faceNine, { time=1500, alpha=1 });
			-- transition.to( nameOne, { time=1500, alpha=1 });
			-- transition.to( wordsOne, { time=1500, alpha=1 });
			-- transition.to( bgText, { time=1500, alpha=1 });
			-- transition.to( bgName, { time=1500, alpha=1 });
			-- local tm = timer.performWithDelay( 1500, onTimer );
		-- end
	-- end
-- end

-- function scene:destroy( event )
	-- sceneGroup = self.view;
	-- clickBox:remoEventListener('tap', changeAlpha);
-- end

-- -- Listener setup

-- scene:addEventListener( "create", scene );
-- scene:addEventListener( "show", scene );
-- scene:addEventListener( "destroy", scene );

-- -----------------------------------------------------------------------------------------

-- return scene;