-- посмотреть все доступные БД
SHOW DATABASES;

-- подключиться к БД "city" 
USE world; 

-- получить все данные из таблицы city
select * from city;

-- вывести только столбцы с названием стран и населением из таблицы city
select Name, Population from city;

-- получить уникальные значения поля Language из таблицы countrylanguage
select distinct language from countrylanguage;

-- вывести города, где население превышает 5 000 000 человек из таблицы city 
select Name from city where population > 5000000;

-- вывести информацию о конкретном городе - "Лондон" из таблицы city 
select * from city where name = 'London';

-- узнать все официальные языки, где процент говорящих выше 80 % из таблицы countrylanguage
select language from countrylanguage where percentage > 80;

-- узнать все города из Австралии или из России из таблицы city 
select name from city where District Like '%Australia' or 'Russia';

-- узнать все города, которые НЕ находятся в Китае из таблицы city 
select name from city where district not like 'China'; 

-- узнать данные, где язык = Английский или код страны НЕ “CAN” и процент говорящих НИ меньше 50 из таблицы countrylanguage
select * from countrylanguage where (language = 'English' or CountryCode not like 'CAN') and Percentage >= 50;

-- получить данные только определенных языков: Русский и Английский из таблицы countrylanguage 
select * from countrylanguage where (language = 'Russian' or language = 'English');

-- получить все города, населения которых от 1 000 000 до 5 000 000 из таблицы city
select name, population from city where population between 1000000 and 5000000;

-- узнаем все страны с буквами "St" в названии
select district from city where district like '%St%';
