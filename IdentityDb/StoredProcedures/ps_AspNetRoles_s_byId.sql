CREATE PROCEDURE [dbo].[ps_AspNetRoles_s_byId]
	@Id int = NULL
AS
BEGIN
	SELECT * FROM [dbo].[AspNetRoles] WITH(NOLOCK)
	WHERE Id = @Id
	AND IsDeleted = 0
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetRoles_s_byId] TO [IdentityDbUser]
	AS [dbo]
GO


