DELETE FROM Branch 
WHERE BranchNo = 'BN01';

SELECT *
FROM Branch;

UPDATE Branch
SET Profits = 100.00
WHERE City ='Dallas';

SELECT *
FROM Branch;

SELECT State, AVG(Profits) AS AvgProfits
FROM Branch
GROUP BY State
ORDER BY State;

SELECT SUM(Profits) AS Totals 
FROM Branch;