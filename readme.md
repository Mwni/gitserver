# Standalone Docker Git Server

Lightweight git server that you can deploy on a Docker compatible system.
Clone the repository and run
```
docker compose up -d
```

- This will spawn the git server and bind it to port `6080`. Adjust this port in `docker-compose.yml`.
- The repositories will be stored in `./repos`. Adjust this in `docker-compose.yml`.


## Protect the server with username + password
By default, the server will ask for no credentials. Use the supplied `nginx-site-template.conf` to reverse proxy to the git server using an auth-basic `htpasswd` file.
