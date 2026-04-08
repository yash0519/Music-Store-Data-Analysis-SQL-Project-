use music_data;

-- Q1.who is the senior most employee bases on the job title?
select * from employee
order by levels desc
limit 1;


-- Q2. which countries have the most invoices?
select count(*) as invoice_count,billing_country from invoice
group by billing_country
order by invoice_count desc;


-- Q3. what are top 3 values of total invoice?
select total from invoice
order by total desc limit 3;

-- Q4. which city has the bast customers? We would like  to throw a promotional music festival in the city we made the most money Write a query that returns one city that has the highest sum of invoice totals return both the city name & sum of all invoice totals
select sum(total) as invoice_total , billing_city 
from invoice
group by billing_city
order by invoice_total desc;

-- Q5. Who is the bast customer? the Customer who has spent the most money will be declared the bast customer Write a query that returns the person who spent the most money.
select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total 
from customer 
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc limit 1;

-- Q6. Write a query to return the email, first name, last name, & genre of all Rock Music listeners Return your list ordered alphabatically by gmail starting with a
 select distinct email, first_name, last_name from customer
 join invoice on customer.customer_id = invoice.customer_id
 join invoice_line on invoice.invoice_id = invoice_line.invoice_id
 where track_id IN(
 select track_id from track
 inner join  genre on track.genre_id = genre.genre_id
 where genre.genre_id = 1
 )
 order by email ;

 -- Q7. Let's invite the artists who have write the most rock music in our dataset Write a Query that returns the artist name and total track count of the top 10 rock bands
 select artist.artist_id, artist.name, count(artist.artist_id) as number_of_songs
 from track
 join album on album.album_id = track.album_id
 join artist on artist.artist_id = album.artist_id
 join genre on genre.genre_id = track.genre_id
 where genre.genre_id = 1
 group by artist.artist_id
 order by number_of_songs desc
 limit 10;
 
 
 -- Q8. Return all the track names that have a song length longer than the avrage song length Return the name and milliseconds for each track Order by the song length with the longest songs listed first 
 select name, milliseconds from track
 where milliseconds > (
 select avg(milliseconds) as avg_track_length
 from track
 )
 order by milliseconds desc;

 
-- Q9 Categorize customers based on total spending
select c.customer_id, c.first_name, c.last_name,
sum(i.total) as total_spent,
case 
	when sum(i.total) > 50 then 'High Value'
	when sum(i.total) between 20 and 50 then 'Medium Value'
	else 'Low Value'
end as customer_type
from customer c
join invoice i on c.customer_id = i.customer_id
group by c.customer_id, c.first_name, c.last_name;

