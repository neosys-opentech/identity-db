ALTER TABLE [dbo].[AspNetRoleClaims] ADD CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles]
FOREIGN KEY (RoleId) REFERENCES [AspNetRoles] ([Id])
