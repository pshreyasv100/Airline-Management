INSERT INTO airport 
VALUES ('SCN','Saarbrucken Airport','Saarbrucken','Germany',NULL),
('AMD','Sardar Vallabhbhai Airport','India', 'Ahmedabad', 'Gujarat'), 
('SLM','Salem Airport', 'India', 'Kamalapuram', 'Tamil Nadu');



INSERT INTO `airport` 
VALUES ('JAI', 'Sanganeer Airport', 'India', 'Jaipur', 'Rajasthan');



INSERT INTO `airport` 
VALUES ('DEL', 'Indira Gandhi International', 'India', 'Delhi', 'Delhi'), 
('GOI', 'Dabolim Airport', 'India', 'Goa', 'Goa');



INSERT INTO `airport` 
VALUES ('BLR', 'Kempegowda International', 'India', 'Bengaluru', 'Karnataka');

INSERT INTO `airport` (`Code`, `Name`, `Country`, `City`, `State`) VALUES ('CBD', 'Car Nicobar Air force base', 'India', 'Car Nicobar', 'Andaman'), ('HYD', 'Rajiv Gandhi Int\'l airport', 'India', 'Hyderabad', 'Telangana'), ('IXV', 'Along airport', 'India', 'Along', 'Arunachal Pradesh'), ('DIB', 'Mohanbari Air Force Station', 'India', 'Dibrugarh', 'Assam'), ('PAT', 'Lok Nayak Jaiprakash Airport', 'India', 'Patna', 'Bihar'), ('SLV', 'Shimla Airport', 'India', 'Shimla', 'Himachal Pradesh'), ('BOM', 'Chhatrapati Shivaji Int\'l Airport', 'India', 'Mumbai', 'Maharashtra'), ('BBI', 'Biju Patnaik Airport', 'India', 'Bhubaneshwar', 'Orissa'), ('ATQ', 'Raja Sansi Int\'l Airport', 'India', 'Amritsar', 'Punjab'), ('JFK', 'John F Kennedy int\'l airport', 'USA', 'New York', '-');



INSERT INTO `airplane_type` (`type_name`, `max_seats`, `company`) 
VALUES ('747', '200', 'Boeing'), 
('757', '300', 'Boeing'),
('A380', '250', 'Airbus');
INSERT INTO `airplane_type` (`type_name`, `max_seats`, `company`) VALUES ('A340-300', '120', 'Airbus'), ('A340-600', '130', 'Airbus');
INSERT INTO `airplane_type` (`type_name`, `max_seats`, `company`) VALUES ('777', '340', 'Boeing'), ('A350', '145', 'Airbus');




INSERT INTO `airplane` VALUES ('1', '200', '747'), ('2', '250', '757'),('3', '230', 'A380'), ('4', '150', '747'),('5', '300', 'A380'), ('6', '280', 'A380'),  ('7', '100', '747'), ('8', '250', '757'),('9', '190', '757'), ('10', '260', 'A380');
INSERT INTO `airplane` (`id`, `type_name`) VALUES ('11', 'A340-300'), ('12', 'A380'), ('13', 'A340-600'), ('14', '747'), ('15', 'A350'), ('16', '777'), ('17', '757'), ('18', 'A340-300'), ('19', 'A340-600'), ('20', '777');


INSERT INTO `customer` (`fname`, `lname`, `phone_no`, `cust_id`) VALUES ('shardul', 'singh', '9483468064', 'cid1'), ('shreyas', 'patil', '9854354345', 'cid2'), ('shreyas', 'miraj', '6546546546', 'cid3'), ('sidhharth', 'ganesan', '432432466', 'cid4'), ('shreyas', 'ainapur', '3213435354', 'cid5'), ('shruthi', 'shankar', '467898764', 'cid6');
INSERT INTO `customer` (`fname`, `lname`, `phone_no`, `cust_id`) VALUES ('sumukha', 'Prasad', '943243244', 'cid7'), ('hans', 'greuber', '542532434', 'cid8'), ('han', 'solo', '542536763', 'cid16'), ('luke', 'skywalker', '98765678', 'cid9'), ('fun', 'saps', '6549843209', 'cid10'), ('stone', 'shankar', '090990777', 'cid11'), ('wise', 'elli', '5438976000', 'cid12'), ('sharadi', 'saibaba', '4392311123', 'cid13'), ('shibani', 'hegde', '12343546', 'cid14'), ('aggron', 'stonebreak', '9899786667', 'cid15');
INSERT INTO `customer` (`fname`, `lname`, `phone_no`, `cust_id`) VALUES ('mary', 'wattson', '987009877', 'cid17'), ('peter', 'parker', '12309878', 'cid18'), ('jonah', 'jameson', '46587688', 'cid19'), ('sidvin', 'vinay', '8979889777', 'cid20');

INSERT INTO `can_land` (`airport_code`, `airplane_type`) VALUES ('AMD', '747'), ('AMD', '757'), ('BLR', '747'), ('BLR', '757'), ('BLR', 'A380'), ('DEL', '747'), ('DEL', '757'), ('DEL', 'A380'), ('GOI', '747'), ('JAI', '747');
INSERT INTO `can_land` (`airport_code`, `airplane_type`) VALUES ('SCN', '747'), ('SCN', '757'), ('SCN', 'A380'), ('SLM', '747'), ('SLM', '757');
INSERT INTO `can_land` (`airport_code`, `airplane_type`) VALUES ('PAT', '747'), ('PAT', '757'), ('PAT', 'A340-600'), ('PAT', 'A380'), ('BOM', '777'), ('BOM', '747'), ('BOM', '757'), ('BOM', 'A340-300'), ('BOM', 'A340-600'), ('BOM', 'A350'), ('BOM', 'A380'), ('JFK', 'A350'), ('JFK', '747'), ('JFK', '757'), ('JFK', '777'), ('JFK', 'A340-300'), ('JFK', 'A340-600'), ('DIB', 'A350'), ('JFK', 'A380'), ('DIB', '747');



INSERT INTO `flight` (`flight_number`, `airplane_id`) VALUES ('6E12', '1'), ('6E13', '2');
INSERT INTO `flight` (`flight_number`, `airplane_id`) VALUES ('6E24', '4'), ('6E27', '7'), ('6E98', '8'), ('6E90', '9'), ('6E26', '10');
INSERT INTO `flight` (`flight_number`, `airplane_id`) VALUES ('6E300', '3'), ('6E301', '5'), ('6E302', '6'), ('6E305', '11'), ('6E306', '12'), ('6E307', '13'), ('6E310', '14'), ('6E320', '15'), ('6E325', '16'), ('6E330', '17');



INSERT INTO `ticket` (`ticket_id`, `cust_id`, `class`, `amount`, `seat_no`, `date`) VALUES ('tkt2611', 'cid1', 'economy', '2000', '13', '2017-01-26'), ('tkt2612', 'cid2', 'business', '5000', '1', '2017-01-26'), ('tkt0223', 'cid3', 'business', '6000', '4', '2017-02-02'), ('tkt0233', 'cid3', 'economy', '5000', '34', '2017-02-03'), ('tkt2134', 'cid4', 'economy', '1200', '32', '2017-03-21'), ('tkt2135', 'cid5', 'economy', '1200', '31', '2017-03-21'), ('tkt2136', 'cid6', 'business', '6000', '3', '2017-03-21');



INSERT INTO `crew` (`SSN`, `Name`, `Gender`, `Job`, `airplane_id`) VALUES ('e1', 'sharfds', 'M', 'Pilot', '1'), ('e2', 'dharfds', 'M', 'Co-pilot', '1'), ('e3', 'gargi', 'F', 'Stewardess', '1'), ('e4', 'grewal', 'F', 'Pilot', '2'), ('e5', 'grandhi', 'M', 'Co-pilot', '2'), ('e6', 'farah', 'F', 'Pilot', '7'), ('e7', 'maria', 'F', 'Co-pilot', '7');


INSERT INTO `flight_leg` (`flight_number`, `leg_number`, `departure_airport_code`, `departure_time`, `arrival_airport_code`, `arrival_time`) VALUES ('6E12', '1', 'AMD', '11:00:00', 'BLR', '13:00:00'), ('6E12', '2', 'BLR', '14:00:00', 'GOI', '15:30:00');
INSERT INTO `flight_leg` (`flight_number`, `leg_number`, `departure_airport_code`, `departure_time`, `arrival_airport_code`, `arrival_time`) VALUES ('6E13', '1', 'DEL', '09:00:00', 'SCN', '22:00:00'), ('6E24', '1', 'JAI', '02:00:00', 'SLM', '05:00:00');
INSERT INTO `flight_leg` (`flight_number`, `leg_number`, `departure_airport_code`, `departure_time`, `arrival_airport_code`, `arrival_time`) VALUES ('6E26', '1', 'GOI', '15:00:00', 'DEL', '17:00:00'), ('6E27', '1', 'JAI', '12:00:00', 'SLM', '13:25:00'), ('6E90', '1', 'DEL', '16:00:00', 'BLR', '18:30:00'), ('6E98', '1', 'DEL', '14:00:00', 'AMD', '16:00:00'), ('6E98', '2', 'AMD', '17:00:00', 'JAI', '18:00:00');


INSERT INTO `booked_leg` (`ticket_id`, `flight_leg_no`, `flight_no`) VALUES ('tkt0223', '1', '6E12'), ('tkt0223', '2', '6E12'), ('tkt0233', '1', '6E24'), ('tkt2134', '1', '6E24'), ('tkt2135', '1', '6E24'), ('tkt2136', '1', '6E90'), ('tkt2611', '1', '6E90'), ('tkt2612', '1', '6E98'), ('tkt2612', '2', '6E98');



