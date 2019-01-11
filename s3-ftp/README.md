## How to Use

> docker run --rm -p 22:22 --name serviceName --cap-add SYS_ADMIN --device /dev/fuse -e "CONFIG_BUCKET=s3-config-bucket" -e "USERS=user:hashedPassword" -e "FTP_BUCKET=s3-bucket" -e "AWS_ACCESS_KEY_ID=yourKey" -e "AWS_SECRET_ACCESS_KEY=yourSecret" -e "IAM_ROLE=yourHostIAMRole" --privileged -d wenance/s3-ftp 

Passwords should be hashed. There are several ways to hash a user password. A common way is to execute a command like the following: openssl passwd -crypt {your_password}. Substitute {your_password} with the one you want to hash.

## Environment Variables

    USERS = List of users to add to the ftp/sftp server. Listed in the form username:hashedpassword, each separated by a space.
    FTP_BUCKET = S3 bucket where ftp/sftp users data will be stored.
    CONFIG_BUCKET = S3 bucket where the config data (env.list file) will be stored. This file is readed every 60 seconds searching for new USERS or changes in passwords.
    IAM_ROLE = name of role account linked to EC2 instance the container is running in.

## Optional Environment Variables

These two environment variables only need to be set if there is no linked IAM role to the EC2 instance.

    AWS_ACCESS_KEY_ID = IAM user account access key.
    AWS_SECRET_ACCESS_KEY = IAM user account secret access key.
