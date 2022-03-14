# rplum
R Plumber with Docker Demo


## File descriptions:

- `app.R` describes the endpoints of the server and respective request handler functions
- `server.R` sets up the server environment with plumber
- `Dockerfile` describes the setup of the docker container used to run the app


## Common Docker Commands :

```
$ docker images                     // To view install images
$ docker rmi <IMAGE_NAME>           // To remove an installed image

$ docker ps -a                      // To view all docker containers
$ docker stop <CONTAINER_NAME>      // To stop a docker container
$ docker rm <CONTAINER_NAME>        // To remove a docker container

$ docker exec -it <CONTAINER_NAME> bash    // Execute into container and run bash
```
