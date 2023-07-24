Help:
	@echo "Usage: make [Command]"
	@echo "Commands:"
	@echo "  Build   : Build the Docker image"
	@echo "  Run     : Run the Docker container"
	@echo "  All    : Build and run the Docker container"
	@echo "  Help    : Show this help message"

Build:
	sudo docker build -t telnet .

Run:
	sudo docker run -itd --rm -p 23:23 --hostname CP-Labs --name telnet telnet && sudo docker exec -i telnet systemctl start inetd

All: Build Run

Stop:
	sudo docker stop telnet

.PHONY: Help Build Run All