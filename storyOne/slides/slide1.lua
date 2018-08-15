local composer = require( "composer" );
local scene = composer.newScene();

local sceneGroup;

local count;

local background;
local backBtn;

local choiceBtnOne;
local choiceBtnTwo;

local bgText;

local subjects = {};

function addSubject(count, name, face, words)
   subjects[count] = { name = sName, face = sFace, words = sWords };
end

-- all data for part one

	addSubject(1, "Ден",   "4-1", "Надеюсь с самолетом ничего не случится");
	addSubject(2, "Ден",   "4-1", "и нам не придется пробираться в город через Джунгли.");
	addSubject(3, "Дони",  "5-1", "Я смогу провести нас обратно,");
	addSubject(4, "Дони",  "5-1", "главное, чтобы вы не создавали проблем.");
	addSubject(5, "Уил",   "6-1", "Мой вертолет сможет забрать меня в любое время,");
	addSubject(6, "Уил",   "6-3", "но на борту только три места. Придется подкидывать монетку. Ха-ха.");
	addSubject(7, "Алекс", "1-1", "До этого не дойдет.");
	addSubject(8, "Алекс", "1-1", "Доктор Муни изучил затерянный город инков на протяжении многих лет,");
	addSubject(9, "Алекс", "1-1", "проблем не должно возникнуть, верно Док?");
	addSubject(10, "Муни",  "3-1", "Я бы не спешил с выводами, Алекс.");
	
	addSubject(11, "Муни",  "3-1", "Не стоит забывать сражение у Теохакаса,");
	addSubject(12, "Муни",  "3-1", "которое состоялось в 1534 году,");
	addSubject(13, "Муни",  "3-1", "когда испанские завоеватели пришли на эти земли.");
	addSubject(14, "Муни",  "3-1", "Древнее племя понимало, что не может противостоять военному превосходству испанцев,");
	addSubject(15, "Муни",  "3-1", "поэтому индейцы придумали хитроумные ловушки,");
	addSubject(16, "Муни",  "3-1", "чтобы сдержать армию Гонсало Фернандеса.");
	addSubject(17, "Муни",  "3-1", "Будем надеяться, что все ловушки были найдены или заржавели.");
	addSubject(18, "Жули",  "2-3", "Звучит не сильно обнадеживающе.");
	addSubject(19, "Жули",  "2-2", "Помню, в самолете вы упоминали карту, которая приведет нас к сокровищам.");
	addSubject(20, "Муни",  "3-1", "Карта должна быть в первом зале Храма.");
	
	addSubject(21, "Муни",  "3-1", "Последняя экспедиция, которая отправилась на поиски сокровищ,");
	addSubject(22, "Муни",  "3-1", "под руководством голландского мореплавателя Ван Дер Поля, потерпела фиаско.");
	addSubject(23, "Муни",  "3-1", "Никто не вернулся из путешествия.");
	addSubject(24, "Жули",  "2-3", "Очередная радостная история.");
	addSubject(25, "Алекс", "1-1", "Ден, а ты что думаешь?");
	addSubject(26, "Ден",   "4-1", "Я впервые в этих краях,");
	addSubject(27, "Ден",   "4-1", "мистер Уил щедро платит за работу.");
	addSubject(28, "Ден",   "4-1", "Почему бы не рискнуть?");
	addSubject(29, "Дони",  "5-3", "Мне нравится твой подход.");
	addSubject(30, "Дони",  "5-3", "Если потеряешь руку и не сможешь пилотировать самолет,");
	
	addSubject(31, "Дони",  "5-3", "приглашаю быть у меня помощником.");
	addSubject(32, "Ден",   "4-3", "Спасибо, но я и без рук смогу поднять свою птичку в небо.");
	addSubject(33, "Алекс", "1-1", "К Храму ведут несколько тропинок.");
	addSubject(34, "Алекс", "1-1", "Какая из них выведет нас к цели быстрее?");
	addSubject(35, "Муни",  "3-2", "Я изучал картографию практически всю свою жизнь.");
	addSubject(36, "Муни",  "3-1", "К храму можно добраться десятком путей.");
	addSubject(37, "Муни",  "3-1", "Но самый безопасный и быстрый лежит через деревню инков.");
	addSubject(38, "Муни",  "3-1", "Только вопрос: как мы пойдем, через деревню или обойдем ее?");
	
	
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