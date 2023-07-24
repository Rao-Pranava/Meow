# HackTheBox StartingPoint's Meow
This repository is to recreate the Machine of HackTheBox Starting Point's Meow.

## Steps to Run the Machine

1. Clone the repository
```
git clone 
```

## Commands to run the Docker file

```
sudo docker build -t telnet .
```
```
sudo docker run -itd --rm -p 23:23 --hostname CP-Labs --name telnet telnet
```
```
sudo docker exec -i telnet systemctl start inetd
