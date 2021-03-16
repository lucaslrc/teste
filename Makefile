start:
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install curl
	sudo apt-get install wget
	# Install .NET5.0
	wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
	sudo dpkg -i packages-microsoft-prod.deb
	sudo apt-get update
	sudo apt-get install -y apt-transport-https
	sudo apt-get update
	sudo apt-get install -y dotnet-sdk-5.0
	dotnet --info
	# Install PostgreSQL
	sudo apt-get update
	sudo apt-get install postgresql-12
