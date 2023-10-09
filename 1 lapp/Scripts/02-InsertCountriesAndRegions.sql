USE BestDatabaseBerkoz;
GO

/***  Добавление стран  **/

SET NOCOUNT ON;
BEGIN TRANSACTION;
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('AUS', 'Австpалийский Союз', 'Австралия', 'Канберра', '+61');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('AUT', 'Австpийская Республика', 'Австрия', 'Вена', '+43');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('AZE', 'Республика Азербайджан', 'Азербайджан', 'Баку', '+994');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ALB', 'Наpодная Социалистическая Республика Албания', 'Албания', 'Тирана', '+355');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('DZA', 'Алжиpская Наpодная Демокpатическая Республика', 'Алжир', 'Алжир', '+213');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ASM', 'Американское Самоа', 'Самоа', 'Апиа', '+684');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('AGO', 'Наpодная Республика Ангола', 'Ангола', 'Луанда', '+244');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('AND', 'Княжество Андорра', 'Андорра', 'Андорра-ла-Велья', '+376');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ATG', 'Антигуа и Барбуда', 'Антигуа и Барбуда', 'Сент-Джонс', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ARE', 'Объединённые Арабские Эмираты', 'ОАЭ', 'Абу-Даби', '+971');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ARG', 'Аpгентинская Республика', 'Аргентина', 'Буэнос-Айрес', '+54');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ARM', 'Республика Армения', 'Армения', 'Ереван', '+374');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('AFG', 'Республика Афганистан', 'Афганистан', 'Кабул', '+93');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BHS', 'Багамские острова', 'Багамы', 'Нассау', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BGD', 'Народная Республика Бангладеш', 'Бангладеш', 'Дакка', '+880');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BRB', 'Барбадос', 'Барбадос', 'Бриджтаун', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BHR', 'Государство Бахрейн', 'Бахрейн', 'Манама', '+973');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BLR', 'Республика Белоруссия', 'Белоруссия', 'Минск', '+375');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BLZ', 'Белиз', 'Белиз', 'Бельмопан', '+501');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BEL', 'Королевство Бельгия', 'Бельгия', 'Брюссель', '+32');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BEN', 'Народная Республика Бенин ', 'Бенин', 'Порто-Ново', '+229');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BGR', 'Республика Болгария ', 'Болгария', 'София', '+359');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BOL', 'Республика Боливия', 'Боливия', 'Сукре', '+591');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BIH', 'Союз Босния и Герцеговина', 'Босния и Герцеговина', 'Сараево', '+387');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BWA', 'Республика Ботсвана', 'Ботсвана', 'Габороне', '+267');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BRA', 'Федеративная Республика Бразилия', 'Бразилия', 'Бразилиа', '+55');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BRN', 'Султанат Бруней-Даруссалам ', 'Бруней', 'Бандар-Сери-Бегаван', '+673');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BFA', 'Буркина Фасо', 'Буркина Фасо', 'Уагадугу', '+226');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BDI', 'Республика Бурунди', 'Бурунди', 'Бужумбура', '+257');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('BTN', 'Королевство Бутан ', 'Бутан', 'Тхимпху', '+975');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('VUT', 'Республика Вануату ', 'Вануату', 'Порт-Вила', '+678');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('VAT', 'Государство-город Ватикан ', 'Ватикан', 'Ватикан', '+379');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GBR', 'Соединенное Королевство Великобритании и Северной Ирландии ', 'Великобритания', 'Лондон', '+44');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('HUN', 'Венгерская Республика ', 'Венгрия', 'Будапешт', '+36');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('VEN', 'Республика Венесуэла ', 'Венесуэла', 'Каракас', '+58');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('TLS', 'Демократическая Республика Восточного Тимора ', 'Восточный Тимор', 'Дили', '+670');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('VNM', 'Социалистическая Республика Вьетнам ', 'Вьетнам', 'Ханой', '+84');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GAB', 'Габонская Республика', 'Габон', 'Либревиль', '+241');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('HTI', 'Республика Гаити', 'Гаити', 'Порт-о-Пренс', '+509');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GUY', 'Республика Гайана', 'Гайана', 'Джорджтаун', '+592');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GMB', 'Республика Гамбия', 'Гамбия', 'Банжул', '+220');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GHA', 'Республика Гана', 'Гана', 'Аккра', '+233');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GTM', 'Республика Гватемала', 'Гватемала', 'Гватемала', '+502');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GIN', 'Гвинейская Республика', 'Гвинея', 'Конакри', '+224');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GNB', 'Республика Гвинея-Бисау', 'Гвинея-Бисау', 'Бисау', '+245');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('DEU', 'Федеративная Республика Германия', 'Германия', 'Берлин', '+49');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('HND', 'Республика Гондурас', 'Гондурас', 'Тегусигальпа', '+504');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GRD', 'Гренада', 'Гренада', 'Сент-Джорджес', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GRC', 'Греческая Республика', 'Греция', 'Афины', '+30');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GEO', 'Грузия', 'Грузия', 'Тбилиси', '+995');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('DNK', 'Королевство Дания', 'Дания', 'Копенгаген', '+45');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('DJI', 'Республика Джибути', 'Джибути', 'Джибути', '+253');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('DMA', 'Содружество Доминики', 'Доминика', 'Розо', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('DOM', 'Доминиканская республика', 'Доминиканская республика', 'Санто-Доминго', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('EGY', 'Арабская Республика Египет', 'Египет', 'Каир', '+20');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ZMB', 'Республика Замбия', 'Замбия', 'Лусака', '+260');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ZWE', 'Республика Зимбабве', 'Зимбабве', 'Хараре', '+263');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ISR', 'Государство Израиль', 'Израиль', 'Иерусалим', '+972');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('IND', 'Республика Индия', 'Индия', 'Нью-Дели', '+91');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('IDN', 'Республика Индонезия', 'Индонезия', 'Джакарта', '+62');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('JOR', 'Иорданское Хашимитское Королевство', 'Иордания', 'Амман', '+962');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('IRQ', 'Иракская Республика', 'Ирак', 'Багдад', '+964');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('IRN', 'Исламская Республика Иран', 'Иран', 'Тегеран', '+98');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('IRL', 'Ирландская Республика', 'Ирландия', 'Дублин', '+353');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ISL', 'Республика Исландия', 'Исландия', 'Рейкьявик', '+354');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ESP', 'Королевство Испания', 'Испания', 'Мадрид', '+34');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ITA', 'Итальянская Республика', 'Италия', 'Рим', '+39');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('YEM', 'Республика Йемен', 'Йемен', 'Сана', '+967');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('KAZ', 'Республика Казахстан', 'Казахстан', 'Астана', '+7 ');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('KHM', 'Королевство Камбоджа', 'Камбоджа', 'Пномпень', '+855');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('CMR', 'Республика Камерун ', 'Камерун', 'Яунде', '+237');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('CAN', 'Канада', 'Канада', 'Оттава', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('QAT', 'Государство Катар', 'Катар', 'Доха', '+974');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('KEN', 'Республика Кения', 'Кения', 'Найроби', '+254');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('CYP', 'Республика Кипр', 'Кипр', 'Никосия', '+357');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('KIR', 'Кирибати', 'Кирибати', 'Южная Тарава (Баирики)', '+686');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('CHN', 'Китайская Народная Республика', 'Китай', 'Пекин', '+86');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('COL', 'Республика Колумбия', 'Колумбия', 'Богота', '+57');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('COM', 'Союз Коморских Островов', 'Коморские острова', 'Морони', '+269');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('PRK', 'Корейская Народная Демократическая республика', 'КНДР', 'Пхеньян', '+850');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('CRI', 'Республика Коста-Рика', 'Коста-Рика', 'Сан-Хосе', '+506');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('CIV', 'Республика Кот-д’Ивуар', 'Кот-д’Ивуар', 'Ямусукро', '+225');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('CUB', 'Республика Куба', 'Куба', 'Гавана', '+53');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('KWT', 'Государство Кувейт', 'Кувейт', 'Эль-Кувейт', '+965');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('KGZ', 'Киргизская Республика', 'Киргизия', 'Бишкек', '+996');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('LAO', 'Лаосская Народно-Демократическая Республика', 'Лаос', 'Вьентьян', '+856');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('LVA', 'Латвийская Республика', 'Латвия', 'Рига', '+371');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('LSO', 'Королевство Лесото', 'Лесото', 'Масеру', '+266');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('LBR', 'Республика Либерия', 'Либерия', 'Монровия', '+231');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('LBN', 'Ливанская Республика', 'Ливан', 'Бейрут', '+961');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('LBY', 'Великая Социалистическая Народная Ливийская Арабская Джамахирия', 'Ливия', 'Триполи', '+218');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('LTU', 'Литовская Республика', 'Литва', 'Вильнюс', '+370');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('LIE', 'Княжество Лихтенштейн', 'Лихтенштейн', 'Вадуц', '+423');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('LUX', 'Великое Герцогство Люксембург', 'Люксембург', 'Люксембург', '+352');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MUS', 'Республика Маврикий', 'Маврикий', 'Порт-Луи', '+230');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MRT', 'Исламская Республика Мавритания', 'Мавритания', 'Нуакшот', '+222');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MDG', 'Республика Мадагаскар', 'Мадагаскар', 'Антананариву', '+261');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MKD', 'Республика Македония', 'Македония', 'Скопье', '+389');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MWI', 'Республика Малави', 'Малави', 'Лилонгве', '+265');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MYS', 'Федерация Малайзия', 'Малайзия', 'Куала-Лумпур', '+60');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MLI', 'Республика Мали', 'Мали', 'Бамако', '+223');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MDV', 'Мальдивская Республика', 'Мальдивы', 'Мале', '+960');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MLT', 'Республика Мальта', 'Мальта', 'Валлетта', '+356');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MAR', 'Королевство Марокко', 'Марокко', 'Рабат', '+212');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MHL', 'Республика Маршалловы Острова', 'Маршалловы острова', 'Маджуро', '+692');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MEX', 'Мексиканские Соединенные Штаты', 'Мексика', 'Мехико', '+52');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('FSM', 'Микронезия', 'Микронезия', 'Паликир', '+691');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MOZ', 'Республика Мозамбик', 'Мозамбик', 'Мапуту', '+258');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MDA', 'Республика Молдова', 'Молдавия', 'Кишинёв', '+373');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MCO', 'Княжество Монако', 'Монако', 'Монте-Карло', '+377');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MNG', 'Монгол Улс', 'Монголия', 'Улан-Батор', '+976');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('MMR', 'Союз Мьянма', 'Мьянма', 'Найпьидо', '+95');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('NAM', 'Республика Намибия', 'Намибия', 'Виндхук', '+264');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('NPL', 'Федеративная Демократическая Республика Непал', 'Непал', 'Катманду', '+977');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('NER', 'Республика Нигер', 'Нигер', 'Ниамей', '+227');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('NGA', 'Федеративная Республика Нигерия', 'Нигерия', 'Абуджа', '+234');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('NLD', 'Королевство Нидерландов', 'Нидерланды', 'Амстердам', '+31');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('NIC', 'Республика Никарагуа', 'Никарагуа', 'Манагуа', '+505');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('NZL', 'Новая Зеландия', 'Новая Зеландия', 'Веллингтон', '+64');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('NOR', 'Королевство Норвегия', 'Норвегия', 'Осло', '+47');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('OMN', 'Султанат Оман', 'Оман', 'Маскат', '+968');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('PAK', 'Исламская Республика Пакистан', 'Пакистан', 'Исламабад', '+92');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('PLW', 'Республика Палау', 'Палау', 'Мелекеок', '+680');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('PSE', 'Палестинская автономия / Государство Палестина', 'Палестина', 'Рамалла', '+970');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('PAN', 'Республика Панама', 'Панама', 'Панама', '+507');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('PNG', 'Независимое Государство Папуа — Новая Гвинея', 'Папуа - Новая Гвинея', 'Порт-Морсби', '+675');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('PRY', 'Республика Парагвай', 'Парагвай', 'Асунсьон', '+595');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('PER', 'Республика Перу', 'Перу', 'Лима', '+51');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('POL', 'Республика Польша', 'Польша', 'Варшава', '+48');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('PRT', 'Португальская Республика', 'Португалия', 'Лиссабон', '+351');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('RUS', 'Российская Федерация', 'Россия', 'Москва', '+7');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('RWA', 'Руандийская Республика', 'Руанда', 'Кигали', '+250');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ROU', 'Румыния', 'Румыния', 'Бухарест', '+40');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SLV', 'Республика Эль-Сальвадор', 'Сальвадор', 'Сан-Сальвадор', '+503');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SMR', 'Республика Сан-Марино', 'Сан-Марино', 'Сан-Марино', '+378');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('STP', 'Демократическая Республика Сан-Томе и Принсипи', 'Сан-Томе и Принсипи', 'Сан-Томе', '+239');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SAU', 'Королевство Саудовская Аравия ', 'Саудовская Аравия', 'Эр-Рияд', '+966');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SWZ', 'Королевство Свазиленд', 'Свазиленд', 'Мбабене', '+268');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SYC', 'Республика Сейшельские Острова', 'Сейшельские острова', 'Виктория', '+248');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SEN', 'Республика Сенегал', 'Сенегал', 'Дакар', '+221');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('VCT', 'Сент-Винсент и Гренадины', 'Сент-Винсент и Гренадины', 'Кингстаун', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('LCA', 'Сент-Люсия', 'Сент-Люсия', 'Кастри', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SGP', 'Республика Сингапур', 'Сингапур', 'Сингапур', '+65');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SYR', 'Сирийская Арабская Республика', 'Сирия', 'Дамаск', '+963');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SVK', 'Словацкая Республика', 'Словакия', 'Братислава', '+421');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SVN', 'Республика Словения', 'Словения', 'Любляна', '+386');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('USA', 'Соединенные Штаты Америки', 'США', 'Вашингтон', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SLB', 'Соломоновы острова', 'Соломоновы острова', 'Хониара', '+677');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SOM', 'Сомали', 'Сомали', 'Могадишо', '+252');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SDN', 'Республика Судан', 'Судан', 'Хартум', '+249');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SUR', 'Республика Суринам', 'Суринам', 'Парамарибо', '+597');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SLE', 'Республика Сьерра-Леоне', 'Сьерра-Леоне', 'Фритаун', '+232');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('TJK', 'Республика Таджикистан', 'Таджикистан', 'Душанбе', '+992');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('TZA', 'Объединенная Республика Танзания', 'Танзания', 'Додома', '+255');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('TGO', 'Тоголезская Республика', 'Того', 'Ломе', '+228');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('TON', 'Королевство Тонга', 'Тонга', 'Нукуалофа', '+676');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('TTO', 'Республика Тринидад и Тобаго', 'Тринидад и Тобаго', 'Порт-оф-Спейн', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('TUV', 'Тувалу', 'Тувалу', 'Фунафути', '+688');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('TUN', 'Тунисская Республика', 'Тунис', 'Тунис', '+216');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('TUR', 'Турецкая Республика', 'Турция', 'Анкара', '+90');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('UGA', 'Республика Уганда', 'Уганда', 'Кампала', '+256');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('UZB', 'Республика Узбекистан', 'Узбекистан', 'Ташкент', '+998');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('UKR', 'Украина', 'Украина', 'Киев', '+380');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('URY', 'Восточная Республика Уругвай', 'Уругвай', 'Монтевидео', '+598');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('FJI', 'Республика Фиджи', 'Фиджи', 'Сува', '+679');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('PHL', 'Республика Филиппины', 'Филиппины', 'Манила', '+63');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('FIN', 'Финляндская Республика', 'Финляндия', 'Хельсинки', '+358');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('FRA', 'Французская Республика', 'Франция', 'Париж', '+33');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('HRV', 'Республика Хорватия', 'Хорватия', 'Загреб', '+385');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('CAF', 'Центральная Африканская Республика', 'ЦАР', 'Банги', '+236');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('TCD', 'Республика Чад', 'Чад', 'Нджамена', '+235');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('CZE', 'Чешская Республика', 'Чехия', 'Прага', '+420');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('CHL', 'Республика Чили', 'Чили', 'Сантьяго', '+56');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('CHE', 'Швейцарская Конфедерация', 'Швейцария', 'Берн', '+41');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('SWE', 'Королевство Швеция', 'Швеция', 'Стокгольм', '+46');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('LKA', 'Демократическая Социалистическая Республика Шри-Ланка', 'Шри-Ланка', 'Шри-Джаяварденепура-Котте', '+94');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ECU', 'Республика Эквадор', 'Эквадор', 'Кито', '+593');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('GNQ', 'Республика Экваториальная Гвинея', 'Экваториальная Гвинея', 'Малабо', '+240');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ERI', 'Государство Эритрея', 'Эритрея', 'Асмэра', '+291');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('EST', 'Эстонская Республика', 'Эстония', 'Таллин', '+372');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ETH', 'Федеративная Демократическая Республика Эфиопия', 'Эфиопия', 'Аддис-Абеба', '+251');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('ZAF', 'Южно-Африканская Республика', 'ЮАР', 'Претория', '+27');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('JAM', 'Ямайка', 'Ямайка', 'Кингстон', '+1');
insert into REFCTR (CODCTR, FULLNAME, NAME, CAPITAL, TELCODE)
    values ('JPN', 'Япония', 'Япония', 'Токио', '+81');
commit;
GO

/***  Добавление регионов  **/

/* Россия */

INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '01', 'МАЙКОП', 'Республика Адыгея (Адыгея)', '86175', '352700');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '02', 'ГОРНО-АЛТАЙСК', 'Республика Алтай', '38541', '659700');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '03', 'УФА', 'Республика Башкортостан', '3472', '450000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '04', 'УЛАН-УДЭ', 'Республика Бурятия', '30122', '670000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '05', 'МАХАЧКАЛА', 'Республика Дагестан', '872', '367000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '06', 'НАЗРАНЬ', 'Ингушская Республика', '87134', '366720');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '07', 'НАЛЬЧИК', 'Кабардино-Балкарская Республика', '86622', '360000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '08', 'ЭЛИСТА', 'Республика Калмыкия - Хальмг Тангч', '84722', '358000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '09', 'ЧЕРКЕССК', 'Карачаево-Черкесская Республика', '86571', '357100');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '10', 'ПЕТРОЗАВОДСК', 'Республика Карелия', '81422', '185000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '11', 'СЫКТЫВКАР', 'Республика Коми', '82122', '168000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '12', 'ЙОШКАР-ОЛА', 'Республика Марий Эл', '83622', '424000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '13', 'САРАНСК', 'Республика Мордовия', '834', '430000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '14', 'ЯКУТСК', 'Республика Саха (Якутия)', '41122', '677000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '15', 'ВЛАДИКАВКАЗ', 'Республика Северная Осетия', '86722', '362000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '16', 'КАЗАНЬ', 'Республика Татарстан (Татарстан)', '8432', '420000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '17', 'КЫЗЫЛ', 'Республика Тыва', '39422', '667000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '18', 'ИЖЕВСК', 'Удмуртская Республика', '3412', '426000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '19', 'АБАКАН', 'Республика Хакасия', '39172', '662600');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '20', 'ГРОЗНЫЙ', 'Чеченская Республика', '87122', '364000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '21', 'ЧЕБОКСАРЫ', 'Чувашская Республика-Чаваш республики', '8352', '429000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '22', 'БАРНАУЛ', 'Алтайский край', '3852', '656000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '23', 'КРАСНОДАР', 'Краснодарский край', '8612', '350000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '24', 'КРАСНОЯРСК', 'Красноярский край', '3912', '660000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '25', 'ВЛАДИВОСТОК', 'Приморский край', '42322', '690000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '26', 'СТАВРОПОЛЬ', 'Ставропольский край', '86522', '355000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '27', 'ХАБАРОВСК', 'Хабаровский край', '42100', '680000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '28', 'БЛАГОВЕЩЕНСК', 'Амурская область', '41622', '675000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '29', 'АРХАНГЕЛЬСК', 'Архангельская область', '81822', '163000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '30', 'АСТРАХАНЬ', 'Астраханская область', '85100', '414000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '31', 'БЕЛГОРОД', 'Белгородская область', '07222', '308000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '32', 'БРЯНСК', 'Брянская область', '08322', '241000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '33', 'ВЛАДИМИР', 'Владимирская область', '09222', '600000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '34', 'ВОЛГОГРАД', 'Волгоградская область', '8442', '400000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '35', 'ВОЛОГДА', 'Вологодская область', '81722', '160000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '36', 'ВОРОНЕЖ', 'Воронежская область', '0732', '394000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '37', 'ИВАНОВО', 'Ивановская область', '09322', '153000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '38', 'ИРКУТСК', 'Иркутская область', '3952', '664000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '39', 'КАЛИНИНГРАД', 'Калининградская область', '01122', '236000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '40', 'КАЛУГА', 'Калужская область', '08422', '248000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '41', 'ПЕТРОПАВЛОВСК-КАМЧАТСКИЙ', 'Камчатская область', '41522', '684000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '42', 'КЕМЕРОВО', 'Кемеровская область', '3842', '650000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '43', 'КИРОВ', 'Кировская область', '8332', '610000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '44', 'КОСТРОМА', 'Костромская область', '09422', '156000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '45', 'КУРГАН', 'Курганская область', '35222', '640000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '46', 'КУРСК', 'Курская область', '07122', '305000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '47', 'САНКТ-ПЕТЕРБУРГ', 'Ленинградская область', '812', '190000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '48', 'ЛИПЕЦК', 'Липецкая область', '0742', '398000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '49', 'МАГАДАН', 'Магаданская область', '41300', '685000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '50', 'МОСКВА', 'Московская область', '095', '120000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '51', 'МУРМАНСК', 'Мурманская область', '815', '183000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '52', 'НИЖНИЙ НОВГОРОД', 'Нижегородская область', '8312', '603000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '53', 'НОВГОРОД ВЕЛИКИЙ', 'Новгородская область', '81600', '173000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '54', 'НОВОСИБИРСК', 'Новосибирская область', '3832', '630000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '55', 'ОМСК', 'Омская область', '3812', '644000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '56', 'ОРЕНБУРГ', 'Оренбургская область', '35322', '460000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '57', 'ОРЕЛ', 'Орловская область', '08600', '302000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '58', 'ПЕНЗА', 'Пензенская область', '8412', '440000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '59', 'ПЕРМЬ', 'Пермский край', '3422', '614000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '60', 'ПСКОВ', 'Псковская область', '81122', '182000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '61', 'РОСТОВ-НА-ДОНУ', 'Ростовская область', '8632', '344000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '62', 'РЯЗАНЬ', 'Рязанская область', '0912', '390000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '63', 'САМАРА', 'Самарская область', '8462', '443000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '64', 'САРАТОВ', 'Саратовская область', '8452', '410000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '65', 'ЮЖНО-САХАЛИНСК', 'Сахалинская область', '42422', '693000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '66', 'ЕКАТЕРИНБУРГ', 'Свердловская область', '3432', '620000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '67', 'СМОЛЕНСК', 'Смоленская область', '08122', '214000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '68', 'ТАМБОВ', 'Тамбовская область', '07522', '392000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '69', 'ТВЕРЬ', 'Тверская область', '08222', '170000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '70', 'ТОМСК', 'Томская область', '38222', '634000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '71', 'ТУЛА', 'Тульская область', '0872', '300000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '72', 'ТЮМЕНЬ', 'Тюменская область', '3452', '625000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '73', 'УЛЬЯНОВСК', 'Ульяновская область', '84222', '432000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '74', 'ЧЕЛЯБИНСК', 'Челябинская область', '3512', '454000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '75', 'ЧИТА', 'Читинская область', '30222', '672000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '76', 'ЯРОСЛАВЛЬ', 'Ярославская область', '08522', '150000');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '79', 'БИРОБИДЖАН', 'Еврейская автономная область', '42622', '682200');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG, PHONE, IND)
 VALUES ('RUS', '80', 'АНАДЫРЬ', 'Чукотский автономный огруг', NULL, '686710');

/* Соединенные штаты Америки */

INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('USA', 'AL', 'MONTGOMERY', 'Alabama');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('USA', 'AK', 'JUNEAU', 'Alaska');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'AZ', 'PHOENIX', 'Arizona');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'AR', 'LITTLE ROCK', 'Arkanzas');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'CA', 'SACRAMENTO', 'California');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'CO', 'DENVER', 'Colorado');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'CT', 'HARTFORD', 'Connecticut');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'DE', 'DOVER', 'Delaware');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'FL', 'TALLAHASSEE', 'Florida');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'GA', 'ATLANTA', 'Georgia');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'HI', 'HONOLULU', 'Hawaii');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'ID', 'BOISE', 'Idaho');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'IL', 'SPRINGFIELD', 'Illinois');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'IN', 'INDIANAPOLIS', 'Indiana');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'IA', 'DES MOINES', 'Iowa');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'KS', 'TOPEKA', 'Kansas');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'KY', 'FRANKFORT', 'Kentucky');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'LA', 'BATON ROUGE', 'Louisiana');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'ME', 'AUGUSTA', 'Maine');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'MD', 'ANNAPOLIS', 'Maryland');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'MA', 'BOSTON', 'Massachusetts');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'MI', 'LANSING', 'Michigan');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'MN', 'ST. PAUL', 'Minnesota');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'MS', 'JACKSON', 'Mississippi');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'MO', 'JEFFERSON CITY', 'Missouri');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'MT', 'HELENA', 'Montana');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'NE', 'LINCOLN', 'Nebraska');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'NV', 'CARSON CITY', 'Nevada');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'NH', 'CONCORD', 'New Hampshire');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'NJ', 'TRENTON', 'New Jersey');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'NM', 'SANTA FE', 'New Mexico');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'NY', 'ALBANY', 'New York');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'NC', 'RALEIGH', 'North Carolina');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'ND', 'BISMARCK', 'North Dakota');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'OH', 'COLUMBUS', 'Ohio');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'OK', 'OKLAHOMA CITY', 'Oklahoma');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'OR', 'SALEM', 'Oregon');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'PI', 'HARRISBURG', 'Pennsylvania');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'RI', 'PROVIDENCE', 'Rhode Island');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'SC', 'COLUMBIA', 'South California');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'SD', 'PIERRE', 'South Dakota');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'YN', 'NASHVILLE', 'Tennessee');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'TX', 'AUSTIN', 'Texas');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'UT', 'SAULT LAKE CITY', 'Utah');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'VT', 'MONTPELIER', 'Vermont');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'VA', 'RICHMOND', 'Virginia');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'WA', 'OLYMPIA', 'Washington');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'WV', 'CHARLESTON', 'West Virginia');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'WI', 'MADISON', 'Wisconsin');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('USA', 'WY', 'CHEYENNE', 'Wyoming');
 
/* Великобритания */ 

INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('GBR', 'EN', 'LONDON', 'England');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('GBR', 'SC', 'EDINBURGH', 'Scotland');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('GBR', 'WL', 'CARDIFF', 'Wales');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG) VALUES
 ('GBR', 'NI', 'BELFAST', 'Northern Ireland');

 -- Антигуа и Барбуда

INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('ATG', '01', 'Паргем', 'Сент-Джордж');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('ATG', '02', 'Сент-Джонс', 'Сент-Джон');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('ATG', '03', 'Боланс', 'Сент-Мэри');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('ATG', '04', 'Док Нельсона', 'Сент-Пол');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('ATG', '05', 'Паргем', 'Сент-Петер');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('ATG', '06', 'Карлайл', 'Сент-Филип');

-- Штаты Австралии

INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('AUS', '01', 'Канберра', 'Австралийская столичная территория (ACT)');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('AUS', '02', 'Сидней', 'Новый Южный Уэльс (NSW)');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('AUS', '03', 'Мельбурн', 'Виктория (VIC)');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('AUS', '04', 'Брисбен', 'Квинсленд (QLD)');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('AUS', '05', 'Аделаида', 'Южная Австралия (SA)');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('AUS', '06', 'Перт', 'Западная Австралия (WA)');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('AUS', '07', 'Хобарт', 'Тасмания (TAS)');
INSERT INTO REFREG (CODCTR, CODREG, CENTER, NAMEREG)
 VALUES ('AUS', '08', 'Дарвин', 'Северная территория (NT)');

GO
SET NOCOUNT OFF;
