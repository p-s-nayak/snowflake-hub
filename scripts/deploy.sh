#!/bin/bash

echo "Starting Snowflake deployment..."

for file in sql/*.sql
do
  echo "Executing $file"

  snowsql -a $SNOWFLAKE_ACCOUNT \
           -u $SNOWFLAKE_USER \
           -p $SNOWFLAKE_PASSWORD \
           -w $SNOWFLAKE_WAREHOUSE \
           -d $SNOWFLAKE_DATABASE \
           -s $SNOWFLAKE_SCHEMA \
           -f $file

done

echo "Deployment completed!"
