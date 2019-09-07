CREATE PROCEDURE [dbo].[ps_AspNetUsers_s_byNormalizedName]
	@NormalizedUserName nvarchar(256) = NULL
AS
BEGIN
	SELECT *
	FROM [dbo].[AspNetUsers] WITH(NOLOCK)
	WHERE NormalizedUserName = @NormalizedUserName
	AND [IsDeleted] = 0
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetUsers_s_byNormalizedName] TO [IdentityDbUser]
	AS [dbo]
GO

