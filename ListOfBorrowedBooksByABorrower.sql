select  [First_Name], [Last_Name], Books.BookID, Title from Loans join Borrowers on Loans.BorrowerID = Borrowers.BowrrowerID
join Books on Loans.BookID = Books.BookID order by Borrowers.[First_Name] , Borrowers.[Last_Name];

