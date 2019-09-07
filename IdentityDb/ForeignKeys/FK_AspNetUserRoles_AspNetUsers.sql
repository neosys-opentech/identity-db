ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id])
