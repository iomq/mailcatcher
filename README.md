
# mailcatcher (Ubuntu 16.04)

# 0.4.20191118.0

docker run -d -t -p "10800:1080" -p "25:25" --name mailcatcher iomq/mailcatcher

docker start mailcatcher

Browser
http://localhost:1080/
