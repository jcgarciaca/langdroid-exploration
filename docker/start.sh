#! /bin/bash
docker build --network="host" -t milleinnovacion/langdroid-exploration:latest .

docker run -it --rm \
    --net="host" \
    --name langdroid-exploration \
    --env-file=.env \
    -v $(dirname $PWD):/home \
    milleinnovacion/langdroid-exploration:latest \
    /bin/bash