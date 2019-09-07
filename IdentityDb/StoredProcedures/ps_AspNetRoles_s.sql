CREATE PROCEDURE [dbo].[ps_AspNetRoles_s]
AS
	BEGIN
	SELECT * FROM [dbo].[AspNetRoles] WITH(NOLOCK)
	WHERE IsDeleted = 0
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetRoles_s] TO [IdentityDbUser]
	AS [dbo]
GO
