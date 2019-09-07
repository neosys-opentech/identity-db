CREATE PROCEDURE [dbo].[ps_AspNetUsers_s]
AS
BEGIN
	SELECT * FROM [dbo].[AspNetUsers] WITH(NOLOCK)
	WHERE IsDeleted = 0
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetUsers_s] TO [IdentityDbUser]
	AS [dbo]
GO
