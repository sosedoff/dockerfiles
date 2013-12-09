# dockerfiles

This is a collection of build files for Docker

## Images

- `01-base`    - Base image with all tools to build software and packages
- `01-redis`   - Redis server image
- `02-ruby`    - Ruby 2.0 image
- `02-sandbox` - Sandbox image with SSH server

## Build Images

```
cd imagedir
docker build -rm=true -t="name" .
```