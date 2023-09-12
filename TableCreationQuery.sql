CREATE TABLE [Books] (
  [BookID] int,
  [Title] varchar(100),
  [Author] varchar(50),
  [ISBN] int,
  [Published_Date] Date,
  [Genre] varchar(25),
  [Shelf_Location] varchar(50),
  [Current_Status] varchar(10),
  PRIMARY KEY ([BookID])
);

CREATE TABLE [Borrowers] (
  [BowrrowerID] int,
  [First_Name] varchar(20),
  [Last_Name] varchar(20),
  [Email] varchar(50),
  [Date_Of_Birth] date,
  [Membership_Date] date,
  PRIMARY KEY ([BowrrowerID])
);

CREATE TABLE [Loans] (
  [LoanID] int,
  [BookID] int,
  [BorrowerID] int,
  [Date_Borrowed] date,
  [Due_Date] date,
  [Date_Returned] date,
  PRIMARY KEY ([LoanID]),
  CONSTRAINT [FK_Loans.BookID]
    FOREIGN KEY ([BookID])
      REFERENCES [Books]([BookID]),
  CONSTRAINT [FK_Loans.Date_Borrowed]
    FOREIGN KEY ([BorrowerID])
      REFERENCES [Borrowers]([BowrrowerID])
);

