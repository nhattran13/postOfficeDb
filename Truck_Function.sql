DELETE FROM Truck
WHERE TruckID = 1;

SELECT *
FROM truck;

UPDATE Truck
SET DriverID = 3
WHERE TruckID = 3;

SELECT *
FROM truck;

SELECT Origin, COUNT(IsAvailable) AS Truck_Available
FROM Truck
WHERE Origin = 'Houston';