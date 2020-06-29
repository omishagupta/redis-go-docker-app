# ops-task

To execute the setup, follow `vagrant_boot.sh`
Choose the underlying infra, docker-compose [1] or Kubernetes [2] for executing the code.


## Code flow 

![Alt text](./ops-task-code-flow-v1.jpg "Code Flow")

## Directory structure
```
── README.md
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
├── ops-task-code-flow-v1.jpg
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
├── vagrant-ansible
│   └── Vagrantfile
└── vagrant-bootup.sh
```