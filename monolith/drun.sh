docker run -d --network=reddit -v reddit_db:/data/db --network-alias=post_db --network-alias=comment_db mongo:latest
docker run -d --network=reddit --network-alias=post bulanov/post:1.0
docker run -d --network=reddit --network-alias=comment bulanov/comment:1.0
docker run -d --network=reddit -p 9292:9292 bulanov/ui:2.0
