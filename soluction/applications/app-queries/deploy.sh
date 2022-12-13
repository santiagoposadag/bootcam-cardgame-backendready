mvn clean package -DskipTests
docker build -t santiago-queries .
docker tag santiago-queries:latest 316078593388.dkr.ecr.us-east-1.amazonaws.com/santiago-queries:latest
docker push 316078593388.dkr.ecr.us-east-1.amazonaws.com/santiago-queries:latest
kubectl rollout restart deployment/cardgame-core-queries