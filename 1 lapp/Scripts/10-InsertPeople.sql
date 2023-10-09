USE BestDatabaseBerkoz;
GO

SET NOCOUNT ON;
SET DATEFORMAT dmy;

/**********************************************************/
/**                                                      **/
/**                    яОХЯНЙ КЧДЕИ                      **/
/**                                                      **/
/**********************************************************/
/* бБНД ЯБЕДЕМХИ Н ПНДХРЕКЪУ Х ЯСОПСЦЮУ ОПХ ОНЛНЫХ НОЕПЮРНПЮ INSERT */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('мюрюкэъ', 'юкейяюмдпнбмю', 'хбюмнбю', '01.12.1961', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('юкейяюмдп', 'юкейяюмдпнбхв', 'хбюмнб', '07.01.1960', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('хпхмю', 'юкейяюмдпнбмю', 'хбюмнбю', '30.08.1991', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('мхйнкюи', 'юкейяюмдпнбхв', 'хбюмнб', '21.02.1990', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('нкец', 'чпэебхв', 'цпювеб', '02.08.1959', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('пнлюм', 'нкецнбхв', 'цпювеб', '08.08.1990', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('юкэтхъ', 'псякюмнбмю', 'хапюцхлнбю', '01.07.1960', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('юкхмю', 'ьюлхкэебмю', 'юкэлъьебю', '11.11.1971', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('пнлюм', 'ьюлхкэебхв', 'юкэлъьеб', '23.03.1991', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('люпхмю', 'пнлюмнбмю', 'яютнмнбю', '02.02.1973', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('бкюдхлхп', 'мхйнкюебхв', 'яютнмнб', '04.09.1974', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('юпрел', 'бкюдхлхпнбхв', 'яютнмнб', '24.09.1993', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('цюкхмю', 'ебцемэебмю', 'кебхмю', '13.10.1975', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('лхуюхк', 'лхуюикнбхв', 'кебхм', '06.01.1974', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('хпхмю', 'лхуюикнбмю', 'кебхмю', '18.10.1994', '1');

/* бБНД ЯБЕДЕМХИ Н ПНДХРЕКЪУ Х ЯСОПСЦЮУ Б НОЕПЮРНПЕ INSERT */
/******** яЕЛЭЪ ********/
/* аЮАСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('мхмю', 'яепцеебмю', 'ьютпюм', '01.01.1941', '1');
/* дЕДСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('хбюм', 'юмрнмнбхв', 'ьютпюм', '01.01.1942', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхмю' AND NAME2 = 'яепцеебмю' AND NAME3 = 'ьютпюм'));
/* дЕДСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('мхйнкюи', 'мхйнкюебхв', 'охмрепю', '01.01.1940', '0');
/* аЮАСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('опюяйнбэъ', 'яреоюмнбмю', 'охмрепю', '01.01.1946', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхйнкюи' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'охмрепю'
      AND BIRTHDAY = '01.01.1940'));
/* лЮРЭ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('хпхмю', 'хбюмнбмю', 'охмрепю', '01.01.1969', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхмю' AND NAME2 = 'яепцеебмю' AND NAME3 = 'ьютпюм'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хбюм' AND NAME2 = 'юмрнмнбхв' AND NAME3 = 'ьютпюм'));
/* нРЕЖ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('мхйнкюи', 'мхйнкюебхв', 'охмрепю', '01.01.1967', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'опюяйнбэъ' AND NAME2 = 'яреоюмнбмю' AND NAME3 = 'охмрепю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхйнкюи' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'охмрепю'
      AND BIRTHDAY = '01.01.1940'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хпхмю' AND NAME2 = 'хбюмнбмю' AND NAME3 = 'охмрепю')    );
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('яепцеи', 'мхйнкюебхв', 'охмрепю', '13.12.1988', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хпхмю' AND NAME2 = 'хбюмнбмю' AND NAME3 = 'охмрепю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхйнкюи' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'охмрепю'
      AND BIRTHDAY = '01.01.1967'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('юмдпеи', 'мхйнкюебхв', 'охмрепю', '03.08.1990', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хпхмю' AND NAME2 = 'хбюмнбмю' AND NAME3 = 'охмрепю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхйнкюи' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'охмрепю'
      AND BIRTHDAY = '01.01.1967'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('чкхъ', 'мхйнкюебмю', 'охмрепю', '01.01.1996', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хпхмю' AND NAME2 = 'хбюмнбмю' AND NAME3 = 'охмрепю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхйнкюи' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'охмрепю'
      AND BIRTHDAY = '01.01.1967'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('ейюрепхмю', 'мхйнкюебмю', 'охмрепю', '04.11.1994', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хпхмю' AND NAME2 = 'хбюмнбмю' AND NAME3 = 'охмрепю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхйнкюи' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'охмрепю'
      AND BIRTHDAY = '01.01.1967'));
/******** яЕЛЭЪ ********/
/* дЕДСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('бюяхкхи', 'длхрпхебхв', 'оюмйнб', '15.09.1913', '0');
/* аЮАСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('люпхъ', 'юкейяюмдпнбмю', 'йпемдекебю', '02.02.1915', '1', NULL,  NULL,
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюяхкхи' AND NAME2 = 'длхрпхебхв' AND NAME3 = 'оюмйнб'));
/* дЕДСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('лхуюхк', 'юкейяюмдпнбхв', 'леьйнб', '23.01.1930', '0', NULL,  NULL);
/* аЮАСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('онкхмю', 'оерпнбмю', 'йнвецюпнбю', '07.12.1939', '1', NULL,  NULL,
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'лхуюхк' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'леьйнб'));
/* нРЕЖ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('хцнпэ', 'юкейяюмдпнбхв', 'оюмйнб', '05.08.1960', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'люпхъ' AND NAME2 = 'юкейяюмдпнбмю' AND NAME3 = 'йпемдекебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюяхкхи' AND NAME2 = 'длхрпхебхв' AND NAME3 = 'оюмйнб'));
/* лЮРЭ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('цюкхмю', 'юмюрнкэебмю', 'оюмйнбю', '01.03.1963', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'онкхмю' AND NAME2 = 'оерпнбмю' AND NAME3 = 'йнвецюпнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'лхуюхк' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'леьйнб'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'оюмйнб'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('нкец', 'хцнпебхв', 'оюмйнб', '20.11.1986', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'цюкхмю' AND NAME2 = 'юмюрнкэебмю' AND NAME3 = 'оюмйнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'оюмйнб'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('пнлюм', 'хцнпебхв', 'оюмйнб', '14.06.1989', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'цюкхмю' AND NAME2 = 'юмюрнкэебмю' AND NAME3 = 'оюмйнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'оюмйнб'));
/******** яЕЛЭЪ ********/
/* дЕДСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('хбюм', 'юкейяюмдпнбхв', 'жберйнб', '11.08.1940', '0');
/* аЮАСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('люпхмю', 'оюбкнбмю', 'жберйнбю', '03.03.1943', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хбюм' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'жберйнб'));
/* дЕДСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('хцнпэ', 'нкецнбхв', 'гюижеб', '21.02.1939', '0');
/* аЮАСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('люпхъ', 'бхйрнпнбмю', 'гюижебю', '02.12.1941', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'нкецнбхв' AND NAME3 = 'гюижеб'));
/* нРЕЖ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('юкейяеи', 'хбюмнбхв', 'жберйнб', '15.06.1960', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'люпхмю' AND NAME2 = 'оюбкнбмю' AND NAME3 = 'жберйнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хбюм' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'жберйнб'));
/* лЮРЭ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('дюпэъ', 'хцнпэебмю', 'гюижебю', '01.03.1961', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'люпхъ' AND NAME2 = 'бхйрнпнбмю' AND NAME3 = 'гюижебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'нкецнбхв' AND NAME3 = 'гюижеб'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юкейяеи' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'жберйнб'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('нкец', 'юкейяеебхв', 'жберйнб', '22.10.1981', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'дюпэъ' AND NAME2 = 'хцнпэебмю' AND NAME3 = 'гюижебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юкейяеи' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'жберйнб'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('ейюрепхмю', 'юкейяеебмю', 'жберйнбю', '14.06.1989', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'дюпэъ' AND NAME2 = 'хцнпэебмю' AND NAME3 = 'гюижебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юкейяеи' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'жберйнб'));
/******** яЕЛЭЪ ********/
/* дЕДСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('цеммюдхи', 'бхрюкэебхв', 'кноюрмхйнб', '04.03.1965', '0');
/* аЮАСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('ейюрепхмю', 'юмдпеебмю', 'кчкхмю', '17.02.1967', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'цеммюдхи' AND NAME2 = 'бхрюкэебхв' AND NAME3 = 'кноюрмхйнб'));
/* дЕДСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('юмдпеи', 'яепцеебхв', 'бнкнянб', '16.08.1968', '0');
/* аЮАСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('люпхъ', 'бъвеякюбнбмю', 'лхрпнтюмнбю', '29.11.1968', '1');
/* нРЕЖ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('бюяхкхи', 'цеммюдхебхв', 'кноюрмхйнб', '13.04.1985', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'ейюрепхмю' AND NAME2 = 'юмдпеебмю' AND NAME3 = 'кчкхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'цеммюдхи' AND NAME2 = 'бхрюкэебхв' AND NAME3 = 'кноюрмхйнб'));
/* лЮРЭ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('бюяхкхяю', 'юмдпеебмю', 'бнкнянбю', '11.05.1988', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'люпхъ' AND NAME2 = 'бъвеякюбнбмю' AND NAME3 = 'лхрпнтюмнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмдпеи' AND NAME2 = 'яепцеебхв' AND NAME3 = 'бнкнянб'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюяхкхи' AND NAME2 = 'цеммюдхебхв' AND NAME3 = 'кноюрмхйнб'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('юкейяюмдп', 'бюяхкэебхв', 'кноюрмхйнб', '20.08.2006', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюяхкхяю' AND NAME2 = 'юмдпеебмю' AND NAME3 = 'бнкнянбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюяхкхи' AND NAME2 = 'цеммюдхебхв' AND NAME3 = 'кноюрмхйнб'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('рюрэъмю', 'бюяхкэебмю', 'кноюрмхйнбю', '20.08.2006', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюяхкхяю' AND NAME2 = 'юмдпеебмю' AND NAME3 = 'бнкнянбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюяхкхи' AND NAME2 = 'цеммюдхебхв' AND NAME3 = 'кноюрмхйнб'));
/******** яЕЛЭЪ ********/
/* дЕДСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('хцнпэ', 'нкецнбхв', 'ьхцюеб', '08.08.1930', '0');
/* аЮАСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('люпхъ', 'бкюдхлхпнбмю', 'ьхцюебю', '10.12.1933', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'нкецнбхв' AND NAME3 = 'ьхцюеб'));
/* дЕДСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('бюкепхи', 'яепцеебхв', 'цюкйхм', '11.11.1934', '0');
/* аЮАСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('хпхмю', 'бюкепэебмю', 'цюкйхмю', '01.01.1937', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюкепхи' AND NAME2 = 'яепцеебхв' AND NAME3 = 'цюкйхм'));
/* нРЕЖ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('хцнпэ', 'хцнпебхв', 'ьхцюеб', '14.05.1954', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'люпхъ' AND NAME2 = 'бкюдхлхпнбмю' AND NAME3 = 'ьхцюебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'нкецнбхв' AND NAME3 = 'ьхцюеб'));
/* лЮРЭ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('ейюрепхмю', 'бюкепэебмю', 'цюкйхмю', '09.07.1959', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хпхмю' AND NAME2 = 'бюкепэебмю' AND NAME3 = 'цюкйхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюкепхи' AND NAME2 = 'яепцеебхв' AND NAME3 = 'цюкйхм'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'хцнпебхв' AND NAME3 = 'ьхцюеб'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('хкэъ', 'хцнпебхв', 'ьхцюеб', '07.06.1979', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'ейюрепхмю' AND NAME2 = 'бюкепэебмю' AND NAME3 = 'цюкйхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'хцнпебхв' AND NAME3 = 'ьхцюеб'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('бхйрнпхъ', 'хцнпебмю', 'ьхцюебю', '06.05.1984', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'ейюрепхмю' AND NAME2 = 'бюкепэебмю' AND NAME3 = 'цюкйхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'хцнпебхв' AND NAME3 = 'ьхцюеб'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('юпрел', 'хцнпебхв', 'ьхцюеб', '07.06.1979', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'ейюрепхмю' AND NAME2 = 'бюкепэебмю' AND NAME3 = 'цюкйхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'хцнпебхв' AND NAME3 = 'ьхцюеб'));
/******** яЕЛЭЪ ********/
/* дЕДСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('цеммюдхи', 'оюбкнбхв', 'бюкемрхмнб', '03.02.1928', '0');
/* аЮАСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('бюкемрхмю', 'оерпнбмю', 'оюйхмю', '12.10.1929', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'цеммюдхи' AND NAME2 = 'оюбкнбхв' AND NAME3 = 'бюкемрхмнб'));
/* дЕДСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('бюяхкхи', 'хбюмнбхв', 'осрхм', '01.09.1930', '0');
/* аЮАСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('люпцюпхрю', 'хбюмнбмю', 'осрхмю', '01.04.1932', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюяхкхи' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'осрхм'));
/* нРЕЖ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('бюяхкхи', 'цеммюдхебхв', 'осрхм', '12.08.1950', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюкемрхмю' AND NAME2 = 'оерпнбмю' AND NAME3 = 'оюйхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'цеммюдхи' AND NAME2 = 'оюбкнбхв' AND NAME3 = 'бюкемрхмнб'));
/* лЮРЭ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('люпцюпхрю', 'бюяхкэебмю', 'осрхмю', '03.10.1955', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'люпцюпхрю' AND NAME2 = 'хбюмнбмю' AND NAME3 = 'осрхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюяхкхи' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'осрхм'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюяхкхи' AND NAME2 = 'цеммюдхебхв' AND NAME3 = 'осрхм'));
/* яШМ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('бкюдхлхп', 'бюяхкэебхв', 'осрхм', '03.09.1979', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'люпцюпхрю' AND NAME2 = 'бюяхкэебмю' AND NAME3 = 'осрхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюяхкхи' AND NAME2 = 'цеммюдхебхв' AND NAME3 = 'осрхм'));
/******** яЕЛЭЪ ********/
/* дЕДСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('юкейяюмдп', 'юкейяеебхв', 'апчйнб', '15.02.1958', '0');
/* аЮАСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('юммю', 'лхуюикнбмю', 'лнпнгнбю', '11.05.1957', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юкейяюмдп' AND NAME2 = 'юкейяеебхв' AND NAME3 = 'апчйнб'));
/* дЕДСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('мхйнкюи', 'чпэебхв', 'гюапндхм', '01.12.1955', '0');
/* аЮАСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('онкхмю', 'бхйрнпнбмю', 'тпнкнбю', '28.03.1952', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхйнкюи' AND NAME2 = 'чпэебхв' AND NAME3 = 'гюапндхм'));
/* нРЕЖ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('хцнпэ', 'юкейяюмдпнбхв', 'апчйнб', '12.05.1969', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юммю' AND NAME2 = 'лхуюикнбмю' AND NAME3 = 'лнпнгнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юкейяюмдп' AND NAME2 = 'юкейяеебхв' AND NAME3 = 'апчйнб'));
/* лЮРЭ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('хпхмю', 'мхйнкюебмю', 'гюапндхмю', '05.05.1973', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'онкхмю' AND NAME2 = 'бхйрнпнбмю' AND NAME3 = 'тпнкнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхйнкюи' AND NAME2 = 'чпэебхв' AND NAME3 = 'гюапндхм'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'апчйнб'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('хцнпэ', 'хцнпебхв', 'апчйнб', '28.03.1989', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хпхмю' AND NAME2 = 'мхйнкюебмю' AND NAME3 = 'гюапндхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'апчйнб'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('юммю', 'хцнпебмю', 'апчйнбю', '07.06.1994', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хпхмю' AND NAME2 = 'мхйнкюебмю' AND NAME3 = 'гюапндхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хцнпэ' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'апчйнб'));
/******** яЕЛЭЪ ********/
/* аЮАСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('бюкемрхмю', 'оерпнбмю', 'онцндюебю', '09.07.1951', '1');
/* дЕДСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('чпхи', 'яепцеебхв', 'яхкюеб', '24.09.1952', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюкемрхмю' AND NAME2 = 'оерпнбмю' AND NAME3 = 'онцндюебю'));
/* дЕДСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('дюмххк', 'длхрпхебхв', 'люйееб', '12.12.1950', '0');
/* аЮАСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('юммю', 'бюяхкэебмю', 'яюбвемйн', '03.02.1950', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'дюмххк' AND NAME2 = 'длхрпхебхв' AND NAME3 = 'люйееб'));
/* лЮРЭ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('чкхъ', 'чпэебмю', 'яхкюебю', '09.01.1977', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бюкемрхмю' AND NAME2 = 'оерпнбмю' AND NAME3 = 'онцндюебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'чпхи' AND NAME2 = 'яепцеебхв' AND NAME3 = 'яхкюеб'));
/* нРЕЖ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('юмрнм', 'дюмхкнбхв', 'люйееб', '01.04.1975', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юммю' AND NAME2 = 'бюяхкэебмю' AND NAME3 = 'яюбвемйн'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'дюмххк' AND NAME2 = 'длхрпхебхв' AND NAME3 = 'люйееб'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'чкхъ' AND NAME2 = 'чпэебмю' AND NAME3 = 'яхкюебю'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('юкейяюмдпю', 'юмрнмнбмю', 'люйеебю', '03.05.2000', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'чкхъ' AND NAME2 = 'чпэебмю' AND NAME3 = 'яхкюебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмрнм' AND NAME2 = 'дюмхкнбхв' AND NAME3 = 'люйееб'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('юмюярюяхъ', 'юмрнмнбмю', 'люйеебю', '11.07.2002', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'чкхъ' AND NAME2 = 'чпэебмю' AND NAME3 = 'яхкюебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмрнм' AND NAME2 = 'дюмхкнбхв' AND NAME3 = 'люйееб'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('дюпэъ', 'юмрнмнбмю', 'люйеебю', '12.12.2005', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'чкхъ' AND NAME2 = 'чпэебмю' AND NAME3 = 'яхкюебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмрнм' AND NAME2 = 'дюмхкнбхв' AND NAME3 = 'люйееб'));
/******** яЕЛЭЪ ********/
/* дЕДСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('юкейяюмдп', 'цпхцнпэебхв', 'кебхм', '12.01.1950', '0');
/* аЮАСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('люпхъ', 'хняхтнбмю', 'кебхмю', '25.03.1948', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юкейяюмдп' AND NAME2 = 'цпхцнпэебхв' AND NAME3 = 'кебхм'));
/* дЕДСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('лхуюхк', 'юкейяюмдпнбхв', 'осьйхм', '30.07.1949', '0');
/* аЮАСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('яберкюмю', 'юкейяюмдпнбмю', 'осьйхмю', '14.01.1950', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'лхуюхк' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'осьйхм'));
/* нРЕЖ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('бкюдхлхп', 'юкейяюмдпнбхв', 'кебхм', '05.06.1969', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'люпхъ' AND NAME2 = 'хняхтнбмю' AND NAME3 = 'кебхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юкейяюмдп' AND NAME2 = 'цпхцнпэебхв' AND NAME3 = 'кебхм'));
/* лЮРЭ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('бхйрнпхъ', 'лхуюикнбмю', 'кебхмю', '01.03.1963', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'яберкюмю' AND NAME2 = 'юкейяюмдпнбмю' AND NAME3 = 'осьйхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'лхуюхк' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'осьйхм'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бкюдхлхп' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'кебхм'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('йхпхкк', 'бкюдхлхпнбхв', 'кебхм', '06.03.1987', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бхйрнпхъ' AND NAME2 = 'лхуюикнбмю' AND NAME3 = 'кебхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бкюдхлхп' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'кебхм'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('яберкюмю', 'бкюдхлхпнбмю', 'кебхмю', '14.06.1989', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бхйрнпхъ' AND NAME2 = 'лхуюикнбмю' AND NAME3 = 'кебхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'бкюдхлхп' AND NAME2 = 'юкейяюмдпнбхв' AND NAME3 = 'кебхм'));
/******** яЕЛЭЪ ********/
/* дЕДСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('мхйнкюи', 'яепцеебхв', 'оюпьхм', '10.07.1936', '0');
/* аЮАСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('хпхмю', 'мхйнкюебмю', 'оюпьхмю', '08.04.1939', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхйнкюи' AND NAME2 = 'яепцеебхв' AND NAME3 = 'оюпьхм'));
/* дЕДСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('оерп', 'мхйнкюебхв', 'хбюмнб', '11.09.1940', '0');
/* аЮАСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('яберкюмю', 'яепцеебмю', 'хбюмнбю', '12.03.1943', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'оерп' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'хбюмнб'));
/* нРЕЖ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('юкейяеи', 'мхйнкюебхв', 'оюпьхм', '07.03.1969', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хпхмю' AND NAME2 = 'мхйнкюебмю' AND NAME3 = 'оюпьхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мхйнкюи' AND NAME2 = 'яепцеебхв' AND NAME3 = 'оюпьхм'));
/* лЮРЭ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('яберкюмю', 'оерпнбмю', 'оюпьхмю', '09.04.1972', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'яберкюмю' AND NAME2 = 'яепцеебмю' AND NAME3 = 'хбюмнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'оерп' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'хбюмнб'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юкейяеи' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'оюпьхм'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('длхрпхи', 'юкейяеебхв', 'оюпьхм', '06.04.2000', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'яберкюмю' AND NAME2 = 'оерпнбмю' AND NAME3 = 'оюпьхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юкейяеи' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'оюпьхм'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('рхлсп', 'юкейяеебхв', 'оюпьхм', '05.01.1999', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'яберкюмю' AND NAME2 = 'оерпнбмю' AND NAME3 = 'оюпьхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юкейяеи' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'оюпьхм'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('чкхъ', 'юкейяеебмю', 'оюпьхмю', '05.01.1999', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'яберкюмю' AND NAME2 = 'оерпнбмю' AND NAME3 = 'оюпьхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юкейяеи' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'оюпьхм'));
/******** яЕЛЭЪ ********/
/* дЕДСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('хбюм', 'оерпнбхв', 'еплхьхм', '14.05.1960', '0');
/* аЮАСЬЙЮ ОН КХМХХ НРЖЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('юмюярюяхъ', 'хбюмнбмю', 'яепеапъйнбю', '25.06.1965', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хбюм' AND NAME2 = 'оерпнбхв' AND NAME3 = 'еплхьхм'));
/* дЕДСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('хкэъ', 'мхйнкюебхв', 'лспюбэеб', '06.10.1955', '0');
/* аЮАСЬЙЮ ОН КХМХХ ЛЮРЕПХ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('ейюрепхмю', 'юмдпеебмю', 'вепмшьнбю', '23.05.1960', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хкэъ' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'лспюбэеб'));
/* нРЕЖ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('юмрнм', 'хбюмнбхв', 'еплхьхм', '03.08.1985', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмюярюяхъ' AND NAME2 = 'хбюмнбмю' AND NAME3 = 'яепеапъйнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хбюм' AND NAME2 = 'оерпнбхв' AND NAME3 = 'еплхьхм'));
/* лЮРЭ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('мюрюкэъ', 'хкэхмхвмю', 'лспюбэебю', '25.01.1986', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'ейюрепхмю' AND NAME2 = 'юмдпеебмю' AND NAME3 = 'вепмшьнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хкэъ' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'лспюбэеб'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмрнм' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'еплхьхм'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('оюбек', 'юмрнмнбхв', 'еплхьхм', '14.08.2004', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мюрюкэъ' AND NAME2 = 'хкэхмхвмю' AND NAME3 = 'лспюбэебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмрнм' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'еплхьхм'));
/* аПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('йнмярюмрхм', 'юмрнмнбхв', 'еплхьхм', '14.08.2004', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мюрюкэъ' AND NAME2 = 'хкэхмхвмю' AND NAME3 = 'лспюбэебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмрнм' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'еплхьхм'));
/* яЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('яберкюмю', 'юмрнмнбмю', 'еплхьхмю', '05.12.2005', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'мюрюкэъ' AND NAME2 = 'хкэхмхвмю' AND NAME3 = 'лспюбэебю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмрнм' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'еплхьхм'));
/* дЪДЪ, РЕРЪ, ДБНЧПНДМШЕ АПЮРЭЪ Х ЯЕЯРПШ */
/* дЪДЧЬЙЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('юпрел', 'хбюмнбхв', 'еплхьхм', '03.08.1985', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмюярюяхъ' AND NAME2 = 'хбюмнбмю' AND NAME3 = 'яепеапъйнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'хбюм' AND NAME2 = 'оерпнбхв' AND NAME3 = 'еплхьхм'));
/* рЕРСЬЙЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('юмрнмхмю', 'оерпнбмю', 'оюпьхмю', '09.04.1985', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'яберкюмю' AND NAME2 = 'яепцеебмю' AND NAME3 = 'хбюмнбю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'оерп' AND NAME2 = 'мхйнкюебхв' AND NAME3 = 'хбюмнб'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юпрел' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'еплхьхм'));
/* дБНЧПНДМШИ АПЮР */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('ебцемхи', 'юпрелнбхв', 'еплхьхм', '11.11.2004', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмрнмхмю' AND NAME2 = 'оерпнбмю' AND NAME3 = 'оюпьхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юпрел' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'еплхьхм'));
/* дБНЧПНДМЮЪ ЯЕЯРПЮ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('яберкюмю', 'юпрелнбмю', 'еплхьхмю', '11.11.2004', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юмрнмхмю' AND NAME2 = 'оерпнбмю' AND NAME3 = 'оюпьхмю'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = 'юпрел' AND NAME2 = 'хбюмнбхв' AND NAME3 = 'еплхьхм'));

SET NOCOUNT OFF;
GO