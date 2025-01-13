-- Create the Knowleger database
    CREATE DATABASE Knowleger;
    GO

    USE Knowleger;
    GO

    -- Create the Notes table
    CREATE TABLE Notes (
      Id INT IDENTITY(1,1) PRIMARY KEY,
      Title NVARCHAR(255) NOT NULL,
      Content NVARCHAR(MAX),
      CreatedAt DATETIME DEFAULT GETDATE()
      -- ... other columns for tags, categories, etc.
    );
    GO

    -- Example stored procedure to insert a new note (adapt as needed)
    CREATE PROCEDURE InsertNote (@Title NVARCHAR(255), @Content NVARCHAR(MAX))
    AS
    BEGIN
      INSERT INTO Notes (Title, Content)
      VALUES (@Title, @Content);
    END;
    GO
