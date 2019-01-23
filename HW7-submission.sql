use sakila;

#1a 
select first_name, last_name from actor;
#1b will alter data to show first and last name from Select, but does not add the data to the new actor_name column
alter table actor add column actor_name varchar(100);

#2a 
Select actor_id, last_name, first_name from actor where first_name = "JOE";

#2b  	
select * from actor where last_name like '%GEN%';

#2c
select last_name, first_name from actor where last_name like '%LI%';

#2d 
select country_id, country from country where country in ("Afghanistan", "China", "Bangladesh");

#3a
alter table actor add column descr blob(200);
#3B
alter table actor drop column descr;
#4a

SELECT last_name, COUNT(1) as count 
FROM actor 
GROUP BY last_name 
ORDER BY count DESC;
#4b
SELECT last_name, COUNT(*) as count 
FROM actor 
GROUP BY last_name 
having count > 1;
#4c
SET SQL_SAFE_UPDATES = 0;
Update actor set first_name ="HARPO"
WHERE first_name = "GROUCHO";
#4d
Update actor set first_name ="HARPO"
WHERE first_name = "GROUCHO";
SET SQL_SAFE_UPDATES = 1;
#5a  In prompt I would do the following:
#$ mysql -u root -p
#mysql>sakila;
#mysql> show tables;
#6a 
Select staff.first_name, staff.last_name, staff.address_id, address.address_id, address.address, address.postal_code 
from staff
 join address
on staff.address_id = address.address_id;
#6b ran into trouble here, I will need a lot of help to get this code working :) 
Select staff.first_name, staff.last_name, staff.staff_id, payment.amount, payment.staff_id
from staff
join payment where payment_date < '2005-12-31 11:59:59'
on staff.staff_id = payment.staff_id;

#6cran into similar wall as above
select film_actor.film_id, film_actor.actor_id, film.film_id, film.title
from film_actor
inner join film
on film_actor.film_id = film.film_id;
#6d 
select film_id from film where title = "HUNCHBACK IMPOSSIBLE";
#439
#
select film_id, count(1) from inventory where film_id = '439';
#6e
Select payment.customer_id, payment.amount, customer.customer_id, customer.first_name, customer.last_name
from payment
join customer
on payment.customer_id = customer.customer_id;



