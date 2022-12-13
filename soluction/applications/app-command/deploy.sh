mvn clean clean package -DskipTests
docker build -t santiago-command .
docker tag santiago-command:latest 316078593388.dkr.ecr.us-east-1.amazonaws.com/santiago-command:latest
docker push 316078593388.dkr.ecr.us-east-1.amazonaws.com/santiago-command:latest
kubectl rollout restart deployment/cardgame-core-command