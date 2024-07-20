apt update
apt upgrade -y
apt install -y wget gcc
wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz
rm -rf /usr/local/go
tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
echo 'export CGO_CFLAGS="-g"' >> ~/.bashrc
source ~/.bashrc
rm -f go1.22.3.linux-amd64.tar.gz
go mod init nourit
go generate ./
go build .