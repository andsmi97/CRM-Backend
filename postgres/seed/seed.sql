INSERT INTO genres("genrename") VALUES ('Драма');
INSERT INTO genres("genrename") VALUES ('Фэнтези');
INSERT INTO genres("genrename") VALUES ('Криминал');
INSERT INTO genres("genrename") VALUES ('Дететктив');
INSERT INTO genres("genrename") VALUES ('Мелодрама');
INSERT INTO genres("genrename") VALUES ('Биография');
INSERT INTO genres("genrename") VALUES ('История');
INSERT INTO genres("genrename") VALUES ('Комедия');
INSERT INTO genres("genrename") VALUES ('Триллер');
INSERT INTO genres("genrename") VALUES ('Фантастика');
INSERT INTO genres("genrename") VALUES ('Приключение');
INSERT INTO genres("genrename") VALUES ('Экшн');

INSERT INTO countries("countryname") VALUES ('США'); --1
INSERT INTO countries("countryname") VALUES ('Франция'); --2
INSERT INTO countries("countryname") VALUES ('Великобритания'); --3
INSERT INTO countries("countryname") VALUES ('Германия'); --4
INSERT INTO countries("countryname") VALUES ('Марокко'); --5
INSERT INTO countries("countryname") VALUES ('Израиль'); --6
INSERT INTO countries("countryname") VALUES ('Канада'); --7
INSERT INTO countries("countryname") VALUES ('Австралия'); --8
INSERT INTO countries("countryname") VALUES ('Хорватия'); --9
INSERT INTO countries("countryname") VALUES ('Польша'); --10
INSERT INTO countries("countryname") VALUES ('Италия'); --11
INSERT INTO countries("countryname") VALUES ('Малазия'); --12

INSERT INTO cities("cityname","countryid") VALUES ('Уэст-Ковина',1); --1
INSERT INTO cities("cityname","countryid") VALUES ('Мемфис',1); --2
INSERT INTO cities("cityname","countryid") VALUES ('Санта-Моника',1); --3
INSERT INTO cities("cityname","countryid") VALUES ('Бафало',1); --4
INSERT INTO cities("cityname","countryid") VALUES ('Конкорд',1); --5
INSERT INTO cities("cityname","countryid") VALUES ('Гамильтон',1); --6
INSERT INTO cities("cityname","countryid") VALUES ('Чикаго',1); --7
INSERT INTO cities("cityname","countryid") VALUES ('Даллас',1); --8
INSERT INTO cities("cityname","countryid") VALUES ('Пасадена',1); --9
INSERT INTO cities("cityname","countryid") VALUES ('Блу-Айленд',1); --10
INSERT INTO cities("cityname","countryid") VALUES ('Беллимен',3); --11
INSERT INTO cities("cityname","countryid") VALUES ('Скараборо',3); --12
INSERT INTO cities("cityname","countryid") VALUES ('Лондон',3); --13
INSERT INTO cities("cityname","countryid") VALUES ('Париж',2); --14
INSERT INTO cities("cityname","countryid") VALUES ('Трап',2); --15
INSERT INTO cities("cityname","countryid") VALUES ('Антони',2); --16
INSERT INTO cities("cityname","countryid") VALUES ('Мант-Ла-Жоли',2); --17
INSERT INTO cities("cityname","countryid") VALUES ('Касабланка',5); --18
INSERT INTO cities("cityname","countryid") VALUES ('Иерусалим',6); --19
INSERT INTO cities("cityname","countryid") VALUES ('Нью-Йорк',1); --20
INSERT INTO cities("cityname","countryid") VALUES ('Галифакс',7); --21
INSERT INTO cities("cityname","countryid") VALUES ('Бостон',1); --22
INSERT INTO cities("cityname","countryid") VALUES ('Шоуни',1); --23
INSERT INTO cities("cityname","countryid") VALUES ('Увалд',1); --24
INSERT INTO cities("cityname","countryid") VALUES ('Сакраменто',1); --25
INSERT INTO cities("cityname","countryid") VALUES ('Лос-Анджелес',1); --26
INSERT INTO cities("cityname","countryid") VALUES ('Монбельяр',3); --27
INSERT INTO cities("cityname","countryid") VALUES ('Портлэнд',1); --28
INSERT INTO cities("cityname","countryid") VALUES ('Вашингтон',1); --29
INSERT INTO cities("cityname","countryid") VALUES ('Цинциннати',1); --30
INSERT INTO cities("cityname","countryid") VALUES ('Сидней',8); --31
INSERT INTO cities("cityname","countryid") VALUES ('Осиек',9); --32
INSERT INTO cities("cityname","countryid") VALUES ('Варшава',10); --33
INSERT INTO cities("cityname","countryid") VALUES ('Сюрен',2); --34
INSERT INTO cities("cityname","countryid") VALUES ('Турин',11); --35
INSERT INTO cities("cityname","countryid") VALUES ('Франкфурт на Майне',4); --36
INSERT INTO cities("cityname","countryid") VALUES ('Денвер',1); --37
INSERT INTO cities("cityname","countryid") VALUES ('Миссури',1); --38
INSERT INTO cities("cityname","countryid") VALUES ('Борнео',12); --39

INSERT INTO copyrightowners("copyrightownername") VALUES ('Castle Rock Entertainment');
INSERT INTO copyrightowners("copyrightownername") VALUES ('Universal Studios');
INSERT INTO copyrightowners("copyrightownername") VALUES ('20 Century Fox');
INSERT INTO copyrightowners("copyrightownername") VALUES ('Quad');
INSERT INTO copyrightowners("copyrightownername") VALUES ('Gaumont');
INSERT INTO copyrightowners("copyrightownername") VALUES ('Syncopy');

INSERT INTO films ("filmname","filmreleasedate","filmagerestriction","filmlength","filmlink","filmprice","filmposterlink","filmdescription","filmbudget","filmviews","filmmonltyviews","copyrightownerid") VALUES ('Побег из Шоушенка','1994-01-01', 16,142,'https://www.youtube.com/watch?v=iXv92OgO4yY',99,'https://st.kp.yandex.net/images/film_iphone/iphone360_326.jpg', 'Бухгалтер Энди Дюфрейн обвинен в убийстве собственной жены и ее любовника. Оказавшись в тюрьме под названием Шоушенк, он сталкивается с жестокостью и беззаконием, царящими по обе стороны решетки. Каждый, кто попадает в эти стены, становится их рабом до конца жизни. Но Энди, обладающий живым умом и доброй душой, находит подход как к заключенным, так и к охранникам, добиваясь их особого к себе расположения.',25000000, 0,0,1);
INSERT INTO films ("filmname","filmreleasedate","filmagerestriction","filmlength","filmlink","filmprice","filmposterlink","filmdescription","filmbudget","filmviews","filmmonltyviews","copyrightownerid") VALUES ('Зеленая миля','1999-01-01', 16,189,'https://www.youtube.com/watch?v=TODt_q-_4C4',99,'https://st.kp.yandex.net/images/film_iphone/iphone360_435.jpg','Пол Эджкомб— начальник блока смертников в тюрьме «Холодная гора», каждый из узников которого однажды проходит «зеленую милю» по пути к месту казни. Пол повидал много заключённых и надзирателей за время работы. Однако гигант Джон Коффи, обвинённый в страшном преступлении, стал одним из самых необычных обитателей блока.', 60000000, 0,0,2);
INSERT INTO films ("filmname","filmreleasedate","filmagerestriction","filmlength","filmlink","filmprice","filmposterlink","filmdescription","filmbudget","filmviews","filmmonltyviews","copyrightownerid") VALUES ('Форест гамп','1994-01-01',12,142,'https://www.youtube.com/watch?v=gB7wy6YGCGA',99,'https://st.kp.yandex.net/images/film_iphone/iphone360_448.jpg','От лица главного героя Форреста Гампа, слабоумного безобидного человека с благородным и открытым сердцем, рассказывается история его необыкновенной жизни. Фантастическим образом превращается он в известного футболиста, героя войны, преуспевающего бизнесмена. Он становится миллиардером, но остается таким же бесхитростным, глупым и добрым. Форреста ждет постоянный успех во всем, а он любит девочку, с которой дружил в детстве, но взаимность приходит слишком поздно.', 55000000, 0,0,2);
INSERT INTO films ("filmname","filmreleasedate","filmagerestriction","filmlength","filmlink","filmprice","filmposterlink","filmdescription","filmbudget","filmviews","filmmonltyviews","copyrightownerid") VALUES ('Список Шиндлера','1993-01-01',16,195,'https://www.youtube.com/watch?v=jW0a8P-uNek',99, 'https://st.kp.yandex.net/images/film_iphone/iphone360_329.jpg','Фильм рассказывает реальную историю загадочного Оскара Шиндлера, члена нацистской партии, преуспевающего фабриканта, спасшего во время Второй мировой войны почти 1200 евреев.',22000000, 0,0,3);
INSERT INTO films ("filmname","filmreleasedate","filmagerestriction","filmlength","filmlink","filmprice","filmposterlink","filmdescription","filmbudget","filmviews","filmmonltyviews","copyrightownerid") VALUES ('1+1','2011-01-01',16,112,'https://www.youtube.com/watch?v=whTjYy464cY',99,'https://st.kp.yandex.net/images/film_iphone/iphone360_535341.jpg','Пострадав в результате несчастного случая, богатый аристократ Филипп нанимает в помощники человека, который менее всего подходит для этой работы, — молодого жителя предместья Дрисса, только что освободившегося из тюрьмы. Несмотря на то, что Филипп прикован к инвалидному креслу, Дриссу удается привнести в размеренную жизнь аристократа дух приключений.',9500000, 0,0,5);
INSERT INTO films ("filmname","filmreleasedate","filmagerestriction","filmlength","filmlink","filmprice","filmposterlink","filmdescription","filmbudget","filmviews","filmmonltyviews","copyrightownerid") VALUES ('Леон','1994-01-01',16,133,'https://www.youtube.com/watch?v=ZAInq_Fx4Jo',99,'https://st.kp.yandex.net/images/film_iphone/iphone360_389.jpg','Профессиональный убийца Леон, не знающий пощады и жалости, знакомится со своей очаровательной соседкой Матильдой, семью которой расстреливают полицейские, замешанные в торговле наркотиками. Благодаря этому знакомству он впервые испытывает чувство любви, но…',115000000, 0,0,6);
INSERT INTO films ("filmname","filmreleasedate","filmagerestriction","filmlength","filmlink","filmprice","filmposterlink","filmdescription","filmbudget","filmviews","filmmonltyviews","copyrightownerid") VALUES ('Начало','2010-01-01',12,148,'https://www.youtube.com/watch?v=85Zz1CCXyDI',99,'https://st.kp.yandex.net/images/film_iphone/iphone360_447301.jpg', 'Кобб — талантливый вор, лучший из лучших в опасном искусстве извлечения: он крадет ценные секреты из глубин подсознания во время сна, когда человеческий разум наиболее уязвим. Редкие способности Кобба сделали его ценным игроком в привычном к предательству мире промышленного шпионажа, но они же превратили его в извечного беглеца и лишили всего, что он когда-либо любил. ',160000000, 0,0,6);
INSERT INTO films ("filmname","filmreleasedate","filmagerestriction","filmlength","filmlink","filmprice","filmposterlink","filmdescription","filmbudget","filmviews","filmmonltyviews","copyrightownerid") VALUES ('Бойцовский клуб','1999-01-01',18,131,'https://www.youtube.com/watch?v=GbS-kM6jb9w',99,'https://st.kp.yandex.net/images/film_iphone/iphone360_361.jpg','Терзаемый хронической бессонницей и отчаянно пытающийся вырваться из мучительно скучной жизни, клерк встречает некоего Тайлера Дардена, харизматического торговца мылом с извращенной философией. Тайлер уверен, что самосовершенствование — удел слабых, а саморазрушение — единственное, ради чего стоит жить.',63000000, 0,0,3);
INSERT INTO films ("filmname","filmreleasedate","filmagerestriction","filmlength","filmlink","filmprice","filmposterlink","filmdescription","filmbudget","filmviews","filmmonltyviews","copyrightownerid") VALUES ('Интерстеллар','2014-01-01',12,169,'https://www.youtube.com/watch?v=6ybBuTETr3U',99,'https://st.kp.yandex.net/images/film_iphone/iphone360_258687.jpg','Когда засуха приводит человечество к продовольственному кризису, коллектив исследователей и учёных отправляется сквозь червоточину (которая предположительно соединяет области пространства-времени через большое расстояние) в путешествие, чтобы превзойти прежние ограничения для космических путешествий человека и переселить человечество на другую планету.','165000000', 0,0,6);

INSERT INTO filmscountries("filmid","countryid") VALUES (1,1);
INSERT INTO filmscountries("filmid","countryid") VALUES (2,1);
INSERT INTO filmscountries("filmid","countryid") VALUES (3,1);
INSERT INTO filmscountries("filmid","countryid") VALUES (4,1);
INSERT INTO filmscountries("filmid","countryid") VALUES (5,2);
INSERT INTO filmscountries("filmid","countryid") VALUES (6,2);
INSERT INTO filmscountries("filmid","countryid") VALUES (7,1);
INSERT INTO filmscountries("filmid","countryid") VALUES (7,3);
INSERT INTO filmscountries("filmid","countryid") VALUES (8,1);
INSERT INTO filmscountries("filmid","countryid") VALUES (8,4);
INSERT INTO filmscountries("filmid","countryid") VALUES (9,1);
INSERT INTO filmscountries("filmid","countryid") VALUES (9,2);

INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Тим Роббинс','1958-10-16', 1, 'https://st.kp.yandex.net/images/actor_iphone/iphone360_7987.jpg','Имеет двоих общих детей со Сьюзен Сарандон. Их имена — Джек Генри Роббинс и Майлз Гатри Роббинс.'); --1
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Морган Фриман','1937-06-01', 2,'https://st.kp.yandex.net/images/actor_iphone/iphone360_6750.jpg','Полное имя — Морган Портерфилд Фриман мл. (Morgan Porterfield Freeman Jr.).'); --2
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Боб Гантон','1945-11-15', 3,'https://st.kp.yandex.net/images/actor_iphone/iphone360_23481.jpg','Полное имя актера — Роберт Патрик Гантон, младший.'); --3
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Уильям Сэндлер','1950-04-13', 4, 'https://st.kp.yandex.net/images/actor_iphone/iphone360_24267.jpg',''); --4

INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Том Хэнкс','1956-06-09', 5,'https://st.kp.yandex.net/images/actor_iphone/iphone360_9144.jpg',''); --5
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Дэвид Морс', '1953-10-11', 6,'https://st.kp.yandex.net/images/actor_iphone/iphone360_12759.jpg',''); --6
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Майкл Кларк Дункан', '1957-12-10', 26,'https://st.kp.yandex.net/images/actor_iphone/iphone360_677.jpg',''); --7
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Бони Харт', '1961-09-22', 7,'https://st.kp.yandex.net/images/actor_iphone/iphone360_22527.jpg',''); --8

INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Робин Райт', '1966-04-08', 8,'https://st.kp.yandex.net/images/actor_iphone/iphone360_8887.jpg',''); --9
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Салли Филд', '1946-11-06', 9,'https://st.kp.yandex.net/images/actor_iphone/iphone360_13477.jpg',''); --10
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Гэри Синиз', '1955-03-17', 10,'https://st.kp.yandex.net/images/actor_iphone/iphone360_3100.jpg',''); --11

INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Лиам Нисон', '1952-06-07', 11, 'https://st.kp.yandex.net/images/actor_iphone/iphone360_6534.jpg',''); --12
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Бен Кингсли', '1943-12-31', 12, 'https://st.kp.yandex.net/images/actor_iphone/iphone360_6846.jpg',''); --13
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Ральф Финес', '1962-12-22', 13, 'https://st.kp.yandex.net/images/actor_iphone/iphone360_22670.jpg',''); --14
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Каролине Гудолл', '1959-11-13', 13,'https://st.kp.yandex.net/images/actor_iphone/iphone360_12093.jpg',''); --15

INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Франкозис Клозет', '1955-09-21', 14, 'https://st.kp.yandex.net/images/actor_iphone/iphone360_71427.jpg',''); --16
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Омар Си', '1978-01-20', 15, 'https://st.kp.yandex.net/images/actor_iphone/iphone360_41644.jpg',''); --17
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Анне Ле Ни', '1962-12-16', 16, 'https://st.kp.yandex.net/images/actor_iphone/iphone360_57174.jpg',''); --18
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Одри Флерот', '1977-06-06', 17,'https://st.kp.yandex.net/images/actor_iphone/iphone360_868557.jpg',''); --19

INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Жан Рено', '1948-06-30', 18, 'https://st.kp.yandex.net/images/actor_iphone/iphone360_11505.jpg',''); --20
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Гэри Олдман', '1958-03-21', 13, 'https://st.kp.yandex.net/images/actor_iphone/iphone360_6650.jpg',''); --21
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Натали Портман', '1981-06-09', 19, 'https://st.kp.yandex.net/images/actor_iphone/iphone360_24285.jpg',''); --22
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Дэнни Алио', '1933-06-20', 20,'https://st.kp.yandex.net/images/actor_iphone/iphone360_14316.jpg',''); --23

INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Леонардо ДиКаприо', '1974-11-11', 26,'https://st.kp.yandex.net/images/actor_iphone/iphone360_37859.jpg',''); --24
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Джозеф Гордон-Левит', '1981-02-17', 26,'https://st.kp.yandex.net/images/actor_iphone/iphone360_9867.jpg',''); --25
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Елен Пэйдж', '1987-02-21', 21,'https://st.kp.yandex.net/images/actor_iphone/iphone360_43503.jpg','');--26
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Том Харди', '1977-09-15', 20,'https://st.kp.yandex.net/images/actor_iphone/iphone360_39984.jpg','');--27

INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Едвард Нортон', '1969-08-18', 20,'https://st.kp.yandex.net/images/actor_iphone/iphone360_25774.jpg',''); --28
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Брэд Пит', '1963-12-18', 23,'https://st.kp.yandex.net/images/actor_iphone/iphone360_25584.jpg',''); --29
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Хелена Бонем Картер', '1966-05-26', 13,'https://st.kp.yandex.net/images/actor_iphone/iphone360_25775.jpg',''); --30
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Мит Лоаф', '1947-09-27', 8,'https://st.kp.yandex.net/images/actor_iphone/iphone360_14127.jpg',''); --31

INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Мэтью МакКонахи', '1969-11-04', 24,'https://st.kp.yandex.net/images/actor_iphone/iphone360_797.jpg',''); --32
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Энн Хэтуэй', '1982-11-12', 20,'https://st.kp.yandex.net/images/actor_iphone/iphone360_38703.jpg',''); --33
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Джесика Честейн', '1977-03-24', 25,'https://st.kp.yandex.net/images/actor_iphone/iphone360_1111242.jpg',''); --34
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Маккинзи Фой', '2000-11-10', 8,'https://st.kp.yandex.net/images/actor_iphone/iphone360_2007922.jpg',''); --35

INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Фрэнк Дарабонт', '1959-01-28', 27,'https://st.kp.yandex.net/images/actor_iphone/iphone360_24262.jpg','Настоящее имя — Дарабонт Ференц (Darabont Ferenc).'); --36
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Стивен Кинг', '1947-09-21', 28,'https://st.kp.yandex.net/images/actor_iphone/iphone360_24263.jpg','Полное имя — Стивен Эдвин Кинг (Stephen Edwin King).'); --37
INSERT INTO people("personname", "personavatar") VALUES ('Лиз Глоцер', 'https://st.kp.yandex.net/images/actor_iphone/iphone360_102292.jpg'); --38
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Томас Ньюман', '1955-10-20', 26,'https://st.kp.yandex.net/images/actor_iphone/iphone360_608629.jpg','Брат композитора Дэвида Ньюмана.'); --39
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Теренс Марш', '1931-11-14', 13,'https://st.kp.yandex.net/images/actor_iphone/iphone360_137866.jpg',''); --40
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Роберт Земекис', '1951-05-14', 7,'https://st.kp.yandex.net/images/actor_iphone/iphone360_2435.jpg','Полное имя — Роберт Ли Земекис (Robert Lee Zemeckis).'); --41
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Эрик Рот', '1945-03-22', 20,'https://st.kp.yandex.net/images/actor_iphone/iphone360_512.jpg',''); --42
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Уинстон Грум', '1944-03-23', 29,'https://st.kp.yandex.net/images/actor/7957.jpg',''); --43
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Венди Файнерман', '1957-01-01', 26,'https://st.kp.yandex.net/images/actor/44201.jpg',''); --44
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Алан Сильвестри', '1950-03-26', 20,'https://st.kp.yandex.net/images/actor_iphone/iphone360_553348.jpg',''); --45
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Рик Картер', '1952-01-01', 26,'https://st.kp.yandex.net/images/actor_iphone/iphone360_1074532.jpg',''); --46
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Стивен Спилберг', '1946-12-18', 30,'https://st.kp.yandex.net/images/actor_iphone/iphone360_22260.jpg','Полное имя — Стивен Аллан Спилберг.'); --47
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Стивен Зеллиан', '1953-01-30', 26,'https://st.kp.yandex.net/images/actor_iphone/iphone360_41493.jpg','Полное имя — Стивен Эрнест Бернард Заиллян.'); --48
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Томас Кенилли', '1935-09-07', 31,'https://st.kp.yandex.net/images/actor_iphone/iphone360_251903.jpg',''); --49
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Бранко Лустиг', '1932-06-10', 32,'https://st.kp.yandex.net/images/actor_iphone/iphone360_10046.jpg',''); --50
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Джон Уильямс', '1932-02-08', 20,'https://st.kp.yandex.net/images/actor_iphone/iphone360_225027.jpg','В 1952 году Уильямс был призван на службу в ВВС США, где выполнял обязанности аранжировщика и дирижёра Оркестра ВВС до окончания службы.'); --51
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Аллан Старски', '1943-01-01', 33,'https://st.kp.yandex.net/images/actor_iphone/iphone360_1986387.jpg',''); --52
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Анна Б. Шеппард', '1946-01-18', 33,'https://st.kp.yandex.net/images/actor_iphone/iphone360_1987343.jpg',''); --53
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Оливье Накаш', '1973-04-15', 34,'https://st.kp.yandex.net/images/actor_iphone/iphone360_382906.jpg',''); --54
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Эрик Толедано', '1971-06-03', 14,'https://st.kp.yandex.net/images/actor_iphone/iphone360_426346.jpg',''); --55
INSERT INTO people("personname", "personbirthday","personavatar") VALUES ('Филипп Поццо ди Борго', '1951-02-14', 'https://st.kp.yandex.net/images/actor_iphone/iphone360_3152842.jpg'); --56
INSERT INTO people("personname", "personbirthday","personavatar") VALUES ('Николя Дюваль-Адассовски', '1958-01-01', 'https://st.kp.yandex.net/images/actor_iphone/iphone360_676553.jpg'); --57
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Людовико Эйнауди', '1955-10-23', 35,'https://st.kp.yandex.net/images/actor_iphone/iphone360_590648.jpg',''); --58
INSERT INTO people("personname") VALUES ('Николя Дюваль-Адассовски'); --59
INSERT INTO people("personname", "personavatar") VALUES ('Матьё Вадпьед', 'https://st.kp.yandex.net/images/actor_iphone/iphone360_676553.jpg'); --60
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Люк Бессон', '1959-03-18', 14,'https://st.kp.yandex.net/images/actor_iphone/iphone360_24505.jpg','Люк Бессон родился в семье инструкторов по подводному плаванию и с самого детства готовился продолжить семейную традицию.'); --61
INSERT INTO people("personname") VALUES ('Клод Бессон'); --62
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Эрик Серра', '1959-09-09', 14,'https://st.kp.yandex.net/images/actor_iphone/iphone360_154741.jpg',''); --63
INSERT INTO people("personname","personavatar") VALUES ('Дэн Вейл', 'https://st.kp.yandex.net/images/actor_iphone/iphone360_1998678.jpg'); --64
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Кристофер Нолан', '1970-07-30', 13,'https://st.kp.yandex.net/images/actor_iphone/iphone360_41477.jpg','Полное имя — Кристофер Джонатан Джеймс Нолан.'); --65
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Ханс Циммер', '1957-09-12', 36,'https://st.kp.yandex.net/images/actor_iphone/iphone360_50590.jpg','Полное имя — Ханс Флориан Циммер.'); --66
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Гай Диас', '1968-08-20', 13,'https://st.kp.yandex.net/images/actor_iphone/iphone360_1989147.jpg',''); --67
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Дэвид Финчер', '1962-08-28', 37,'https://st.kp.yandex.net/images/actor_iphone/iphone360_2944.jpg','Полное имя — Дэвид Эндрю Лео Финчер.'); --68
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Джим Улс', '1957-03-25', 38,'https://st.kp.yandex.net/images/actor_iphone/iphone360_25773.jpg',''); --69
INSERT INTO people("personname") VALUES ('Росс Грэйсон Белл'); --70
INSERT INTO people("personname","personavatar") VALUES ('Даст Бразерс','https://st.kp.yandex.net/images/actor_iphone/iphone360_910705.jpg'); --71
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Алекс Макдауэлл', '1955-04-11', 39,'https://st.kp.yandex.net/images/actor_iphone/iphone360_1529214.jpg',''); --72
INSERT INTO people("personname", "personbirthday","cityid","personavatar","personfacts") VALUES ('Нэйтан Краули', '1966-01-01', 13,'https://st.kp.yandex.net/images/actor/1642584.jpg',''); --73


--Shawshank's Redemption
INSERT INTO filmsdirectors("filmid","personid") VALUES (1, 36);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (1, 36);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (1, 37);
INSERT INTO filmsproducers("filmid","personid") VALUES (1, 38);
INSERT INTO filmscomposers("filmid","personid") VALUES (1, 39);
INSERT INTO filmsdesigners("filmid","personid") VALUES (1, 40);

--Green Mile
INSERT INTO filmsdirectors("filmid","personid") VALUES (2, 36);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (2, 36);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (2, 37);
INSERT INTO filmsproducers("filmid","personid") VALUES (2, 36);
INSERT INTO filmscomposers("filmid","personid") VALUES (2, 39);
INSERT INTO filmsdesigners("filmid","personid") VALUES (2, 40);

--Forest Gump
INSERT INTO filmsdirectors("filmid","personid") VALUES (3, 41);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (3, 42);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (3, 43);
INSERT INTO filmsproducers("filmid","personid") VALUES (3, 44);
INSERT INTO filmscomposers("filmid","personid") VALUES (3, 45);
INSERT INTO filmsdesigners("filmid","personid") VALUES (3, 46);

--Shindler's list
INSERT INTO filmsdirectors("filmid","personid") VALUES (4, 47);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (4, 48);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (4, 49);
INSERT INTO filmsproducers("filmid","personid") VALUES (4, 50);
INSERT INTO filmscomposers("filmid","personid") VALUES (4, 51);
INSERT INTO filmsdesigners("filmid","personid") VALUES (4, 52);
INSERT INTO filmsdesigners("filmid","personid") VALUES (4, 53);

--Intouchables
INSERT INTO filmsdirectors("filmid","personid") VALUES (5, 54);
INSERT INTO filmsdirectors("filmid","personid") VALUES (5, 55);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (5, 54);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (5, 56);
INSERT INTO filmsproducers("filmid","personid") VALUES (5, 57);
INSERT INTO filmscomposers("filmid","personid") VALUES (5, 58);
INSERT INTO filmsdesigners("filmid","personid") VALUES (5, 59);
INSERT INTO filmsdesigners("filmid","personid") VALUES (5, 60);


--Leon
INSERT INTO filmsdirectors("filmid","personid") VALUES (6, 61);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (6, 61);
INSERT INTO filmsproducers("filmid","personid") VALUES (6, 62);
INSERT INTO filmscomposers("filmid","personid") VALUES (6, 63);
INSERT INTO filmsdesigners("filmid","personid") VALUES (6, 64);

--Inception
INSERT INTO filmsdirectors("filmid","personid") VALUES (7, 65);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (7, 65);
INSERT INTO filmsproducers("filmid","personid") VALUES (7, 65);
INSERT INTO filmscomposers("filmid","personid") VALUES (7, 66);
INSERT INTO filmsdesigners("filmid","personid") VALUES (7, 67);

--Figth Club
INSERT INTO filmsdirectors("filmid","personid") VALUES (8, 68);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (8, 69);
INSERT INTO filmsproducers("filmid","personid") VALUES (8, 70);
INSERT INTO filmscomposers("filmid","personid") VALUES (8, 71);
INSERT INTO filmsdesigners("filmid","personid") VALUES (8, 72);

--Interstellar
INSERT INTO filmsdirectors("filmid","personid") VALUES (9, 65);
INSERT INTO filmsscriptwriters("filmid","personid") VALUES (9, 65);
INSERT INTO filmsproducers("filmid","personid") VALUES (9, 65);
INSERT INTO filmscomposers("filmid","personid") VALUES (9, 66);
INSERT INTO filmsdesigners("filmid","personid") VALUES (9, 73);

INSERT INTO filmsactors("filmid","personid") VALUES (1, 1);
INSERT INTO filmsactors("filmid","personid") VALUES (1, 2);
INSERT INTO filmsactors("filmid","personid") VALUES (1, 3);
INSERT INTO filmsactors("filmid","personid") VALUES (1, 4);
INSERT INTO filmsactors("filmid","personid") VALUES (2, 5);
INSERT INTO filmsactors("filmid","personid") VALUES (2, 6);
INSERT INTO filmsactors("filmid","personid") VALUES (2, 7);
INSERT INTO filmsactors("filmid","personid") VALUES (2, 8);
INSERT INTO filmsactors("filmid","personid") VALUES (3, 5);
INSERT INTO filmsactors("filmid","personid") VALUES (3, 9);
INSERT INTO filmsactors("filmid","personid") VALUES (3, 10);
INSERT INTO filmsactors("filmid","personid") VALUES (3, 11);
INSERT INTO filmsactors("filmid","personid") VALUES (4, 12);
INSERT INTO filmsactors("filmid","personid") VALUES (4, 13);
INSERT INTO filmsactors("filmid","personid") VALUES (4, 14);
INSERT INTO filmsactors("filmid","personid") VALUES (4, 15);
INSERT INTO filmsactors("filmid","personid") VALUES (5, 16);
INSERT INTO filmsactors("filmid","personid") VALUES (5, 17);
INSERT INTO filmsactors("filmid","personid") VALUES (5, 18);
INSERT INTO filmsactors("filmid","personid") VALUES (5, 19);
INSERT INTO filmsactors("filmid","personid") VALUES (6, 20);
INSERT INTO filmsactors("filmid","personid") VALUES (6, 21);
INSERT INTO filmsactors("filmid","personid") VALUES (6, 22);
INSERT INTO filmsactors("filmid","personid") VALUES (6, 23);
INSERT INTO filmsactors("filmid","personid") VALUES (7, 24);
INSERT INTO filmsactors("filmid","personid") VALUES (7, 25);
INSERT INTO filmsactors("filmid","personid") VALUES (7, 26);
INSERT INTO filmsactors("filmid","personid") VALUES (7, 27);
INSERT INTO filmsactors("filmid","personid") VALUES (8, 28);
INSERT INTO filmsactors("filmid","personid") VALUES (8, 29);
INSERT INTO filmsactors("filmid","personid") VALUES (8, 30);
INSERT INTO filmsactors("filmid","personid") VALUES (8, 31);
INSERT INTO filmsactors("filmid","personid") VALUES (9, 32);
INSERT INTO filmsactors("filmid","personid") VALUES (9, 33);
INSERT INTO filmsactors("filmid","personid") VALUES (9, 34);
INSERT INTO filmsactors("filmid","personid") VALUES (9, 35);

INSERT INTO filmsgenres("filmid","genreid") VALUES (1, 1);
INSERT INTO filmsgenres("filmid","genreid") VALUES (2, 1);
INSERT INTO filmsgenres("filmid","genreid") VALUES (2, 2);
INSERT INTO filmsgenres("filmid","genreid") VALUES (2, 3);
INSERT INTO filmsgenres("filmid","genreid") VALUES (2, 4);
INSERT INTO filmsgenres("filmid","genreid") VALUES (3, 1);
INSERT INTO filmsgenres("filmid","genreid") VALUES (3, 5);
INSERT INTO filmsgenres("filmid","genreid") VALUES (4, 1);
INSERT INTO filmsgenres("filmid","genreid") VALUES (4, 6);
INSERT INTO filmsgenres("filmid","genreid") VALUES (4, 7);
INSERT INTO filmsgenres("filmid","genreid") VALUES (5, 1);
INSERT INTO filmsgenres("filmid","genreid") VALUES (5, 6);
INSERT INTO filmsgenres("filmid","genreid") VALUES (5, 8);
INSERT INTO filmsgenres("filmid","genreid") VALUES (6, 1);
INSERT INTO filmsgenres("filmid","genreid") VALUES (6, 3);
INSERT INTO filmsgenres("filmid","genreid") VALUES (6, 9);
INSERT INTO filmsgenres("filmid","genreid") VALUES (7, 1);
INSERT INTO filmsgenres("filmid","genreid") VALUES (7, 4);
INSERT INTO filmsgenres("filmid","genreid") VALUES (7, 9);
INSERT INTO filmsgenres("filmid","genreid") VALUES (7, 10);
INSERT INTO filmsgenres("filmid","genreid") VALUES (7, 12);
INSERT INTO filmsgenres("filmid","genreid") VALUES (8, 1);
INSERT INTO filmsgenres("filmid","genreid") VALUES (8, 3);
INSERT INTO filmsgenres("filmid","genreid") VALUES (8, 9);
INSERT INTO filmsgenres("filmid","genreid") VALUES (9, 1);
INSERT INTO filmsgenres("filmid","genreid") VALUES (9, 10);
INSERT INTO filmsgenres("filmid","genreid") VALUES (9, 11);

INSERT INTO users("username","userstatus","usermoney","userstatusduedate","useremail","userpassword","userspent") VALUES ('andsmi','Inactive',0,'2019-03-25','andsmi97@gmail.com','$2a$10$qHWVn1B6c9xzYEuD1.YD7.2Y8C0opdKvXRodvsWLxcn.GkPRKdGHi',0); --password password
INSERT INTO users("username","userstatus","usermoney","userstatusduedate","useremail","userpassword","userspent") VALUES ('saffer','Premium',500,'2019-03-25','saffer@gmail.com','$2a$10$qHWVn1B6c9xzYEuD1.YD7.2Y8C0opdKvXRodvsWLxcn.GkPRKdGHi',300); --password password

INSERT INTO usersfilmslibrary("filmid","userid","dateadd","dateremove") VALUES (1,1,'2019-03-25','2019-03-25');
INSERT INTO usersfilmslibrary("filmid","userid","dateadd","dateremove") VALUES (2,1,'2019-03-25','2019-03-25');
INSERT INTO usersfilmslibrary("filmid","userid","dateadd","dateremove") VALUES (3,1,'2019-03-25','2019-03-25');

INSERT INTO usersfilmsratings("userid","filmid","rating") VALUES (1,2,5);
INSERT INTO usersfilmsratings("userid","filmid","rating") VALUES (1,3,3);
INSERT INTO usersfilmsratings("userid","filmid","rating") VALUES (1,1,5);
INSERT INTO usersfilmsratings("userid","filmid","rating") VALUES (2,1,4);

--Forest Gump
INSERT INTO awards("awardname","awardcategory","awardyear","filmid") VALUES ('Оскар','Лучший фильм','1995-01-01',3);
INSERT INTO awards("awardname","awardcategory","awardyear","filmid","personid") VALUES ('Оскар','Лучшая мужская роль','1995-01-01',3,5);
INSERT INTO awards("awardname","awardcategory","awardyear","filmid","personid") VALUES ('Оскар','Лучший режисер','1995-01-01',3,6);

--Shindler's List
INSERT INTO awards("awardname","awardcategory","awardyear","filmid") VALUES ('Оскар','Лучший фильм','1994-01-01',4);
INSERT INTO awards("awardname","awardcategory","awardyear","filmid","personid") VALUES ('Оскар','Лучший режисер','1994-01-01',4,47);
INSERT INTO awards("awardname","awardcategory","awardyear","filmid","personid") VALUES ('Оскар','Лучший адаптированный сценарий','1994-01-01',4,48);
INSERT INTO awards("awardname","awardcategory","awardyear","filmid","personid") VALUES ('Оскар','Лучшие декорации','1994-01-01',4,52);
INSERT INTO awards("awardname","awardcategory","awardyear","filmid","personid") VALUES ('Оскар','Лучшие декорации','1994-01-01',4,53);
INSERT INTO awards("awardname","awardcategory","awardyear","filmid","personid") VALUES ('Оскар','Лучший саундтрек','1994-01-01',4,51);


