BEGIN TRY
	BEGIN TRANSACTION

    IF NOT EXISTS (SELECT 1 FROM [dbo].[AspNetRoles] WITH(NOLOCK) WHERE [NormalizedName] = 'ADMINISTRATOR')
	BEGIN
		INSERT INTO [dbo].[AspNetRoles] ([Name], [NormalizedName], [ConcurrencyStamp], [IsDeleted], [CreationDate],[UpdateDate])
		VALUES ('Administrator', 'ADMINISTRATOR', newid(), 0, GETDATE(), GETDATE())
	END

	IF NOT EXISTS (SELECT 1 FROM [dbo].[AspNetRoles] WITH(NOLOCK) WHERE [NormalizedName] = 'USER')
	BEGIN
		INSERT INTO [dbo].[AspNetRoles] ([Name], [NormalizedName], [ConcurrencyStamp], [IsDeleted], [CreationDate],[UpdateDate])
		VALUES ('User', 'USER', newid(), 0, GETDATE(), GETDATE())
	END

    COMMIT
END TRY
BEGIN CATCH
	ROLLBACK
END CATCH

GO
