mvn clean clean package -DskipTests
docker build -t santiago-master .
docker tag santiago-master:latest 316078593388.dkr.ecr.us-east-1.amazonaws.com/santiago-master:latest
docker push 316078593388.dkr.ecr.us-east-1.amazonaws.com/santiago-master:latest
kubectl rollout restart deployment/cardgame-core-master
