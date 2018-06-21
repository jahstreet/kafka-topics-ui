#!/bin/bash

tag=${1:-"aksregistryprod.azurecr.io/kafka-topics-ui:0.9.3"}
no_cache="$2"

docker build . $no_cache -t $tag && \
docker push $tag && \
echo "Done! Enjoy..." || echo "ERROR! Check logs..."
