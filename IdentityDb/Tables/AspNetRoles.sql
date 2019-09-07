CREATE TABLE [dbo].[AspNetRoles]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
    [Name] nvarchar(256) NULL,
    [NormalizedName] nvarchar(256) NULL,
    [ConcurrencyStamp] nvarchar(max) NULL,
	[IsDeleted] bit NOT NULL,
	[CreationDate] DateTime2 NOT NULL,
	[UpdateDate] DateTime2 NOT NULL
)
