# Archipelago Web Docker

This repo contains a base to host an Archipelago Web Host using Docker Compose and SSL.

# Getting started

1. Clone [Archipelago](https://github.com/ArchipelagoMW/Archipelago/) next to this file.
   1. `git clone https://github.com/ArchipelagoMW/Archipelago.git`
   2. This project has been tested and built with release 0.6.2, so it is suggested to
      checkout the latest `0.6.3` tag.
2. Run the `init.sh` to create the necessary directories and config files.
3. If you plan on using the AlttP sprites, you need to provide the ROM
   `Zelda no Densetsu - Kamigami no Triforce (Japan).sfc` and place it in the `roms` folder.
4. Edit the `docker-compose.yaml` and `config.yaml` file to your liking, comments have
   been left in those files to guide you.
5. Configure the `.env` file with the necessary information.
6. Run `docker compose up -d` to start the server.

With the default config you should now be able to access the server using HTTPS on the host name
you selected in the `.env` file, on port 4750, as well as connect to the Rooms on ports 50000-50100.

## Home Network

If running this on your home network, you will need to forward the ports you selected in the `.env` file
to the proper local IP of your machine.

You might also want to use a dynamic DNS service to have a domain name pointing to your home network.

## Resources

- [Archipelago](https://github.com/ArchipelagoMW/Archipelago/)
- [Archipelago Discord](https://discord.gg/8Z65BR2)
- [nginx-proxy](https://github.com/nginx-proxy/nginx-proxy)
- [acme-companion](https://github.com/nginx-proxy/acme-companion)
- [acme-sh](https://github.com/acmesh-official/acme.sh)

