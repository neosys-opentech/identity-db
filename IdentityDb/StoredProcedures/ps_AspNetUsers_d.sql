CREATE PROCEDURE [dbo].[ps_AspNetUsers_d]
	@Id INT = 0
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

        UPDATE [dbo].[AspNetUserClaims] WITH(ROWLOCK) 
		SET [IsDeleted] = 1, [UpdateDate] = GETDATE() 
		WHERE UserId = @Id AND IsDeleted = 0

		UPDATE [dbo].[AspNetUserLogins] WITH(ROWLOCK)
		SET [IsDeleted] = 1, [UpdateDate] = GETDATE()
		WHERE UserId = @Id AND IsDeleted = 0

		DELETE FROM [dbo].[AspNetUserRoles] WHERE UserId = @Id

		DELETE FROM [dbo].[AspNetUserTokens] WHERE UserId = @Id

		DECLARE @nameGuid varchar(max) = upper(newid())

		UPDATE [dbo].[AspNetUsers] WITH(ROWLOCK)
		SET [IsDeleted] = 1, [UpdateDate] = GETDATE(),
			[UserName] = CONCAT([UserName], @nameGuid), [NormalizedUserName] = CONCAT([NormalizedUserName], @nameGuid)
		WHERE Id = @Id AND IsDeleted = 0

        COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK
	END CATCH
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetUsers_d] TO [IdentityDbUser]
	AS [dbo]
GO