﻿ALTER TABLE [dbo].[AspNetUserClaims] ADD CONSTRAINT [FK_AspNetUserClaims_AspNetUsers]
FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id])
