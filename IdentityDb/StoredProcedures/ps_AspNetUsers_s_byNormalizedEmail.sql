CREATE PROCEDURE [dbo].[ps_AspNetUsers_s_byNormalizedEmail]
	@NormalizedEmail nvarchar(256) = NULL
AS
BEGIN
	SELECT *
	FROM [dbo].[AspNetUsers] WITH(NOLOCK)
	WHERE NormalizedEmail = @NormalizedEmail
	AND [IsDeleted] = 0
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetUsers_s_byNormalizedEmail] TO [IdentityDbUser]
	AS [dbo]
GO
