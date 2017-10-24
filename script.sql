use test;/*работаем с базой "test"*/

drop table if exists book;/*удаляем таблицу "book" если она есть, если нет то if exists не дает выкинуть ошибку*/

create table book(
	id INT not null auto_increment,/*столбец ид, не принимает нулевые значения, авто увеличение*/
	title varchar(100) not null,/*столбец название книги*/
	description varchar(255) not null,/*столбец краткое описание*/
	author varchar(100) not null, /*столбец фамили и имя автора*/
	isbn varchar(20) not null,/*10 или 13 цифр International Standard Book Number — международный стандартный номер книги*/
	printYear INT not null,/*Год издания книги*/
	readAlready BOOL not null,/*читал ли кто-то эту книгу, true - 1, false - 0*/
	primary key(id))/*указывает на первичный ключ*/
ENGINE = InnoDB /*указаываем тип системы хранения*/
default character set = utf8;/*указываем систему кодировки*/

/*Наполняем данными таблицу*/
insert into book
	(title, description, author, isbn, printYear, readAlready)
values
	('Лекарь ученик Авиценны', 'Бедного сироту ничто не может удержать на родине с тех пор
	как он открыл в себе дар исцелять!', 'Ной Гордон', '978-966-14-1381- 7','2012',true),
	('Изучаем SQL', 'Ознакомление с основами языка SQL', 'Линн Бейли', '978-5-459-00421-2','2012',false),
	('Хранитель ключей', 'Шокирующая семейная драма', 'Перри О\'Шонесси', '978-966-343-783-5','2017',true),
	('Алхимик', 'АЛХИМИК - самый известный роман бразильского писателя Пауло Коэльо, любимая книга 
	миллионов людей во всем мире.', 'Пауло Коэльо', '978-5-17-087921-2','2015',false),
	('Дневник мага', 'Автобиографический роман Пауло Коэльо ДНЕВНИК МАГА (ПАЛОМНИЧЕСТВО) посвящен поиску древней мудрости, 
	которую постепенно обретает герой, отправившись по древнему паломническому пути в испанский 
	город Сантья-го-де-Компостела.', 'Пауло Коэльо', '978-5-17-087640-2','2015',false),
	('Зови меня Шинигами', 'Привычный мир рушится, когда реальность открывает свою тайную сторону. Под личинами 
	обычных людей могут прятаться жуткие создания.', 'Виктория Эл', '978-5-17-104682-8','2017',false),
	('Пандемия. Всемирная истоия смертельных вирусов', 'В последние 50 лет более 300 инфекционных заболеваний 
	возникали впервые или повторно на новых территориях. ', 'Соня Шах', '978-5-91671-771-6','2017',false),
	('Тайная наследница', 'Золотое лето 1886 года. Наивная деревенская девушка Ида Гарфилд торопится сбежать с фермы, 
	и когда мисс Матильда Грегори, хозяйка дома Саммерсби, предлагает ей работу горничной, Ида хватается за 
	этот шанс', 'Люк Девениш', '978-617-12-3375-1','2017',false),
	('Мир внизу', '2165 год. Рейнджеры — единственная связь между давно отнятой у людей Землей и летающими 
	станциями — последним оплотом человечества. Девятнадцатилетняя Сионна Вэль гордится своим призванием 
	и делает успехи.', 'Карвин Ви', '978-5-17-104532-6','2017',false),
	('Мастер и Маргарита', 'Роман Михаила Булгакова «Мастер и Маргарита» стал классикой мировой литературы, 
	выдержал многомиллионные тиражи. Он переведен на многие языки мира, многократно инсценирован 
	и экранизирован. ', 'Булгаков Михаил', '978-966-03-5454-8','2003',true),
	('Чертов нахал', 'Сбежав от нелюбимого жениха, Одри отправляется через всю страну в Калифорнию, 
	чтобы изменить жизнь. На одной из пустынных заправок она встречает чертовски привлекательного 
	мужчину с инициалами Ч.Н. на байке.', 'Ви Киланд', '978-5-699-98022-2','2017',false),
	('Вино из одуванчиков', 'Войдите в светлый мир двенадцатилетнего мальчика и проживите с ним одно лето, 
	наполненное событиями радостными и печальными, загадочными и тревожными.', 'Рэй Брэдбери', '978-5-699-96117-7','2017',false),
	('Rapid Modernization of Java Applications', 'Rapid Modernization of Java Applications: Practical Business and Technical 
	Solutions for Upgrading Your Enterprise Portfolio', 'G. Venkat', '978-0071842037','2017',false),
	('Mastering LibGDX Game Development', 'Leverage the power of LibGDX to create a fully functional, customizable RPG game 
	for your own commercial title', ' Patrick Hoey', '978-1785289361','2015',false),
	('Starting Out with Java: Early Objects, 5th Edition', 'Starting Out with Java: Early Objects is intended for use in 
	the Java programming course. It is also suitable for all readers interested in an introduction to the Java programming 
	language.', 'Tony Gaddis', '978-0-13-377674-4','2014',false),
	('Introduction to Java Programming', 'Every	computer will have its own machine language. So, we need to translate 
	Java code into machine code before the computer could execute our program. ', 'Nagaraj Rao, John Yoon', '978-9382661269','2016',false),
	('Библия Delphi', 'Книга посвящена программированию на языка Delphi от самых основ до примеров построение конкретных 
	приложений.', 'Михаил Фленов', '978-5-9775-0667-0','2011',false),
	('Delphi. Профессиональное программирование', 'Автор системно и последовательно излагает концепцию Delphi, предоставляя 
	читателю не просто инструмент, а профессиональную методику, позволяющую разрабатывать 
	эффективные приложения для Windows.', 'Дмитрий Осипов', '978-5-93286-074-2','2006',false),
	('Python Digital Forensics Cookbook', 'Over 60 recipes to help you learn digital forensics and leverage 
	Python scripts to amplify your examinations', 'Preston Miller, Chapin Bryce', '978-1783987467','2017',false),
	('Java Data Analysis', 'Get the most out of the popular Java libraries and tools to perform efficient data analysis
	Data analysis is a process of inspecting, cleansing, transforming, and modeling data with the aim of 
	discovering useful information.', 'John R. Hubbard', '978-1787285651','2017',false),
	('Big Data Analytics with Java', 'This book covers case studies such as sentiment analysis on a tweet dataset, recommendations 
	on a movielens dataset, customer segmentation on an ecommerce dataset, and graph analysis 
	on actual flights dataset.', 'Rajat Mehta', '978-1787288980','2017',false),
	('Kali Linux Cookbook', 'Over 80 recipes to effectively test your network and boost your career in security
	Kali Linux is a Linux distribution designed for penetration testing and 
	security auditing. ', ' Corey P. Schultz, Bob Perciaccante', ' 978-1784390303','2017',false);