#!/bin/bash

# List of connector config files
CONNECTORS=("sqlserver-source.json" "sqlserver-sink-replica.json" "s3-minio-sink-parquet.json" "postgres-confluent-jdbc-sink-audit.json"); 

echo ""
echo "Waiting for Kafka Connect to be up..."
echo "Trying to connect to Kafka Connect..."

# Wait for Kafka Connect REST API to respond
while true; do
  if curl -s http://localhost:8083/connector-plugins > /dev/null; then
    echo "Kafka Connect is up."
    break
  else
    echo "No response found. Retrying in 4 seconds..."
    sleep 4
  fi
done

echo ""
echo "Response received:"
curl -s http://localhost:8083/connector-plugins | jq .
echo ""
echo "Registering connectors..."

# Register each connector
for connector in "${CONNECTORS[@]}"; do
  if [[ -f "./kafka-connect/$connector" ]]; then
    curl -s -X POST -H "Content-Type: application/json" --data @"../kafka-connect/$connector" http://localhost:8083/connectors
    echo "Config: $connector registered."
  else
    echo "File not found: ./kafka-connect/$connector"
  fi
done

echo ""
echo ""
echo "CONNECTORS:"
curl -s http://localhost:8083/connectors | jq .
