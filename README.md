# Docker Stacks

With `git` and `docker` installed, clone and run the stack yml file with `docker stack deploy`:

```bash
git clone --depth 1 https://github.com/diegogslomp/stacks
cd stacks
docker swarn init
docker stack deploy -c wordpress.yml wordpress
docker service ls
```
