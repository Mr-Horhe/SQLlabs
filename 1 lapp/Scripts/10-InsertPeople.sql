USE BestDatabaseBerkoz;
GO

SET NOCOUNT ON;
SET DATEFORMAT dmy;

/**********************************************************/
/**                                                      **/
/**                    ������ �����                      **/
/**                                                      **/
/**********************************************************/
/* ���� �������� � ��������� � �������� ��� ������ ��������� INSERT */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�������', '�������������', '�������', '01.12.1961', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('���������', '�������������', '������', '07.01.1960', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�����', '�������������', '�������', '30.08.1991', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�������', '�������������', '������', '21.02.1990', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('����', '�������', '������', '02.08.1959', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�����', '��������', '������', '08.08.1990', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('������', '����������', '����������', '01.07.1960', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�����', '����������', '���������', '11.11.1971', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�����', '����������', '��������', '23.03.1991', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('������', '���������', '��������', '02.02.1973', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('��������', '����������', '�������', '04.09.1974', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�����', '������������', '�������', '24.09.1993', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('������', '����������', '������', '13.10.1975', '1');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('������', '����������', '�����', '06.01.1974', '0');
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�����', '����������', '������', '18.10.1994', '1');

/* ���� �������� � ��������� � �������� � ��������� INSERT */
/******** ����� ********/
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('����', '���������', '������', '01.01.1941', '1');
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('����', '���������', '������', '01.01.1942', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '���������' AND NAME3 = '������'));
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�������', '����������', '�������', '01.01.1940', '0');
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('���������', '����������', '�������', '01.01.1946', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '�������'
      AND BIRTHDAY = '01.01.1940'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '��������', '�������', '01.01.1969', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '���������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '���������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('�������', '����������', '�������', '01.01.1967', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '����������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '�������'
      AND BIRTHDAY = '01.01.1940'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������')    );
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('������', '����������', '�������', '13.12.1988', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '�������'
      AND BIRTHDAY = '01.01.1967'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('������', '����������', '�������', '03.08.1990', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '�������'
      AND BIRTHDAY = '01.01.1967'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('����', '����������', '�������', '01.01.1996', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '�������'
      AND BIRTHDAY = '01.01.1967'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('���������', '����������', '�������', '04.11.1994', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '�������'
      AND BIRTHDAY = '01.01.1967'));
/******** ����� ********/
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�������', '����������', '������', '15.09.1913', '0');
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('�����', '�������������', '����������', '02.02.1915', '1', NULL,  NULL,
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '������'));
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('������', '�������������', '������', '23.01.1930', '0', NULL,  NULL);
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('������', '��������', '����������', '07.12.1939', '1', NULL,  NULL,
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '�������������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '�������������', '������', '05.08.1960', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '�������������' AND NAME3 = '����������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('������', '�����������', '�������', '01.03.1963', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '��������' AND NAME3 = '����������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '�������������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '�������������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('����', '��������', '������', '20.11.1986', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '�����������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '�������������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '��������', '������', '14.06.1989', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '�����������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '�������������' AND NAME3 = '������'));
/******** ����� ********/
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('����', '�������������', '�������', '11.08.1940', '0');
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('������', '��������', '��������', '03.03.1943', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '�������������' AND NAME3 = '�������'));
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�����', '��������', '������', '21.02.1939', '0');
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('�����', '����������', '�������', '02.12.1941', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�������', '��������', '�������', '15.06.1960', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '��������' AND NAME3 = '��������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '�������������' AND NAME3 = '�������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('�����', '���������', '�������', '01.03.1961', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '����������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '��������' AND NAME3 = '�������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('����', '����������', '�������', '22.10.1981', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '���������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '��������' AND NAME3 = '�������'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('���������', '����������', '��������', '14.06.1989', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '���������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '��������' AND NAME3 = '�������'));
/******** ����� ********/
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('��������', '����������', '����������', '04.03.1965', '0');
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('���������', '���������', '������', '17.02.1967', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '����������' AND NAME3 = '����������'));
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('������', '���������', '�������', '16.08.1968', '0');
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�����', '������������', '�����������', '29.11.1968', '1');
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�������', '�����������', '����������', '13.04.1985', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '���������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '����������' AND NAME3 = '����������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('��������', '���������', '��������', '11.05.1988', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '������������' AND NAME3 = '�����������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '���������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '�����������' AND NAME3 = '����������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('���������', '����������', '����������', '20.08.2006', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '���������' AND NAME3 = '��������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '�����������' AND NAME3 = '����������'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�������', '����������', '�����������', '20.08.2006', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '���������' AND NAME3 = '��������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '�����������' AND NAME3 = '����������'));
/******** ����� ********/
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�����', '��������', '������', '08.08.1930', '0');
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('�����', '������������', '�������', '10.12.1933', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '������'));
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�������', '���������', '������', '11.11.1934', '0');
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('�����', '����������', '�������', '01.01.1937', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '���������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '��������', '������', '14.05.1954', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '������������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('���������', '����������', '�������', '09.07.1959', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '����������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '���������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('����', '��������', '������', '07.06.1979', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '����������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '������'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('��������', '��������', '�������', '06.05.1984', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '����������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '��������', '������', '07.06.1979', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '����������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '������'));
/******** ����� ********/
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('��������', '��������', '����������', '03.02.1928', '0');
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('���������', '��������', '������', '12.10.1929', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '��������' AND NAME3 = '����������'));
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�������', '��������', '�����', '01.09.1930', '0');
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('���������', '��������', '������', '01.04.1932', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '��������' AND NAME3 = '�����'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�������', '�����������', '�����', '12.08.1950', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '��������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '��������' AND NAME3 = '����������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('���������', '����������', '������', '03.10.1955', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '��������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '��������' AND NAME3 = '�����'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '�����������' AND NAME3 = '�����'));
/* ��� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('��������', '����������', '�����', '03.09.1979', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '����������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '�����������' AND NAME3 = '�����'));
/******** ����� ********/
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('���������', '����������', '������', '15.02.1958', '0');
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('����', '����������', '��������', '11.05.1957', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '����������' AND NAME3 = '������'));
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�������', '�������', '��������', '01.12.1955', '0');
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('������', '����������', '�������', '28.03.1952', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '�������' AND NAME3 = '��������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '�������������', '������', '12.05.1969', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '����������' AND NAME3 = '��������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '����������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('�����', '����������', '���������', '05.05.1973', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '����������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '�������' AND NAME3 = '��������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '�������������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '��������', '������', '28.03.1989', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '����������' AND NAME3 = '���������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '�������������' AND NAME3 = '������'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('����', '��������', '�������', '07.06.1994', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '����������' AND NAME3 = '���������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '�������������' AND NAME3 = '������'));
/******** ����� ********/
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('���������', '��������', '���������', '09.07.1951', '1');
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('����', '���������', '������', '24.09.1952', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '��������' AND NAME3 = '���������'));
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('������', '����������', '������', '12.12.1950', '0');
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('����', '����������', '��������', '03.02.1950', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '����������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('����', '�������', '�������', '09.01.1977', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '��������' AND NAME3 = '���������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '���������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('�����', '���������', '������', '01.04.1975', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '����������' AND NAME3 = '��������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '����������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '�������' AND NAME3 = '�������'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('����������', '���������', '�������', '03.05.2000', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '�������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '���������' AND NAME3 = '������'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('���������', '���������', '�������', '11.07.2002', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '�������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '���������' AND NAME3 = '������'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '���������', '�������', '12.12.2005', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '�������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '���������' AND NAME3 = '������'));
/******** ����� ********/
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('���������', '�����������', '�����', '12.01.1950', '0');
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('�����', '���������', '������', '25.03.1948', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '�����������' AND NAME3 = '�����'));
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('������', '�������������', '������', '30.07.1949', '0');
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('��������', '�������������', '�������', '14.01.1950', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '�������������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('��������', '�������������', '�����', '05.06.1969', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '���������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '�����������' AND NAME3 = '�����'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('��������', '����������', '������', '01.03.1963', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '�������������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '������' AND NAME2 = '�������������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '�������������' AND NAME3 = '�����'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('������', '������������', '�����', '06.03.1987', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '����������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '�������������' AND NAME3 = '�����'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('��������', '������������', '������', '14.06.1989', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '����������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '�������������' AND NAME3 = '�����'));
/******** ����� ********/
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('�������', '���������', '������', '10.07.1936', '0');
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('�����', '����������', '�������', '08.04.1939', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '���������' AND NAME3 = '������'));
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('����', '����������', '������', '11.09.1940', '0');
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('��������', '���������', '�������', '12.03.1943', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '����������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�������', '����������', '������', '07.03.1969', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '����������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '���������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('��������', '��������', '�������', '09.04.1972', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '���������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '����������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�������', '����������', '������', '06.04.2000', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '��������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '����������', '������', '05.01.1999', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '��������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '������'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('����', '����������', '�������', '05.01.1999', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '��������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '����������' AND NAME3 = '������'));
/******** ����� ********/
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('����', '��������', '�������', '14.05.1960', '0');
/* ������� �� ����� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('���������', '��������', '�����������', '25.06.1965', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '��������' AND NAME3 = '�������'));
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX)
  VALUES ('����', '����������', '��������', '06.10.1955', '0');
/* ������� �� ����� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODOTHERHALF)
  VALUES ('���������', '���������', '���������', '23.05.1960', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '����������' AND NAME3 = '��������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '��������', '�������', '03.08.1985', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '��������' AND NAME3 = '�����������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '��������' AND NAME3 = '�������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('�������', '���������', '���������', '25.01.1986', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '���������' AND NAME3 = '���������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '����������' AND NAME3 = '��������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '���������', '�������', '14.08.2004', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '���������' AND NAME3 = '���������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������'));
/* ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('����������', '���������', '�������', '14.08.2004', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '���������' AND NAME3 = '���������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������'));
/* ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('��������', '���������', '��������', '05.12.2005', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�������' AND NAME2 = '���������' AND NAME3 = '���������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������'));
/* ����, ����, ���������� ������ � ������ */
/* ������� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�����', '��������', '�������', '03.08.1985', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '���������' AND NAME2 = '��������' AND NAME3 = '�����������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '��������' AND NAME3 = '�������'));
/* ������� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER, CODOTHERHALF)
  VALUES ('��������', '��������', '�������', '09.04.1985', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '���������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '����' AND NAME2 = '����������' AND NAME3 = '������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������'));
/* ���������� ���� */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('�������', '���������', '�������', '11.11.2004', '0',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '��������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������'));
/* ���������� ������ */
INSERT INTO PEOPLE (NAME1, NAME2, NAME3, BIRTHDAY, SEX, CODMOTHER, CODFATHER)
  VALUES ('��������', '���������', '��������', '11.11.2004', '1',
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '��������' AND NAME2 = '��������' AND NAME3 = '�������'),
  (SELECT COD FROM PEOPLE
    WHERE NAME1 = '�����' AND NAME2 = '��������' AND NAME3 = '�������'));

SET NOCOUNT OFF;
GO