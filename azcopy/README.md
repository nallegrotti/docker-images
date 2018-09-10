From [hawaku/azcopy](https://github.com/hawaku/docker-azcopy)

Extended to use custom MIMETypeMappings

AzCopy on Docker
Usage
Copy all blobs to another storage account
docker run -it --rm hawaku/azcopy azcopy \
    --source https://myaccount.blob.core.windows.net/mycontainer1 \
    --destination https://myaccount.blob.core.windows.net/mycontainer2 \
    --source-key <key> \
    --dest-key <key>
    --recursive
    --set-content-type