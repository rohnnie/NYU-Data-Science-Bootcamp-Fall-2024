--2.Pull total number of orders that were completed on 18th March 2023 with the first name ‘John’ and last name Doe’.
SELECT COUNT(*) FROM SALES S
JOIN CUSTOMERS C ON S.CUSTOMER_ID=C.CUSTOMER_ID
WHERE C.FIRST_NAME='John' AND C.LAST_NAME='Doe';