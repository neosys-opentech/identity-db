CREATE PROCEDURE [dbo].[ps_AspNetUsers_i]
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
	INSERT INTO [dbo].[AspNetUsers] 
		([UserName], 
		[NormalizedUserName], 
		[Email],
        [NormalizedEmail], 
		[EmailConfirmed], 
		[PasswordHash],
		[SecurityStamp],
		[ConcurrencyStamp],
		[PhoneNumber], 
		[PhoneNumberConfirmed], 
		[TwoFactorEnabled],
		[LockoutEnd],
		[LockoutEnabled],
		[AccessFailedCount],
		[IsDeleted],
		[CreationDate],
		[UpdateDate])
    VALUES (@UserName, 
			@NormalizedUserName, 
			@Email,
            @NormalizedEmail, 
			@EmailConfirmed,
			@PasswordHash,
            @SecurityStamp, 
			@ConcurrencyStamp, 
			@PhoneNumber,
			@PhoneNumberConfirmed,
			@TwoFactorEnabled,
			@LockoutEnd,
			@LockoutEnabled,
			@AccessFailedCount,
			0,
			GETDATE(),
			GETDATE())

	SELECT CAST(SCOPE_IDENTITY() as INT)
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetUsers_i] TO [IdentityDbUser]
	AS [dbo]
GO