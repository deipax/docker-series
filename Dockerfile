FROM microsoft/dotnet
 
WORKDIR /home/app

COPY ["AccountOwnerServer/bin/Release/netcoreapp2.2/publish", "/home/app"]
COPY ["Configs/Release/appsettings.json", "/home/app"]
COPY ["Configs/Release/nlog.config", "/home/app"]
 
ENTRYPOINT ["dotnet", "AccountOwnerServer.dll"]