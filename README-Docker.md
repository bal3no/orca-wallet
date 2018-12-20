# Docker recipe for [orca-wallet]

## Build

    docker build -t orca-wallet .


## Run Container

    docker run -d -p 8081:80 --mount type=bind,source="$(pwd)"/public,target=/var/www/html orca-wallet


## Open bash

    docker exec -it orca-wallet /bin/bash
