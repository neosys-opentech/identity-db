CREATE PROCEDURE [dbo].[ps_AspNetUsers_u]
	@Id int = NULL,
	@UserName nvarchar(256) = NULL,
	@NormalizedUserName nvarchar(256) = NULL,
	@Email nvarchar(256) = NULL,
	@NormalizedEmail nvarchar(256) = NULL,
	@EmailConfirmed bit = 0,
	@PasswordHash nvarchar(MAX) = NULL,
	@SecurityStamp nvarchar(MAX) = NULL,
	@ConcurrencyStamp nvarchar(MAX) = NULL,
	@PhoneNumber nvarchar(MAX) = NULL,
	@PhoneNumberConfirmed bit = 0,
	@TwoFactorEnabled bit = 0,
	@LockoutEnd datetimeoffset(7) = NULL,
	@LockoutEnabled bit = 0,
	@AccessFailedCount int = NULL
AS
BEGIN
	UPDATE [dbo].[AspNetUsers] WITH(ROWLOCK)
	SET UserName = @UserName,
		NormalizedUserName = @NormalizedUserName,
		Email = @Email,
		NormalizedEmail = @NormalizedEmail,
		EmailConfirmed = @EmailConfirmed,
		PasswordHash = @PasswordHash,
		SecurityStamp = @SecurityStamp,
		ConcurrencyStamp = @ConcurrencyStamp,
		PhoneNumber = @PhoneNumber,
		PhoneNumberConfirmed = @PhoneNumberConfirmed,
		TwoFactorEnabled = @TwoFactorEnabled,
		LockoutEnd = @LockoutEnd,
		LockoutEnabled = @LockoutEnabled,
		AccessFailedCount = @AccessFailedCount,
		UpdateDate = GETDATE()
	WHERE Id = @Id
	AND [IsDeleted] = 0
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetUsers_u] TO [IdentityDbUser]
	AS [dbo]
GO