export AWS_ACCESS_KEY_ID=s3
export AWS_SECRET_ACCESS_KEY=s3
export AWS_DEFAULT_REGION=us-east-1

aws --endpoint-url=http://localhost:45053 s3 ls

aws --endpoint-url=http://localhost:45053 s3 mb s3://test-bucket

echo "hello" > test.txt

aws --endpoint-url=http://localhost:45053 \
  s3 cp test.txt s3://test-bucket/test.txt

aws --endpoint-url=http://localhost:45053 \
  s3 ls s3://test-bucket/