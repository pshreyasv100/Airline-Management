CREATE TABLE AIRPORT ( `Code` VARCHAR(4) NOT NULL , `Name` VARCHAR(50) NOT NULL , `Country` VARCHAR(20) NOT NULL , `City` VARCHAR(20) NOT NULL , `State` VARCHAR(20) NOT NULL , PRIMARY KEY (`Code`));



CREATE TABLE AIRPLANE_TYPE ( `type_name` VARCHAR(15) NOT NULL , `max_seats` INT NOT NULL , `company` VARCHAR(15) NOT NULL , PRIMARY KEY (`type_name`));



CREATE TABLE `airline_v1`.`AIRPLANE` ( `id` INT NOT NULL , `type_name` VARCHAR(15) DEFAULT NULL , PRIMARY KEY (`id`));



CREATE TABLE `airline_v1`.`FLIGHT` ( `flight_number` VARCHAR(6) NOT NULL , `airplane_id` INT NOT NULL );



CREATE TABLE `airline_v1`.`CREW` ( `SSN` VARCHAR(10) NOT NULL , `Name` VARCHAR(20) NOT NULL , `Gender` VARCHAR(1) NOT NULL , `Job` VARCHAR(15) NOT NULL , `airplane_id` INT NOT NULL , PRIMARY KEY (`SSN`));



CREATE TABLE `airline_v1`.`TICKET` ( `ticket_id` VARCHAR(15) NOT NULL , 'cust_id' VARCHAR(15) NOT NULL , `class` VARCHAR(10) NOT NULL , `amount` INT NOT NULL , `seat_no` INT NOT NULL , 'date' VARCHAR(5) NOT NULL , PRIMARY KEY (`ticket_id`));



CREATE TABLE `airline_v1`.`CUSTOMER` ( `fname` VARCHAR(20) NOT NULL , `lname` VARCHAR(20) NOT NULL , `phone_no` VARCHAR(12) NOT NULL , `cust_id` VARCHAR(15) NOT NULL , PRIMARY KEY (`cust_id`));



CREATE TABLE `airline_v1`.`FLIGHT_LEG` ( `flight_number` VARCHAR(6) NOT NULL , `leg_number` INT NOT NULL , `departure_airport_code` VARCHAR(4) NOT NULL , `departure_time` time NOT NULL , `arrival_airport_code` VARCHAR(4) NOT NULL , `arrival_time` time NOT NULL , PRIMARY KEY (`flight_number`, `leg_number`));



CREATE TABLE `airline_v1`.`can_land` ( `airport_code` VARCHAR(6) NOT NULL , `airplane_type` VARCHAR(15) NOT NULL , PRIMARY KEY (`airport_code`, `airplane_type`));



CREATE TABLE BOOKED_LEG ('ticket_id' VARCHAR(15) PRIMARY KEY, 'flight_leg_no' INT NOT NULL, `flight_no` VARCHAR(6) NOT NULL AFTER `flight_leg_no`, primary key(ticket_id, flight_leg_no, flight_no);




ALTER TABLE `airplane` ADD FOREIGN KEY (`type_name`) REFERENCES `airplane_type`(`type_name`) ON DELETE SET NULL ON UPDATE CASCADE;



ALTER TABLE `crew` ADD FOREIGN KEY (`airplane_id`) REFERENCES `airplane`(`id`) ON DELETE SET NULL ON UPDATE SET NULL;



ALTER TABLE `flight_leg` ADD FOREIGN KEY (`flight_number`) REFERENCES `flight`(`flight_number`) ON DELETE CASCADE ON UPDATE CASCADE;



ALTER TABLE `flight_leg` ADD FOREIGN KEY (`departure_airport_code`) REFERENCES `airport`(`Code`) ON DELETE SET NULL ON UPDATE SET NULL;
ALTER TABLE `flight_leg` ADD FOREIGN KEY (`arrival_airport_code`) REFERENCES `airport`(`Code`) ON DELETE SET NULL ON UPDATE SET NULL;



ALTER TABLE `can_land` ADD FOREIGN KEY (`airport_code`) REFERENCES `airport`(`Code`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `can_land` ADD FOREIGN KEY (`airplane_type`) REFERENCES `airplane_type`(`type_name`) ON DELETE CASCADE ON UPDATE CASCADE;



ALTER TABLE `ticket` ADD FOREIGN KEY (`cust_id`) REFERENCES `customer`(`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `booked_leg` ADD FOREIGN KEY (`ticket_id`) REFERENCES `ticket`(`ticket_id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `booked_leg` ADD FOREIGN KEY (`flight_no`, `flight_leg_no`) REFERENCES `flight_leg`(`flight_number`, `leg_number`) ON DELETE CASCADE ON UPDATE NO ACTION;



ALTER TABLE `flight` ADD FOREIGN KEY (`airplane_id`) REFERENCES `airplane`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

alter table flight_leg add constraint CHECK (departure_airport_code<>arrival_airport_code);
alter table flight_leg add constraint CHECK (departure_time<>arrival_time);
ALTER TABLE `flight` ADD UNIQUE(`airplane_id`);


--all schema information can be viewed using:
SELECT i.TABLE_NAME, i.CONSTRAINT_TYPE, i.CONSTRAINT_NAME, k.REFERENCED_TABLE_NAME, k.REFERENCED_COLUMN_NAME 
FROM information_schema.TABLE_CONSTRAINTS i 
LEFT JOIN information_schema.KEY_COLUMN_USAGE k ON i.CONSTRAINT_NAME = k.CONSTRAINT_NAME 
WHERE i.CONSTRAINT_TYPE = 'FOREIGN KEY' 
AND i.TABLE_SCHEMA = DATABASE();



CREATE OR REPLACE TRIGGER confirmed
AFTER INSERT OR DELETE ON ticket
FOR EACH ROW

	BEGIN
		dbms_output.put_line('Success! your seat has been booked with number ' || seat_no);
	END;