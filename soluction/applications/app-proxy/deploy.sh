mvn clean package -DskipTests
docker build -t santiago-proxy .
docker tag santiago-proxy:latest 316078593388.dkr.ecr.us-east-1.amazonaws.com/santiago-proxy:latest
docker push 316078593388.dkr.ecr.us-east-1.amazonaws.com/santiago-proxy:latest
kubectl rollout restart deployment/cardgame-core-proxy