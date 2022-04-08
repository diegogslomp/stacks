# Docker Stacks

With `git` and `docker` installed, clone and run the stack yml file with `docker stack deploy`:

```bash
docker swarn init
git clone --depth 1 https://github.com/diegogslomp/stacks
cd stacks/web
docker stack deploy -c wordpress.yml wordpress
docker service ls
```
