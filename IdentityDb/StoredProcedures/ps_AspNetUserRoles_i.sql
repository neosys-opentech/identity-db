CREATE PROCEDURE [dbo].[ps_AspNetUserRoles_i]
	@UserId INT = NULL,
    @RoleId INT = NULL
AS
BEGIN
	INSERT INTO [dbo].[AspNetUserRoles] ([RoleId],[UserId])
	VALUES (@RoleId, @UserId)
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetUserRoles_i] TO [IdentityDbUser]
	AS [dbo]
GO
