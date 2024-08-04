create database cars_model_dataset ;

select * from  cars_india_dataset ;

-- Identify the Top 5 -variants  Car Models 

SELECT 
    Model, SUM(Variants) AS TV
FROM
    cars_india_dataset
GROUP BY Model
ORDER BY Tv DESC
LIMIT 5;

--  Objective: Find the number of cars for each drive type and transmission combination.

SELECT 
    Drive, Transmission, COUNT(*) AS number_of_cars
FROM
    cars_india_dataset
GROUP BY Drive , Transmission;

-- Objective: List car models with a rating above 4 and their corresponding fuel efficiency.
    SELECT 
    Model, Rating, Fuel Efficiency
FROM
    cars_india_dataset
WHERE
    Rating > 4;
    
    -- Objective: Find the average length and width of cars for each maker.

SELECT 
    Maker,
    AVG(Length) AS Average_length,
    AVG(Width) AS average_width
FROM
    cars_india_dataset
GROUP BY Maker;

-- Objective: Calculate the total number of cars for each engine type and fuel combination.

SELECT 
    `Engine Type`,
    `Fuel`,
    COUNT(*) AS number_of_cars
FROM 
    cars_india_dataset
GROUP BY 
    `Engine Type`,
    `Fuel`;
    
    -- Objective: Find the maximum and minimum boot space among all cars.
    
    SELECT 
    MAX('Boot Space') AS Max_boot_space,
    MIN('Boot Space') AS Min_boot_space
FROM
    cars_india_dataset;
    
    --  Objective: List all cars where the number of variants is more than 3.
    
  SELECT 
    Model, Variants
FROM
    cars_india_dataset
WHERE
    Variants > 3
;
    

-- Objective: Find the car model with the smallest turning radius.

SELECT 
    Model, 'Turning Radius'
FROM
    cars_india_dataset
ORDER BY 'Turning Radius'
LIMIT 5;

-- . Objective: Count the number of cars with each type of front brake system.
SELECT 
    'Front Brake', COUNT(*) AS Number_of_Cars
FROM
    cars_india_dataset
GROUP BY 'Front Brake';

-- Objective: Find the average number of seats for cars with automatic transmission.

SELECT 
    AVG(Seats) AS Average_seats
FROM
    cars_india_dataset
WHERE
    Transmission = 'Automatic';
    
--  Objective: List all car models with a fuel tank capacity greater than 50 liters.

SELECT 
    Model, 'Fuel Tank Capacity'
FROM
    cars_india_dataset
WHERE
    'Fuel Tank Capacity' > 50;

-- . Objective: Calculate the average rating for each car maker.

SELECT 
    Maker, AVG(Rating) AS Average_Rating
FROM
    cars_india_dataset
GROUP BY Maker;

-- Objective: Find the car with the highest displacement and show its details.

SELECT 
    Model, Displacement, Maker, Type, Seats
FROM
    cars_india_dataset
ORDER BY Displacement DESC
LIMIT 1;

--  Objective: Count the number of cars for each fuel type.

SELECT 
    Fuel, COUNT(*) AS number_of_cars
FROM
    cars_india_dataset
GROUP BY fuel;
 
 -- Objective: List the top 5 cars with the highest boot space.
 
 SELECT 
    Model, 'Boot Space'
FROM
    cars_india_dataset
ORDER BY 'Boot Space' DESC
LIMIT 5;

-- Objective: Find the average fuel efficiency for each type of car.

SELECT 
    type, AVG('Fuel effiency') AS Average_fuel_effiency
FROM
    cars_india_dataset
GROUP BY type;