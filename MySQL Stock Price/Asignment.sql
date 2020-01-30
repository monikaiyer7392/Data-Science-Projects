/* Start of Task 1*/
/* Create a new table named 'bajaj1' containing the date, 
close price, 20 Day MA and 50 Day MA. (This has to be done for all 6 stocks)*/

-- Create table Bajaj 1 with 20 Day MA and 50 day MA
CREATE TABLE `assignment`.`bajaj1` (
  `Date` datetime NOT NULL,
  `Close Price` varchar(45) DEFAULT NULL,
  `20 Day MA` varchar(45) DEFAULT NULL,
  `50 Day MA` varchar(45) DEFAULT NULL
);

-- Create table Eicher 1 with 20 Day MA and 50 day MA
CREATE TABLE `assignment`.`eicher1` (
  `Date` datetime NOT NULL,
  `Close Price` varchar(45) DEFAULT NULL,
  `20 Day MA` varchar(45) DEFAULT NULL,
  `50 Day MA` varchar(45) DEFAULT NULL
);

-- Create table Hero 1 with 20 Day MA and 50 day MA
CREATE TABLE `assignment`.`hero1` (
  `Date` datetime NOT NULL,
  `Close Price` varchar(45) DEFAULT NULL,
  `20 Day MA` varchar(45) DEFAULT NULL,
  `50 Day MA` varchar(45) DEFAULT NULL
);

-- Create table Infosys 1 with 20 Day MA and 50 day MA
CREATE TABLE `assignment`.`infosys1` (
  `Date` datetime NOT NULL,
  `Close Price` varchar(45) DEFAULT NULL,
  `20 Day MA` varchar(45) DEFAULT NULL,
  `50 Day MA` varchar(45) DEFAULT NULL
);

-- Create table TCS 1 with 20 Day MA and 50 day MA
CREATE TABLE `assignment`.`tcs1` (
  `Date` datetime NOT NULL,
  `Close Price` varchar(45) DEFAULT NULL,
  `20 Day MA` varchar(45) DEFAULT NULL,
  `50 Day MA` varchar(45) DEFAULT NULL
);

-- Create table TVS 1 with 20 Day MA and 50 day MA
CREATE TABLE `assignment`.`tvs1` (
  `Date` datetime NOT NULL,
  `Close Price` varchar(45) DEFAULT NULL,
  `20 Day MA` varchar(45) DEFAULT NULL,
  `50 Day MA` varchar(45) DEFAULT NULL
);

-- Convert text to datetime value
update `assignment`.`bajaj auto`
set `date` = str_to_date(`date`, '%d-%M-%Y');

update `assignment`.`eicher motors`
set `date` =str_to_date(`date`, '%d-%M-%Y');

update `assignment`.`hero motocorp`
set `date` =str_to_date(`date`, '%d-%M-%Y');

update `assignment`.`infosys`
set `date` =str_to_date(`date`, '%d-%M-%Y');

update `assignment`.`tcs`
set `date` =str_to_date(`date`, '%d-%M-%Y');

update `assignment`.`tvs motors`
set `date` =str_to_date(`date`, '%d-%M-%Y');


-- Calculate values of 20 Day MA and 50 Day MA from bajaj table and insert it into bajaj1 table
INSERT INTO `assignment`.`bajaj1`
(`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`)
(Select `date`, 
`close price`,
CASE 
WHEN ROW_NUMBER() OVER(ORDER BY `date`) >=20 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 19 PRECEDING AND 
                                           CURRENT ROW)
END,
CASE WHEN
    ROW_NUMBER() OVER(ORDER BY `date`) >=50 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 49 PRECEDING AND 
                                           CURRENT ROW)
END
From `assignment`.`bajaj auto`
order by `date`);


-- Calculate values of 20 Day MA and 50 Day MA from eicher_motors table and insert it into eicher1 table
INSERT INTO `assignment`.`eicher1`
(`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`)
(Select `date`, 
`close price`,
CASE 
WHEN ROW_NUMBER() OVER(ORDER BY `date`) >=20 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 19 PRECEDING AND 
                                           CURRENT ROW)
END,
CASE WHEN
    ROW_NUMBER() OVER(ORDER BY `date`) >=50 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 49 PRECEDING AND 
                                           CURRENT ROW)
END
From `assignment`.`eicher motors`
order by `date`);



-- Calculate values of 20 Day MA and 50 Day MA from hero_motocorp table and insert it into hero1 table
INSERT INTO `assignment`.`hero1`
(`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`)
(Select `date`, 
`close price`,
CASE 
WHEN ROW_NUMBER() OVER(ORDER BY `date`) >=20 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 19 PRECEDING AND 
                                           CURRENT ROW)
END,
CASE WHEN
    ROW_NUMBER() OVER(ORDER BY `date`) >=50 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 49 PRECEDING AND 
                                           CURRENT ROW)
END
From `assignment`.`hero motocorp`
order by `date`);



-- Calculate values of 20 Day MA and 50 Day MA from Infosys table and insert it into infosys1 table
INSERT INTO `assignment`.`infosys1`
(`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`)
(Select `date`, 
`close price`,
CASE 
WHEN ROW_NUMBER() OVER(ORDER BY `date`) >=20 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 19 PRECEDING AND 
                                           CURRENT ROW)
END,
CASE WHEN
    ROW_NUMBER() OVER(ORDER BY `date`) >=50 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 49 PRECEDING AND 
                                           CURRENT ROW)
END
From `assignment`.`infosys`
order by `date`);



-- Calculate values of 20 Day MA and 50 Day MA from TCS table and insert it into tcs1 table
INSERT INTO `assignment`.`tcs1`
(`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`)
(Select `date`, 
`close price`,
CASE 
WHEN ROW_NUMBER() OVER(ORDER BY `date`) >=20 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 19 PRECEDING AND 
                                           CURRENT ROW)
END,
CASE WHEN
    ROW_NUMBER() OVER(ORDER BY `date`) >=50 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 49 PRECEDING AND 
                                           CURRENT ROW)
END
From `assignment`.`tcs`
order by `date`);



-- Calculate values of 20 Day MA and 50 Day MA from tvs_motors table and insert it into tvs1 table
INSERT INTO `assignment`.`tvs1`
(`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`)
(Select `date`, 
`close price`,
CASE 
WHEN ROW_NUMBER() OVER(ORDER BY `date`) >=20 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 19 PRECEDING AND 
                                           CURRENT ROW)
END,
CASE WHEN
    ROW_NUMBER() OVER(ORDER BY `date`) >=50 THEN
    AVG(`Close Price`) OVER(ORDER BY `date` ROWS BETWEEN 49 PRECEDING AND 
                                           CURRENT ROW)
END
From `assignment`.`tvs motors`
order by `date`);
/*End of Task 1*/



/* Start of Task 2*/
/*Create a master table containing the date and close price of all the six stocks. 
(Column header for the price is the name of the stock)*/
CREATE TABLE `assignment`.`master_stock` (
  `Date` DATETIME NOT NULL,
  `Bajaj` VARCHAR(45) NULL,
  `TCS` VARCHAR(45) NULL,
  `TVS` VARCHAR(45) NULL,
  `Infosys` VARCHAR(45) NULL,
  `Eicher` VARCHAR(45) NULL,
  `Hero` VARCHAR(45) NULL);


insert into `assignment`.`master_stock`(`date`, `bajaj`,`tcs`,`tvs`,`infosys`,`eicher`,`hero`)
select b.`date`,b.`close price`,
tc.`close price`,tv.`Close Price`,
i.`close price`,e.`close price`, h.`close price` from
`assignment`.`bajaj auto` as b 
inner join `assignment`.`tcs` as tc on tc.`date` = b.`date`
inner join `assignment`.`tvs_motors` as tv on tv.`date` = b.`date`
inner join `assignment`.`infosys` as i on i.`date` = b.`date`
inner join `assignment`.`eicher motors` as e on e.`date` = b.`date`
inner join `assignment`.`hero motocorp` as h on h.`date` = b.`date`;
/* End of task 2*/


/* Start of task 3*/
/*Use the table created in Part(1) to generate buy and sell signal. 
Store this in another table named 'bajaj2'. Perform this operation for all stocks.*/

-- Cretae table bajaj2
CREATE TABLE `assignment`.`bajaj2` (
  `Date` DATETIME NULL,
  `Close Price` VARCHAR(45) NULL,
  `Signal` VARCHAR(45) NULL);

-- Create table eicher2
CREATE TABLE `assignment`.`eicher2` (
  `Date` DATETIME NULL,
  `Close Price` VARCHAR(45) NULL,
  `Signal` VARCHAR(45) NULL);

-- Create table hero2  
  CREATE TABLE `assignment`.`hero2` (
  `Date` DATETIME NULL,
  `Close Price` VARCHAR(45) NULL,
  `Signal` VARCHAR(45) NULL);
  
-- Create table infosys2
  CREATE TABLE `assignment`.`infosys2` (
  `Date` DATETIME NULL,
  `Close Price` VARCHAR(45) NULL,
  `Signal` VARCHAR(45) NULL);
  
-- Create table tcs2 
  CREATE TABLE `assignment`.`tcs2` (
  `Date` DATETIME NULL,
  `Close Price` VARCHAR(45) NULL,
  `Signal` VARCHAR(45) NULL);
  
-- Create table tvs2
  CREATE TABLE `assignment`.`tvs2` (
  `Date` DATETIME NULL,
  `Close Price` VARCHAR(45) NULL,
  `Signal` VARCHAR(45) NULL);
  
--  Insert values, from bajaj1 and calculate signal, into bajaj2
insert into `assignment`.`bajaj2`(`date`, `close price`, `signal`)
(select `date`, `close price`,
case when `20 day ma` > `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))< (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Buy'
when `20 day ma` < `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))> (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Sell'
ELSE 'Hold'
end
from `assignment`.`bajaj1`);

--  Insert values, from eicher1 and calculate signal, into eicher1
insert into `assignment`.`eicher2`(`date`, `close price`, `signal`)
(select `date`, `close price`,
case when `20 day ma` > `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))< (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Buy'
when `20 day ma` < `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))> (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Sell'
ELSE 'Hold'
end
from `assignment`.`eicher1`);

--  Insert values, from hero1 and calculate signal, into hero2
insert into `assignment`.`hero2`(`date`, `close price`, `signal`)
(select `date`, `close price`,
case when `20 day ma` > `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))< (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Buy'
when `20 day ma` < `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))> (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Sell'
ELSE 'Hold'
end
from `assignment`.`hero1`);

--  Insert values, from infosys1 and calculate signal, into infosys2
insert into `assignment`.`infosys2`(`date`, `close price`, `signal`)
(select `date`, `close price`,
case when `20 day ma` > `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))< (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Buy'
when `20 day ma` < `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))> (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Sell'
ELSE 'Hold'
end
from `assignment`.`infosys1`);


--  Insert values, from tcs1 and calculate signal, into tcs2
insert into `assignment`.`tcs2`(`date`, `close price`, `signal`)
(select `date`, `close price`,
case when `20 day ma` > `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))< (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Buy'
when `20 day ma` < `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))> (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Sell'
ELSE 'Hold'
end
from `assignment`.`tcs1`);

--  Insert values, from tvs1 and calculate signal, into tvs2
insert into `assignment`.`tvs2`(`date`, `close price`, `signal`)
(select `date`, `close price`,
case when `20 day ma` > `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))< (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Buy'
when `20 day ma` < `50 day ma` 
AND (LAG(`20 day ma`,1) OVER(order by `date`))> (LAG(`50 day Ma`,1)OVER(order by `date`))
then 'Sell'
ELSE 'Hold'
end
from `assignment`.`tvs1`);
/*End of task 3*/


/* Start of task 4*/
/*Create a User defined function, that takes the date as input and 
returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.*/

create function signal_bajaj( date_input datetime)
returns varchar(45)deterministic
return (select `signal` from bajaj2 where `date` = date_input);

select signal_bajaj('2015-05-18 00:00:00');
/*End of task 4*/








