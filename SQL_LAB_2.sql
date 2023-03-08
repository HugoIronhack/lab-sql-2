use sakila;

#1 Select all the actors with the first name ‘Scarlett’. 

SELECT *   
FROM ACTOR
WHERE first_name = "SCARLETT";  

#2 Select all the actors with the last name ‘Johansson’.

SELECT *    
FROM ACTOR
WHERE last_name = "Johansson";

#3 How many films (movies) are available for rent?

SELECT RENTAL_ID from RENTAL; 

SELECT COUNT(DISTINCT film_id) AS Number_of_film_available # Maybe better that way
FROM film;

#4 How many films have been rented?

SELECT INVENTORY_ID from INVENTORY;  #result is 1000 (I'm not sure about that one)

#5 What is the shortest and longest rental period?

SELECT MIN(rental_duration) AS shortest_rental_period, MAX(rental_duration) AS longest_rental_period
FROM film;

#6 What are the shortest and longest movie duration? Name the values max_duration and min_duration.

SELECT MAX(length) AS max_duration, MIN(length) AS min_duration   #question 6
FROM film;

#7 What's the average movie duration? # We are europeans, there's no reason to call a film a "movie" :)

SELECT  AVG(length) 
FROM film AS average_film_duration;

#8 What's the average movie duration expressed in format (hours, minutes)?

declare @115 datetime
Set @Existingdate=GETDATE()
Select CONVERT(varchar,@115,24) as [hh:mm:ss];

SELECT cast(115(hour, GETDATE()) as varchar) + ':' + cast(DATEPART(minute, GETDATE()) as varchar);

SELECT AVG(length), FORMAT(GETDATE(),'hh:mm')
FROM film AS average_film_duration;

SELECT AVG(length) CONVERT(VARCHAR(8),getdate(),115)
FROM film AS average_film_duration;

SELECT  AVG(length) from film;  

SELECT AVG(length) ,FORMAT (getdate(), 'hh:mm:ss tt') AS date
FROM film;

#9 How many movies longer than 3 hours? 

SELECT *
FROM film
WHERE length >=180;

SELECT COUNT(*)  # works too
FROM film
WHERE length >=180;

# 10 Get the name and email formatted. Example: Mary SMITH

SELECT first_name, last_name, email  #I 'am not sure if I answer the question
FROM customer;

# 11 What's the length of the longest film title?

SELECT MAX(LENGTH(TITLE)) AS longest_film_title  # answer is 27
FROM film;



