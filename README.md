# HackTheBox StartingPoint's Meow
This repository is to recreate the Machine of HackTheBox Starting Point's Meow.

## Steps to Run the Machine

1. Clone the repository
```
git clone https://github.com/Rao-Pranava/Meow.git
```

2. Move into the Directory
```
cd Meow
```

3. Run the `Make` file.
```
make build
```

## Commands to run the Docker file Manually

```
sudo docker build -t telnet .
```
```
sudo docker run -itd --rm -p 23:23 --hostname CP-Labs --name telnet telnet
```
```
sudo docker exec -i telnet systemctl start inetd
