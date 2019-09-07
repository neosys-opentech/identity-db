CREATE PROCEDURE [dbo].[ps_AspNetRoles_u]
	@Id int = NULL,
	@Name nvarchar(256) = NULL,
    @NormalizedName nvarchar(256) = NULL,
    @ConcurrencyStamp nvarchar(max) = NULL
AS
BEGIN
	UPDATE [dbo].[AspNetRoles] WITH(ROWLOCK)
	SET [Name] = @Name,
		[NormalizedName] = @NormalizedName,
		[ConcurrencyStamp] = @ConcurrencyStamp,
		[UpdateDate] = GETDATE()
	WHERE Id = @Id
	AND IsDeleted = 0
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetRoles_u] TO [IdentityDbUser]
	AS [dbo]
GO
