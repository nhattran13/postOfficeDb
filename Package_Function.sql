DELETE FROM Package 
WHERE PackageID = 1;

SELECT *
FROM package;

UPDATE Package
SET Amount = 5.00
WHERE PackageID = 3;

SELECT *
FROM package;

SELECT TrackingID, COUNT(TrackingID) AS totalOrder
FROM Package
GROUP BY TrackingID
ORDER BY TrackingID;

SELECT PackageType, PackageWeight, Amount
FROM Package;
