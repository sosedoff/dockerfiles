# dockerfiles

This is a collection of build files for Docker.

## Install

First, you'll need to prepare your host before installing Docker:

```
apt-get update -y
apt-get install -y git-core
apt-get install -y linux-image-generic-lts-raring linux-headers-generic-lts-raring
reboot
```

After reboot, execute the following command to install Docker:

```
curl -s https://get.docker.io/ubuntu/ | sudo sh
```

## Images

- `base`    - Base image with build tools and packages
- `sandbox` - Sandbox image for SSH connections

### Language runtimes

- `ruby`   - Ruby 2.0
- `nodejs` - Node.js 0.10
- `go`     - Go 1.2
- `erlang` - Erlang R16B03

### Databases

- `elasticsearch` - ElasticSearch 0.90.x search engine with OpenJRE 7
- `mongodb`       - MongoDB database server 2.4.x
- `mysql`         - MySQL database server 5.5.x
- `postgresql`    - PostgreSQL database server 9.3
- `redis`         - Redis key-value storage engine 2.8.x
- `rabbitmq`      - RabbitMQ message queue server 3.2.x