FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY . ./irsapp/
RUN nuget restore ./irsapp/IRS.sln

# copy everything else and build app
WORKDIR /app/irsapp
RUN msbuild /p:Configuration=Release /p:AllowUntrustedCertificate=True /p:CreatePackageOnPublish=True
RUN msbuild /p:DeployOnBuild=true /p:PublishProfile= /property:WarningLevel=2  /p:OutDir=/app/irsapp/publish




From mcr.microsoft.com/dotnet/framework/aspnet:4.8
RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*
WORKDIR /inetpub/wwwroot
COPY --from=build /app/irsapp/publish/_PublishedWebsites/IRS/. ./


