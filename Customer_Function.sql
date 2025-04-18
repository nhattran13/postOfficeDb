DELETE FROM Customer 
WHERE TrackingID = 'AAA1';

SELECT *
FROM customer;

UPDATE Customer
SET Recepient = 'Lisa James'
WHERE TrackingID = 'AAA8';

SELECT *
FROM customer;

SELECT Recepient, COUNT(Recepient) AS totalPackage
FROM Customer
GROUP BY Recepient
ORDER BY Recepient;

