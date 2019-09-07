ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
FOREIGN KEY ([RoleId]) REFERENCES [AspNetRoles] ([Id])
