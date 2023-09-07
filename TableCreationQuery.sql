CREATE TABLE [Books] (
  [BookID] int,
  [Title] varchar(100),
  [Author] varchar(50),
  [ISBN] int,
  [Published Date] Date,
  [Genre] varchar(25),
  [Shelf Location] varchar(50),
  [Current Status] varchar(10),
  PRIMARY KEY ([BookID])
);

CREATE TABLE [Borrowers] (
  [BowrrowerID] int,
  [First Name] varchar(20),
  [Last Name] varchar(20),
  [Email] varchar(50),
  [Date Of Birth] date,
  [Membership Date] date,
  PRIMARY KEY ([BowrrowerID])
);

CREATE TABLE [Loans] (
  [LoanID] int,
  [BookID] int,
  [BorrowerID] int,
  [Date Borrowed] date,
  [Due Date] date,
  [Date Returned] date,
  PRIMARY KEY ([LoanID]),
  CONSTRAINT [FK_Loans.BookID]
    FOREIGN KEY ([BookID])
      REFERENCES [Books]([BookID]),
  CONSTRAINT [FK_Loans.Date Borrowed]
    FOREIGN KEY ([BorrowerID])
      REFERENCES [Borrowers]([BowrrowerID])
);

