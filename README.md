# home-ansible

### Guide
To deploy a docker container, put the docker-compose file in `/roles/docker-deploy/template/<application-name>/docker-compose.yaml.j2` (ensure the .j2 file extension is give and not the `application-name` for future reference)

Run the playbook
```
# THIS WILL DEPLOY THE DOCKER COMPOSE ON ALL HOSTS UNDER [services] IN THE INVENTORY FILE
ansible-playbook setup-application.yml -i inventory.ini -vv

# IF THE DOKCER COMPOSE TEMPLATE IS MAKING USE OF ANY VAULTED VARIABLES, RUN:
ansible-playbook setup-application.yml -i inventory.ini --ask-vault-pass -vv

# IF THERE ARE MULTIPLE HOSTS UNDER [services] IN THE INVENTORY FILE AND YOU WANT TO TARGET SPECIFIC ONE/ONES, RUN:
ansible-playbook setup-application.yml -i inventory.ini --limit <target-host> --ask-vault-pass -vv
```

### Ports in use
| PORT   | SERVICE        |
| ------ | -------------- |
| 5051   | dockge         |
| 80     | traefik        |
| 443    | traefik        |
| 8080   | traefik UI     |
