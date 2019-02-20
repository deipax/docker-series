docker --version
docker run --rm -it -w /home/app/AccountOwnerServer/ -v ${PWD}:/home/app microsoft/dotnet dotnet build -c Release
docker run --rm -it -d -w /home/app/AccountOwnerServer/ -p 8080:5000 -v ${PWD}:/home/app microsoft/dotnet dotnet run
docker exec -it bc6fdf5178ce sh
docker ps -a
docker images
docker stop bc6fdf5178ce
docker-compose up -d
docker-compose up --build -d
docker-compose down
docker build -t accountownerservice .
docker run -p 8080:80 accountownerservice