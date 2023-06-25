# opbnb-node-docker

## Hardware requirements
Replicas must store the transaction history of opBNB and run Geth. For optimal performance, they should be powerful machines (real or virtual) with at least 16 GB RAM and an SSD drive with 500 GB free space (for production network).
## Software Requirements

git  
docker  

## Running Your Own opBNB Node

Follow the steps below to run your own opBNB node:

1. Use git clone to clone this repository to your local machine and enter the opbnb-node-docker folder:

    ```
    git clone https://github.com/bnb-chain/opbnb-node-docker.git
    cd opbnb-node-docker
    
    ```

2. Copy `.env.example`, and name it `.env`:

    ```
    cp .env.example .env
    
    ```

3. Fill in all the `REQUIRED` parts in the `.env` file.
4. Generate `jwt.txt` (Optional):

    ```
    openssl rand -hex 32 > jwt.txt
    
    ```

5. Once everything is ready, use the command to start the node: `docker compose up -d`

## Operating the Node

### Start

```
docker compose up -d

```

### Stop

```
docker compose down

```

### Wipe

```
docker compose down -v

```

Note: This operation will delete volumes created by the container, thus deleting the data completely. This is a destructive operation, so please be careful.

### Logs

```
docker compose logs <service name>

```

This will show the logs of the specified service. You can add the `-f` parameter to get real-time scrolling logs.

### Update

```
docker compose pull

```

This will download the latest version of the image to run with the latest code.
