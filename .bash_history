sudo su
cat /etc/*release*
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo docker version
sudo docker run docker/whalesay cowsay Corona Go
docker ps
sudo su
docker images
sudo su
ls
mkdir First-Image
cd First-Image/
ls
touch Dockerfile
vi Dockerfile 
docker build -t takacsmark/alpine-smarter:1.0 .
docker build . -t takacsmark/alpine-smarter:1.0
docker build .
sudo docker build -t takacsmark/alpine-smarter:1.0 .
sudo docker images
sudo docker images -a
sudo docker ps
sudo su
