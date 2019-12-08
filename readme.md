backup_s3
====

## Overview
This script uploads a local file to AWS S3 using the AWS CLI. Compatible with Window10 and CentOS8.

## Description
Compress the directory to be backed up into a zip or tar.gz file with the date (YYMMDD format) for backup. Then upload the compressed backup file to AWS S3 using AWS CLI.

## Demo
* Windows10
move: .\backup-20191208.zip to s3://xxxxxx/backup-20191208.zip
2019-12-08 23:01:23        349 backup-20191208.zip

* CentOS8
move: ./backup-20191208.tar.gz to s3://xxxxxx/backup-20191208.tar.gz
2019-12-08 22:09:12        629 backup-20191208.tar.gz

## Requirement
Check the following before using.
* You have created AWS S3 bucket..
* You have installed the AWS CLI.
* You have configured `aws configure` in the AWS CLI.

## Usage
* Windows10
Open a command prompt (administrator privileges) and execute `backup_s3.bat`.

* CentOS8
Open a terminal (root authority) and execute `backup_s3.sh`.

* Please confirm the following URL for Japanese explanation.
* https://qiita.com/yuichi1992_west/items/03d24cd7e74c9b02f4d8
* https://qiita.com/yuichi1992_west/items/85f9df3a164b765ce9f9

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## Author

[yuichi1992_west](https://qiita.com/yuichi1992_west)
