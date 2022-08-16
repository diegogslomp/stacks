Docker compose/stack files. Test (Ctrl + c to exit):

```bash
cd postgres
docker compose up -d
docker compose logs -f
docker compose down -v
```

Deploy:

```Bash
docker swarm init
docker stack deploy -c postgres.yml
```
