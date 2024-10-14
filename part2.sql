-- Table Authors

CREATE TABLE [dbo].[Authors]
(
 [AuthorID] Int IDENTITY(1,1) NOT NULL,
 [Biography] Varchar(max) NULL,
 [FirstName] Varchar(50) NOT NULL,
 [LastName] Varchar(50) NOT NULL,
 [Nationality] Varchar(50) NULL
)
ON [PRIMARY]
go

EXEC sp_addextendedproperty 'Description', 'Indentifies information related to various authors', 'SCHEMA', 'dbo', 'TABLE', 'Authors', NULL, NULL
go
EXEC sp_addextendedproperty 'Description', 'A unique identifier for an author', 'SCHEMA', 'dbo', 'TABLE', 'Authors', 'COLUMN', 'AuthorID'
go
EXEC sp_addextendedproperty 'Description', 'Author Biography', 'SCHEMA', 'dbo', 'TABLE', 'Authors', 'COLUMN', 'Biography'
go
EXEC sp_addextendedproperty 'Description', 'Author First Name', 'SCHEMA', 'dbo', 'TABLE', 'Authors', 'COLUMN', 'FirstName'
go
EXEC sp_addextendedproperty 'Description', 'Author Last Name', 'SCHEMA', 'dbo', 'TABLE', 'Authors', 'COLUMN', 'LastName'
go
EXEC sp_addextendedproperty 'Description', 'Author Nationality', 'SCHEMA', 'dbo', 'TABLE', 'Authors', 'COLUMN', 'Nationality'
go
-- Add keys for table Authors

ALTER TABLE [dbo].[Authors] ADD CONSTRAINT [PK_Authors] PRIMARY KEY ([AuthorID])
go

--*********************************************************************************************
-- Table Books

CREATE TABLE [dbo].[Books]
(
 [BookID] Int IDENTITY(1,1) NOT NULL,
 [AuthorID] Int NULL,
 [GenreID] Int NULL,
 [PublisherID] Int NULL,
 [Edition] Varchar(5) NULL,
 [IsAvailable] Bit DEFAULT 1 NOT NULL,
 [ISBN] Varchar(20) NULL,
 [Language] Varchar(25) NULL,
 [PublicationDate] Datetime NULL,
 [Title] Varchar(150) NOT NULL
)
ON [PRIMARY]
go

EXEC sp_addextendedproperty 'Description', 'Indentifies information related to various books', 'SCHEMA', 'dbo', 'TABLE', 'Books', NULL, NULL
go
EXEC sp_addextendedproperty 'Description', 'A unique identifier for a book', 'SCHEMA', 'dbo', 'TABLE', 'Books', 'COLUMN', 'BookID'
go
EXEC sp_addextendedproperty 'Description', 'Identifies an author for the book', 'SCHEMA', 'dbo', 'TABLE', 'Books', 'COLUMN', 'AuthorID'
go
EXEC sp_addextendedproperty 'Description', 'Identifies an genre for the book', 'SCHEMA', 'dbo', 'TABLE', 'Books', 'COLUMN', 'GenreID'
go
EXEC sp_addextendedproperty 'Description', 'Identifies a publisher for the book', 'SCHEMA', 'dbo', 'TABLE', 'Books', 'COLUMN', 'PublisherID'
go
EXEC sp_addextendedproperty 'Description', 'Book Edition', 'SCHEMA', 'dbo', 'TABLE', 'Books', 'COLUMN', 'Edition'
go
EXEC sp_addextendedproperty 'Description', 'Identifies whether a book is available in the library or not', 'SCHEMA', 'dbo', 'TABLE', 'Books', 'COLUMN', 'IsAvailable'
go
EXEC sp_addextendedproperty 'Description', 'International Standard Book Number', 'SCHEMA', 'dbo', 'TABLE', 'Books', 'COLUMN', 'ISBN'
go
EXEC sp_addextendedproperty 'Description', 'Language the book is written in', 'SCHEMA', 'dbo', 'TABLE', 'Books', 'COLUMN', 'Language'
go
EXEC sp_addextendedproperty 'Description', 'Date the book was published', 'SCHEMA', 'dbo', 'TABLE', 'Books', 'COLUMN', 'PublicationDate'
go
EXEC sp_addextendedproperty 'Description', 'Book Title', 'SCHEMA', 'dbo', 'TABLE', 'Books', 'COLUMN', 'Title'
go



-- Create indexes for table Books

CREATE INDEX [IX_Books_AuthorID] ON [dbo].[Books] ([AuthorID])
go

CREATE INDEX [IX_Books_GenreID] ON [dbo].[Books] ([GenreID])
go

CREATE INDEX [IX_Books_PublisherID] ON [dbo].[Books] ([PublisherID])
go

-- Add keys for table Books

ALTER TABLE [dbo].[Books] ADD CONSTRAINT [PK_Books] PRIMARY KEY ([BookID])
go

--*****************************************************************************************************
-- Table Borrowers

CREATE TABLE [dbo].[Borrowers]
(
 [BorrowerID] Int IDENTITY(1,1) NOT NULL,
 [FirstName] Varchar(50) NOT NULL,
 [LastName] Varchar(50) NOT NULL,
 [Email] Varchar(100) NOT NULL,
 [PhoneNumber] Varchar(20) NOT NULL,
 [MembershipDate] DateTime NOT NULL
)
ON [PRIMARY]
go

EXEC sp_addextendedproperty 'Description', 'Indentifies information related to various borrowers', 'SCHEMA', 'dbo', 'TABLE', 'Borrowers', NULL, NULL
go
EXEC sp_addextendedproperty 'Description', 'A unique identifier for a borrower', 'SCHEMA', 'dbo', 'TABLE', 'Borrowers', 'COLUMN', 'BorrowerID'
go
EXEC sp_addextendedproperty 'Description', 'First Name', 'SCHEMA', 'dbo', 'TABLE', 'Borrowers', 'COLUMN', 'FirstName'
go
EXEC sp_addextendedproperty 'Description', 'Last Name', 'SCHEMA', 'dbo', 'TABLE', 'Borrowers', 'COLUMN', 'LastName'
go
EXEC sp_addextendedproperty 'Description', 'Email', 'SCHEMA', 'dbo', 'TABLE', 'Borrowers', 'COLUMN', 'Email'
go
EXEC sp_addextendedproperty 'Description', 'Phone Number', 'SCHEMA', 'dbo', 'TABLE', 'Borrowers', 'COLUMN', 'PhoneNumber'
go
EXEC sp_addextendedproperty 'Description', 'Membership Date', 'SCHEMA', 'dbo', 'TABLE', 'Borrowers', 'COLUMN', 'MembershipDate'
go

-- Add keys for table Borrowers

ALTER TABLE [dbo].[Borrowers] ADD CONSTRAINT [PK_Borrowers] PRIMARY KEY ([BorrowerID])
go
--********************************************************************************************************

-- Table Publishers

CREATE TABLE [dbo].[Publishers]
(
 [PublisherID] Int IDENTITY(1,1) NOT NULL,
 [Publisher] Varchar(200) NOT NULL
)
ON [PRIMARY]
go

EXEC sp_addextendedproperty 'Description', 'Indentifies information related to various publishers', 'SCHEMA', 'dbo', 'TABLE', 'Publishers', NULL, NULL
go
EXEC sp_addextendedproperty 'Description', 'A unique identifier for a publisher', 'SCHEMA', 'dbo', 'TABLE', 'Publishers', 'COLUMN', 'PublisherID'
go
EXEC sp_addextendedproperty 'Description', 'Publisher Name', 'SCHEMA', 'dbo', 'TABLE', 'Publishers', 'COLUMN', 'Publisher'
go

-- Add keys for table Publishers

ALTER TABLE [dbo].[Publishers] ADD CONSTRAINT [PK_Publishers] PRIMARY KEY ([PublisherID])
go
--***************************************************************************************************************

-- Table Genres

CREATE TABLE [dbo].[Genres]
(
 [GenreID] Int IDENTITY(1,1) NOT NULL,
 [Genre] Varchar(100) NOT NULL
)
ON [PRIMARY]
go

EXEC sp_addextendedproperty 'Description', 'Indentifies information related to various genres', 'SCHEMA', 'dbo', 'TABLE', 'Genres', NULL, NULL
go
EXEC sp_addextendedproperty 'Description', 'A unique identifier for a genre', 'SCHEMA', 'dbo', 'TABLE', 'Genres', 'COLUMN', 'GenreID'
go
EXEC sp_addextendedproperty 'Description', 'Genre Name', 'SCHEMA', 'dbo', 'TABLE', 'Genres', 'COLUMN', 'Genre'
go

-- Add keys for table Genres

ALTER TABLE [dbo].[Genres] ADD CONSTRAINT [PK_Genres] PRIMARY KEY ([GenreID])
go
--**********************************************************************************************************
-- Table BookStatus

CREATE TABLE [dbo].[BookStatus]
(
 [BookStatusID] Int IDENTITY(1,1) NOT NULL,
 [BookID] Int NOT NULL,
 [BorrowerID] Int NULL,
 [DateBorrowed] Datetime NULL,
 [DateDue] Datetime NULL,
 [DateReturned] Datetime NULL
)
ON [PRIMARY]
go

EXEC sp_addextendedproperty 'Description', 'Indentifies information related to various books and their status as who borrowing info', 'SCHEMA', 'dbo', 'TABLE', 'BookStatus', NULL, NULL
go
EXEC sp_addextendedproperty 'Description', 'A unique identifier for a bookStatus', 'SCHEMA', 'dbo', 'TABLE', 'BookStatus', 'COLUMN', 'BookStatusID'
go
EXEC sp_addextendedproperty 'Description', 'Identifies a book', 'SCHEMA', 'dbo', 'TABLE', 'BookStatus', 'COLUMN', 'BookID'
go
EXEC sp_addextendedproperty 'Description', 'Identifies a borrower', 'SCHEMA', 'dbo', 'TABLE', 'BookStatus', 'COLUMN', 'BorrowerID'
go
EXEC sp_addextendedproperty 'Description', 'Date and time book was borrowed', 'SCHEMA', 'dbo', 'TABLE', 'BookStatus', 'COLUMN', 'DateBorrowed'
go
EXEC sp_addextendedproperty 'Description', 'Date and time book supposed to be returned', 'SCHEMA', 'dbo', 'TABLE', 'BookStatus', 'COLUMN', 'DateDue'
go
EXEC sp_addextendedproperty 'Description', 'Date and time book was returned', 'SCHEMA', 'dbo', 'TABLE', 'BookStatus', 'COLUMN', 'DateReturned'
go

-- Create indexes for table BookStatus

CREATE INDEX [IX_BookStatus_BookID] ON [dbo].[BookStatus] ([BookID])
go

CREATE INDEX [IX_BookStatus_BorrowerID] ON [dbo].[BookStatus] ([BorrowerID])
go

-- Add keys for table BookStatus

ALTER TABLE [dbo].[BookStatus] ADD CONSTRAINT [PK_BookStatus] PRIMARY KEY ([BookStatusID])
go

--**********************************************************************************************************
-- Add all Foreign Key relationships

ALTER TABLE [Books] ADD CONSTRAINT [Authors_Books_AuthorID] FOREIGN KEY ([AuthorID]) REFERENCES [Authors] ([AuthorID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go
ALTER TABLE [Books] ADD CONSTRAINT [Genres_Books_GenreID] FOREIGN KEY ([GenreID]) REFERENCES [Genres] ([GenreID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go
ALTER TABLE [Books] ADD CONSTRAINT [Publishers_Books_PublisherID] FOREIGN KEY ([PublisherID]) REFERENCES [Publishers] ([PublisherID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go
ALTER TABLE [BookStatus] ADD CONSTRAINT [Books_BookStatus_BookID] FOREIGN KEY ([BookID]) REFERENCES [Books] ([BookID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go
ALTER TABLE [BookStatus] ADD CONSTRAINT [Borrowers_BookStatus_BorrowerID] FOREIGN KEY ([BorrowerID]) REFERENCES [Borrowers] ([BorrowerID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


exec sp_updatestats
GO
