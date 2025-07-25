FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS base
WORKDIR /app
EXPOSE 80

COPY . .

RUN dotnet restore "Blanco_BankAPI/Blanco_BankAPI.csproj"

WORKDIR /app/Blanco_BankAPI

ENTRYPOINT ["dotnet", "run", "--urls", "http://0.0.0.0:80"]
