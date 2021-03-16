start:
	apt-get update
	apt-get upgrade
	apt-get install curl
	apt-get install wget
	# Install .NET5.0
	wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
	dpkg -i packages-microsoft-prod.deb
	apt-get update
	apt-get install -y apt-transport-https
	apt-get update
	apt-get install -y dotnet-sdk-5.0
	dotnet --info
	# Install PostgreSQL
	sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
	wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
	apt-get update
	apt-get -y install postgresql
	systemctl enable postgresql
