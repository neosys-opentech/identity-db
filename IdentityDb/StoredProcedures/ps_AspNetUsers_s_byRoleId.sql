CREATE PROCEDURE [dbo].[ps_AspNetUsers_s_byRoleId]
	@RoleId int = NULL
AS
BEGIN
	SELECT Users.*
	FROM [dbo].[AspNetUsers] Users WITH(NOLOCK)
	INNER JOIN [dbo].[AspNetUserRoles] UserRoles WITH(NOLOCK) ON Users.Id = UserRoles.UserId
	WHERE UserRoles.RoleId = @RoleId
	AND Users.[IsDeleted] = 0
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetUsers_s_byRoleId] TO [IdentityDbUser]
	AS [dbo]
GO

