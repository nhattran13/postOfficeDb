DELETE FROM Staff 
WHERE StaffID =1;

SELECT *
FROM Staff;

UPDATE Staff
SET FirstName = 'Jane'
WHERE StaffID = 2;

SELECT *
FROM Staff;

SELECT StaffID, LastName, FirstName, Sex, PhoneNum, JobTitle
FROM Staff;

SELECT BranchNo, COUNT(StaffID) AS Total
FROM Staff
WHERE BranchNo = 'Bn01';
