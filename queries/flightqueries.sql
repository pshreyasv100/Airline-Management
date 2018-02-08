

//Selects all the flights going abroad from india
SELECT flight_number from flight_leg where departure_airport_code in (select code from airport where country='India'



//view all airplanes alongwith airplane types
"SELECT * from airplane,airplane_type where airplane.type_name=airplane_type.type_name


//average cost of a ticket from a source airport
SELECT avg(amount) as y from ticket
where ticket_id in (select ticket_id from booked_leg 
     where flight_no in (select flight_number from flight_leg 
         where departure_airport_code in 
         	(select CODE from airport where city = '$ip_city')
         )
     );


//Gives customer details based on a custom user input
SELECT * from customer, ticket, booked_leg where ticket.ticket_id=booked_leg.ticket_id and customer.cust_id=ticket.cust_id and customer.fname='$ip_fname';
//list all customers
SELECT * from customer



//list number of flights outgoing from a given airport
select count(*) as x
from flight_leg,airport
where departure_airport_code=CODE
and city='$ip_city'
//List details of all flights and legs
SELECT * from flight,flight_leg where flight.flight_number=flight_leg.flight_number;



//List all international flights
SELECT airport.name from airport where code in (select departure_airport_code from flight_leg where departure_airport_code in (select code from airport where country='India') and arrival_airport_code not in (select code from airport where country='$ip_country'))";


//give full ticket and customer details of any travelling customer
SELECT * from customer, ticket, booked_leg
where ticket.ticket_id=booked_leg.ticket_id
and customer.cust_id=ticket.cust_id"




//declared an emergency by a passenger on a given date list all the airports that the plane can land at.
SELECT DISTINCT airport.Name from airport WHERE airport.Code 
IN(SELECT can_land.airport_code from can_land WHERE airplane_type=
	(SELECT airplane.type_name from airplane WHERE airplane.id=
		(SELECT flight.airplane_id from flight WHERE flight_number=
			(SELECT booked_leg.flight_no from booked_leg WHERE booked_leg.ticket_id=
				(SELECT ticket.ticket_id from ticket WHERE ticket.cust_id=
					(SELECT customer.cust_id from customer WHERE fname='shreyas' and lname='miraj') and ticket.date=2017-02-03)))))


//check for frequent flyers, here its more than 3 flights
SELECT fname,lname from customer NATURAL JOIN ticket GROUP BY lname HAVING COUNT(ticket_id)>3


//All passengers travelling in business class
SELECT fname, lname from customer NATURAL JOIN ticket  where 
class='business'


//Total revenue from an airport
SELECT airport.Name, sum(ticket.amount) from 
airport,ticket,flight_leg WHERE airport.Code 
IN (SELECT flight_leg.departure_airport_code WHERE flight_leg.flight_number 
		IN (SELECT booked_leg.flight_no from booked_leg NATURAL JOIN ticket))
			GROUP BY airport.Name