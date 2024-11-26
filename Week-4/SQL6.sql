--6.What were the orders that were purchased in our most lucrative order.
SELECT * FROM SALES
WHERE REVENUE=(SELECT MAX(REVENUE) FROM SALES);