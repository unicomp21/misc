sudo docker build -t redpanda:001 .
sudo docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock redpanda:001 bash
