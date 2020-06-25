DATE=$(date +%H-%M-%S)
OBJECT=db-$DATE.sql
hostname=$1
password=$2
DBName=$3
AWS_SECRET_KEY_ID=$4
BUCKET=$5
dbback=db-$DATE.sql
mysqldump -u root -h $hostname -p$password $DBName > /tmp/db-$DATE.sql
export AWS_ACCESS_KEY_ID=AKIAYCDPRQUMJLFRTTG4
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_KEY_ID
aws s3 cp /tmp/db-$DATE.sql s3://$BUCKET/$dbback