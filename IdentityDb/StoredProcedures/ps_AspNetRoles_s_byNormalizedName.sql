CREATE PROCEDURE [dbo].[ps_AspNetRoles_s_byNormalizedName]
	@NormalizedName nvarchar(256) = NULL
AS
BEGIN
	SELECT * FROM [dbo].[AspNetRoles] WITH(NOLOCK)
	WHERE NormalizedName = @NormalizedName
	AND IsDeleted = 0
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetRoles_s_byNormalizedName] TO [IdentityDbUser]
	AS [dbo]
GO
