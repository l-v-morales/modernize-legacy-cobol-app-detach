# Docker Instructions for COBOL Accounting System

## Build the Docker Image

```bash
docker build -t cobol-accounting-app .
```

## Run the Container

### Interactive Mode
```bash
docker run -it cobol-accounting-app
```

### Run with Volume Mount (for development)
```bash
docker run -it -v .:/app cobol-accounting-app bash
```

## Docker Commands Reference

### List all containers
```bash
docker ps -a
```

### List all images
```bash
docker images
```

### Start an existing container
```bash
docker start -ai <container_id>
```

### Commit changes to a new image
```bash
docker commit <container_id> <new_image_name>
```

### Remove container
```bash
docker rm <container_id>
```

### Remove image
```bash
docker rmi <image_name>
```

## Testing the Application

Once the container is running, test the application by selecting options:
1. View Balance
2. Credit Account
3. Debit Account
4. Exit
