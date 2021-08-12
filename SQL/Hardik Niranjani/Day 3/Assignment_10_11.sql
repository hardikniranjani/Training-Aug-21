--(10-11)--

--Write a query to display the current date in the following format.
--Sample output : 12:00 AM Sep 5, 2014


SELECT FORMAT (GETDATE(), 'hh:mm tt MMM dd, yyyy') as date