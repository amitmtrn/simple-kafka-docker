# Simple Kafka Docker 

in `server.properties` replace the `advertised.listeners` with the planned container ip

build the image
```bash
docker build .
```

find the kafka image
```bash
docker images
```

run the container (replace image_id with your image id)
```bash
docker run <image_id>
```