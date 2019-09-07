CREATE TABLE [dbo].[AspNetUserLogins]
(
	[LoginProvider] nvarchar(128) NOT NULL,
    [ProviderKey] nvarchar(128) NOT NULL,
    [ProviderDisplayName] nvarchar(max) NULL,
    [UserId] INT NOT NULL,
	[IsDeleted] bit NOT NULL,
	[CreationDate] DateTime2 NOT NULL,
	[UpdateDate] DateTime2 NOT NULL
	CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY ([LoginProvider], [ProviderKey])
)
