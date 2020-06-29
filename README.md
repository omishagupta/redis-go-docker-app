# ops-task

To execute the setup, run `./vagrant_boot.sh`
Choose the underlying infra, docker-compose [1] or Kubernetes [2] for executing the code.

## Requirements

- Vagrant
- Ansible

## Code flow 

![Alt text](./images/code-flow.jpg "Code Flow")

## Screenshots: 
### - Docker-compose
![Alt text](./images/docker.png "Code Flow")

### - Kubernetes
![Alt text](./images/k8s.png "Code Flow")


## Directory structure
```
├── Vagrantfile
├── ansible
│   ├── playbook.yml
│   └── roles
│       ├── app
│       │   └── tasks
│       │       └── main.yml
│       ├── common
│       │   ├── handlers
│       │   │   └── main.yml
│       │   └── tasks
│       │       └── main.yml
│       ├── docker
│       │   ├── handlers
│       │   │   └── main.yml
│       │   └── tasks
│       │       └── main.yml
│       └── kubernetes
│           └── tasks
│               └── main.yml
├── kubernetes
│   ├── app.yml
│   ├── namespace.yml
│   └── redis.yml
├── src
│   ├── Dockerfile
│   ├── Makefile
│   ├── README.md
│   ├── docker-compose.yml
│   ├── go.mod
│   ├── go.sum
│   ├── main.go
│   └── redis-data
│       └── dump.rdb
└── vagrant-bootup.sh
```