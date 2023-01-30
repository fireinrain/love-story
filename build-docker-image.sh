docker build -t love-story:v1.0.0 .

#tag name
docker tag love-story:v1.0.0 liuzy/love-story:latest

# push to docker hub
docker push liuzy/love-story:latest

# clean docker images
# shellcheck disable=SC2006
imagesId=`docker images | grep love-story | awk '{print $3}'`
echo $imagesId
for str in $imagesId
do
  docker rmi $str -f
done