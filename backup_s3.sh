#!/bin/sh

<< COMMENTOUT
backup_s3(CentOS8)
Copyright (c) 2019 yuichi1992_west
This software is released under the MIT License.
http://opensource.org/licenses/mit-license.php
COMMENTOUT

# Specify the directory to back up.
backup_directory='/home/test'

# Specify the directory destination that compresses the temporarily specified backup source directory into tar.gz.
compresses_directory='/tmp'

# Specify the backup AWS S3 bucket.
backup_s3='s3://s3-test-20191201'

# Generate a date to perform backup.
backup_date=`date "+%Y%m%d"`

# Harden the local backup source directory into a tar.gz file
tar -zcvf "${compresses_directory}"/backup-"${backup_date}".tar.gz -P "${backup_directory}"

# Upload the backup source tar.gz to the AWS S3 bucket.
aws s3 mv "${compresses_directory}"/backup-"${backup_date}".tar.gz "${backup_s3}"

# Check the directory of the uploaded AWS S3 bucket.
aws s3 ls "${backup_s3}"

exit 0