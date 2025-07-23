# set alias
./mc alias set myminio http://localhost:9000 minioadmin minioadmin

# 2. Create the specified buckets
./mc mb myminio/cdc-parquet-datalake
./mc mb myminio/flattened-data-lake