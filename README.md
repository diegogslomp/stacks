Docker compose/stack files. Test:

```bash
cd postgres
docker compose up -d
```

Deploy:

```Bash
docker swarm init
docker stack deploy -c postgres.yml
```
