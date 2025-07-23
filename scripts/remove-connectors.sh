#!/bin/bash

# List of connector config files (filenames must end with .json)
CONNECTORS=("sqlserver-source.json" "sqlserver-sink-replica.json" "s3-minio-sink-parquet.json" "postgres-confluent-jdbc-sink-audit.json")

for file in "${CONNECTORS[@]}"; do
  name="${file%.json}"
  echo ""
  echo "Deleting connector: $name"
  response=$(curl -s -o /dev/null -w "%{http_code}" -X DELETE "http://localhost:8083/connectors/$name")
  if [[ "$response" == "204" ]]; then
    echo "Connector '$name' deleted successfully."
  else
    echo "Failed to delete connector '$name'. It may not exist or there was an error. HTTP status: $response"
  fi
done

echo ""
echo "All delete attempts completed."
echo "Current connectors:"
curl -s http://localhost:8083/connectors | jq .
