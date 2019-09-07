CREATE PROCEDURE [dbo].[ps_AspNetRoles_s_byUserId]
	@UserId INT = NULL
AS
BEGIN
	SELECT Roles.* 
	FROM [dbo].[AspNetRoles] Roles WITH(NOLOCK)
	INNER JOIN [dbo].[AspNetUserRoles] UserRoles WITH(NOLOCK) ON Roles.Id = UserRoles.RoleId
	WHERE UserRoles.UserId = @UserId
	AND Roles.IsDeleted = 0
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetRoles_s_byUserId] TO [IdentityDbUser]
	AS [dbo]
GO

