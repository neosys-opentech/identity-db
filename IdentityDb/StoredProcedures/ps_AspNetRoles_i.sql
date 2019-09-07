CREATE PROCEDURE [dbo].[ps_AspNetRoles_i]
	@Name nvarchar(256) = NULL,
    @NormalizedName nvarchar(256) = NULL,
    @ConcurrencyStamp nvarchar(max) = NULL
AS
BEGIN
	INSERT INTO [dbo].[AspNetRoles] 
		([Name], 
		 [NormalizedName],
		 [ConcurrencyStamp],
		 [IsDeleted],
		 [CreationDate],
		 [UpdateDate])
	VALUES
		(@Name,
		@NormalizedName,
		@ConcurrencyStamp,
		0,
		GETDATE(),
		GETDATE())

	SELECT CAST(SCOPE_IDENTITY() as INT)
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetRoles_i] TO [IdentityDbUser]
	AS [dbo]
GO
