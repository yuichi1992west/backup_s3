@echo off

rem backup_s3(Windows10)
rem Copyright (c) 2019 yuichi1992_west
rem This software is released under the MIT License.
rem http://opensource.org/licenses/mit-license.php

rem Specify the directory to back up.
set backup_folder="C:\tmp\

rem Specify the directory destination that compresses the temporarily specified backup source directory into zip.
set compresses_folder="D:"

rem Specify the backup AWS S3 bucket.
set backup_s3="s3://[S3 bucket name]"

rem Generate a date to perform backup.
set datefile=%date%
set datefile=%datefile:/=%

rem Harden the local backup source directory into a zip file
cd %compresses_folder%
powershell Compress-Archive -Path %backup_folder% -DestinationPath backup-%datefile%.zip

rem Upload the backup source zip to the AWS S3 bucket.
aws s3 mv "backup-%datefile%.zip" %backup_s3%

rem Check the directory of the uploaded AWS S3 bucket.
aws s3 ls %backup_s3%

exit 0