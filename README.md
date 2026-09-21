# PME Plus

Minimal Astro static website running in Docker.

## Development

```sh
make build
make start
```

The site is available at <http://localhost:4321>.

Use `make shell` to open a shell in the running container and `make stop` to stop it.

## Static build

```sh
make site-build
```

The generated website is written to `dist/`.
