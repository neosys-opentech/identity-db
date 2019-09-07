CREATE PROCEDURE [dbo].[ps_AspNetUsers_s_byId]
	@Id int = 0
AS
BEGIN
	SELECT *
	FROM [dbo].[AspNetUsers] WITH(NOLOCK)
	WHERE Id = @Id
	AND [IsDeleted] = 0
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetUsers_s_byId] TO [IdentityDbUser]
	AS [dbo]
GO