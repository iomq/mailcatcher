# mailcatcher (Ubuntu 14.04)
# 0.1.20151216.0

docker run -d -t -p "10800:1080" -p "25:25" --name mailcatcher iomq/mailcatcher

docker start mailcatcher


Browser
http://localhost:1080/
