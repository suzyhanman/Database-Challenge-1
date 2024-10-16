USE [Library]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddBook]    Script Date: 10/14/2024 1:27:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---------------------------------------------------
ALTER PROCEDURE [dbo].[sp_AddBook]
@AuthorID int,
@GenreID int,
@PublisherID int,
@Edition varchar(5),
@ISBN varchar(20),
@Language varchar(25),
@PublicationDate DateTime,
@Title varchar(150)
AS
BEGIN
	INSERT INTO [dbo].[Books]
           ([AuthorID],
            [GenreID],
            [PublisherID],
            [Edition],
            [ISBN],
            [Language],
            [PublicationDate],
            [Title])
     VALUES
           (@AuthorID,
		    @GenreID,
		    @PublisherID,
			@Edition,
			@ISBN,
			@Language, 
            @PublicationDate, 
            @Title)

END

