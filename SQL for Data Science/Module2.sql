/*******************************************************************************
 * All of the questions in this quiz refer to the open source Chinook Database.*
 * Please familiarize yourself with the ER diagram to familiarize yourself with*
 * the table and column names to write accurate queries and get the appropriate*
 * answers.                                                                    *
 *******************************************************************************/

/*
1. Find all the tracks that have a length of 5,000,000 milliseconds or more.
*/

SELECT Count(TrackId)
FROM Tracks
WHERE Milliseconds >= 5000000

/*
2. Find all the invoices whose total is between $5 and $15 dollars.
*/

SELECT COUNT(invoiceid)
FROM Invoices
WHERE total > 5 AND total < 15

/*
3. Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
*/

Select *
From Customers
Where state in ("RJ", "DF", "AB", "BC", "CA", "WA", "NY")

/*
4. Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.
*/

Select *
From invoices
Where (total > 1 and total < 5) AND (CustomerID in (56, 58))

/*
5. Find all the tracks whose name starts with 'All'.
*/

Select *
From Tracks
Where Name LIKE ("All%")

/*
6. Find all the customer emails that start with "J" and are from gmail.com.
*/

Select *
From Customers
Where email Like ("J%@gmail.com")

/*
7. Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.
*/

Select *
From Invoices
Where BillingCity IN ("Brasiília", "Edmonton", "Vancouver")
ORDER BY InvoiceID DESC

/*
8. Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.
*/

SELECT CustomerID, COUNT(*) AS Orders
FROM Invoices
GROUP BY CustomerID
ORDER BY Orders DESC

/*
9. Find the albums with 12 or more tracks.
*/

SELECT AlbumID, COUNT(*) AS Tracks
FROM Tracks
GROUP BY AlbumID
HAVING COUNT (*) >= 12
