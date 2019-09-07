CREATE TABLE [dbo].[AspNetRoleClaims]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
    [RoleId] INT NOT NULL,
    [ClaimType] nvarchar(max) NULL,
    [ClaimValue] nvarchar(max) NULL,
	[IsDeleted] bit NOT NULL,
	[CreationDate] DateTime2 NOT NULL,
	[UpdateDate] DateTime2 NOT NULL
)
