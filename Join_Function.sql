/*Relationship between Cust and Receipt(Find info of Receipt) done*/
SELECT customer.Sender, customer.Recepient, customer.Origin, customer.Destination, receipt.CardNum
FROM customer
JOIN Receipt ON customer.TrackingID = receipt.TrackingID;

/*Relationship between Package and Cust(give info about cust and package) done*/
SELECT package.PackageType, package.PackageWeight, customer.Sender, customer.Recepient, package.TrackingID
FROM package
INNER JOIN customer ON customer.TrackingID = package.TrackingID;

/*Relationship between Branch and Staff(list of names, job title, and city) done*/
SELECT Staff.firstName, Staff.lastName, staff.jobTitle, branch.BranchNo, branch.City
FROM Staff
JOIN Branch ON staff.BranchNo = branch.BranchNo
ORDER BY branch.City;

/*Relationship between Truck and Staff(list of truck available and driver name) done*/
SELECT truck.PlatNum, staff.lastName, staff.firstName, truck.Origin, truck.IsAvailable
FROM Truck
LEFT JOIN Staff ON truck.DriverID = staff.StaffID;

/*Relationship between PackageType and Package (get valueperweight if cust ask) done*/
SELECT package.TrackingID, package.PackageType, package.PackageWeight, packagetype.ValuePerWeight
FROM package
JOIN packagetype ON package.TrackingID = 'AAA1' AND package.PackageType = packagetype.TypeName
ORDER BY package.PackageType;

/*Relationship between Truck and Branch(find what truck is in what branch) done*/
SELECT truck.PlatNum, branch.BranchNo, truck.Origin, truck.IsAvailable
FROM truck
JOIN branch ON branch.City = truck.Origin
ORDER BY branch.BranchNo;

/*Relationship between Package and Receipt(See info from Package from Receipt) done*/
SELECT receipt.TrackingID, receipt.Sender, package.PackageType, package.PackageWeight
FROM receipt
INNER JOIN package ON receipt.TrackingID = 'AAA1' AND receipt.TrackingID = package.TrackingID
ORDER BY package.PackageType;

/*Relationship between Branch and Receipt(See Receipt from Branch) */
SELECT branch.BranchNo, branch.City, COUNT(ReceiptID) AS totalOrder
FROM branch
JOIN receipt ON branch.BranchNo = receipt.BranchNo
GROUP BY BranchNo
ORDER BY BranchNo;
