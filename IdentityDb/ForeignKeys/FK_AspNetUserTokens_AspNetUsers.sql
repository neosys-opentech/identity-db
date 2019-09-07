ALTER TABLE [dbo].[AspNetUserTokens] ADD CONSTRAINT [FK_AspNetUserTokens_AspNetUsers]
FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id])
