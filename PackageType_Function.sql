DELETE FROM PackageType
WHERE TypeName = 'Normal';

SELECT * 
FROM PackageType;

UPDATE PackageType
SET ValuePerWeight = 5
WHERE TypeName = 'Express';

SELECT * 
FROM PackageType;

SELECT COUNT(TypeName) AS totalPackageType
FROM PackageType;

