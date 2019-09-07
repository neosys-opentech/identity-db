CREATE PROCEDURE [dbo].[ps_AspNetUserRoles_d]
	@UserId int = NULL,
	@RoleId int = NULL
AS
BEGIN
	DELETE FROM [dbo].[AspNetUserRoles]
	WHERE RoleId = @RoleId AND UserId = @UserId
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetUserRoles_d] TO [IdentityDbUser]
	AS [dbo]
GO

