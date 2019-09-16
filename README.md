# identity-db

Custom SQL Server database project that is compatible with [Identity nuget](https://www.nuget.org/packages/Microsoft.AspNetCore.Identity/).

# Use cases

+ You need to use Identity without having to deal with EF Core and its imprevisible migrations.
+ You had already made a set of investment on other ORMs that doesn't provide Identity providers so you need to recreate the database and implement Identity stores manually.
+ You need to review database schema and maybe adjust it before deploying it to Dev/Staging/Prod environments.
+ You need to implement CI/CD for your Identity database.

# Deployment

Package this project as .dacpac file & and use MSBuild/SqlPackage to deploy it to a specified database.
Example:

```ps
msbuild IdentityDb.sqlproj /t:deploy /p:TargetConnectionString="Data Source=YourMachine%3BInitial Catalog=IdentityDb%3BIntegrated Security=True"
```

# Issues

If you find issues, performance problems, inconsistencies with the database project, please submit a PR/Issue and we'll fixe it ASAP. Thank you.
