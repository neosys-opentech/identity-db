CREATE PROCEDURE [dbo].[ps_AspNetRoles_d]
	@Id int = NULL
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

        DELETE FROM [dbo].[AspNetUserRoles] WHERE RoleId = @Id

		UPDATE [dbo].[AspNetRoleClaims] WITH(ROWLOCK) 
		SET [IsDeleted] = 1, [UpdateDate] = GETDATE() 
		WHERE RoleId = @Id AND IsDeleted = 0

		DECLARE @nameGuid varchar(max) = upper(newid())

		UPDATE [dbo].[AspNetRoles] WITH(ROWLOCK) 
		SET [IsDeleted] = 1, [UpdateDate] = GETDATE(),
			[Name] = CONCAT([Name], @nameGuid), [NormalizedName] = CONCAT([NormalizedName], @nameGuid)
		WHERE Id = @Id AND IsDeleted = 0

        COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK
	END CATCH
END
GO

GRANT EXECUTE
	ON OBJECT::[dbo].[ps_AspNetRoles_d] TO [IdentityDbUser]
	AS [dbo]
GO
