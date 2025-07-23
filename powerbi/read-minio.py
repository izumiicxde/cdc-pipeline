import boto3
import pandas as pd
import pyarrow.parquet as pq
from io import BytesIO

# MinIO configuration
endpoint = "http://localhost:9000"
access_key = "minioadmin"
secret_key = "minioadmin"
bucket_name = "cdc-parquet-datalake"
output_file = "C:/powerbi/cdc_parquet_data.csv"

# Connect to MinIO
s3_client = boto3.client(
    "s3",
    endpoint_url=endpoint,
    aws_access_key_id=access_key,
    aws_secret_access_key=secret_key
)

# Initialize list to store DataFrames
dfs = []

# Recursively list all Parquet files with pagination
def list_all_parquet_files(bucket, prefix=""):
    all_files = []
    continuation_token = None
    while True:
        params = {"Bucket": bucket, "Prefix": prefix}
        if continuation_token:
            params["ContinuationToken"] = continuation_token
        response = s3_client.list_objects_v2(**params)
        for obj in response.get("Contents", []):
            if obj["Key"].endswith(".parquet"):
                all_files.append(obj["Key"])
        if response.get("IsTruncated", False):
            continuation_token = response.get("NextContinuationToken")
        else:
            break
    return all_files

# Get all Parquet files
parquet_files = list_all_parquet_files(bucket_name)

# Read each Parquet file
for file_key in parquet_files:
    try:
        parquet_obj = s3_client.get_object(Bucket=bucket_name, Key=file_key)
        parquet_data = parquet_obj["Body"].read()
        df = pq.read_table(BytesIO(parquet_data)).to_pandas()
        # Optionally add metadata (e.g., table name, year, month, day)
        path_parts = file_key.split("/")
        if len(path_parts) >= 4:
            df["table_name"] = path_parts[0].split(".")[-1]  # e.g., User, Blog
            df["year"] = path_parts[-4] if len(path_parts) >= 4 else ""
            df["month"] = path_parts[-3] if len(path_parts) >= 3 else ""
            df["day"] = path_parts[-2] if len(path_parts) >= 2 else ""
        dfs.append(df)
    except Exception as e:
        print(f"Error reading {file_key}: {str(e)}")

# Concatenate DataFrames and save to CSV
if dfs:
    final_df = pd.concat(dfs, ignore_index=True)
    final_df.to_csv(output_file, index=False)
else:
    raise Exception("No Parquet files loaded")

# Output to Power BI
final_df