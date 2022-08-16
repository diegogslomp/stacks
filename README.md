Docker compose/swarm files. Test (Ctrl+c to exit):

```bash
cd postgres
docker compose -f postgres.yml up -d
docker compose -f postgres.yml logs -f
docker compose -f postgres.yml down -v
```

Deploy:

```Bash
docker swarm init
docker stack deploy -c postgres.yml
```
