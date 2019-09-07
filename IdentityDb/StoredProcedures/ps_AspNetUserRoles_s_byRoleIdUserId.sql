CREATE PROCEDURE [dbo].[ps_AspNetUserRoles_s_byRoleIdUserId]
	@UserId int = NULL,
	@RoleId int = NULL
AS
BEGIN
	SELECT *
	FROM [dbo].[AspNetUserRoles] WITH(NOLOCK)
	WHERE RoleId = @RoleId
	AND UserId = @UserId
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetUserRoles_s_byRoleIdUserId] TO [IdentityDbUser]
	AS [dbo]
GO
