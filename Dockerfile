# Dockerfile for devcontainer of this repo

FROM ros:foxy

RUN apt update && apt install -y wget nano

RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN sudo dpkg -i packages-microsoft-prod.deb && rm packages-microsoft-prod.deb
RUN sudo apt update && sudo apt install -y dotnet-sdk-6.0