# Docker Stacks

Link docker-compose and env files:
```bash
ln -s owncloud.yml docker-compose.yml
ln -s owncloud.env .env
```

Run with `docker-compose`:
```bash
docker-compose up -d
docker ps
```

Or with `docker stack deploy`:
```bash
docker swarn init
docker stack deploy -c <(docker-compose config) owncloud
docker service ls
```
