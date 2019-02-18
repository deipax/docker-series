FROM microsoft/dotnet:2.2.2-aspnetcore-runtime-alpine3.8
 
WORKDIR /home/app

COPY ["AccountOwnerServer/bin/Release/netcoreapp2.2/publish", "/home/app"]
COPY ["Configs/Release/appsettings.json", "/home/app"]
COPY ["Configs/Release/nlog.config", "/home/app"]
 
ENTRYPOINT ["dotnet", "AccountOwnerServer.dll"]