install:
  sudo apt-get update
  sudo apt-get install wget
  sudo apt-get install curl
  # Add microsoft packages for install .NET5.0
  wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb
  
  sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-5.0
  
  dotnet --info
  
  # Create the file repository configuration:
  sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

  # Import the repository signing key:
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

  # Update the package lists:
  sudo apt-get update

  # Install the latest version of PostgreSQL.
  # If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
  sudo apt-get -y install postgresql
