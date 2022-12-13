mvn clean package -DskipTests
docker build -t santiago-gateway .
docker tag santiago-gateway:latest 316078593388.dkr.ecr.us-east-1.amazonaws.com/santiago-gateway:latest
docker push 316078593388.dkr.ecr.us-east-1.amazonaws.com/santiago-gateway:latest
kubectl rollout restart deployment/cardgame-core-gateway