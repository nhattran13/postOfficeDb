DELETE FROM Receipt
WHERE ReceiptID = 1;

SELECT *
FROM Receipt;

UPDATE Receipt
SET Total = 15.00
WHERE ReceiptID = 2;

SELECT *
FROM Receipt;

SELECT TrackingID, Sender, Total
FROM Receipt;

SELECT BranchNo, COUNT(BranchNo) as totalOrder
FROM Receipt
GROUP BY BranchNo
ORDER BY BranchNo;
