- Задание 6
- Какие компании совершали перелеты на Boeing

Select distinct name FROM company JOIN trip 
on company.id = trip.company
where plane = 'Boeing'







- Задание 14
- В какие города летал Bruce Willis

SELECT town_to FROM trip JOIN Pass_in_trip
ON trip.id = Pass_in_trip.trip
JOIN passenger 
ON passenger .id = Pass_in_trip.passenger
WHERE name = 'Bruce Willis'







- Задание 29
- Выведите имена пассажиров улетевших в Москву (Moscow) на самолете TU-134

SELECT distinct name FROM passenger JOIN Pass_in_trip
ON passenger .id = Pass_in_trip.passenger
JOIN trip ON Pass_in_trip.trip = trip .id 
WHERE town_to = 'Moscow' and plane = 'TU-134'