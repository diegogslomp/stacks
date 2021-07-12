# Docker Stacks

Using docker swarm:

```bash
docker swarm init
docker stack deploy -c wordpress.yml wordpress
docker service ls
```

Or with docker-compose:
```bash
ln -s wordpress.yml docker-compose.yml
docker-compose up -d
docker ps
```
