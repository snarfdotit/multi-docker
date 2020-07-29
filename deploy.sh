docker build -t franswessels/multi-client:latest -t franswessels/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t franswessels/multi-server:latest -t franswessels/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t franswessels/multi-worker:latest -t franswessels/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push franswessels/multi-client:latest
docker push franswessels/multi-server:latest
docker push franswessels/multi-worker:latest
docker push franswessels/multi-client:$SHA
docker push franswessels/multi-server:$SHA
docker push franswessels/multi-worker:$SHA

# kubectl apply -f k8s
#
# kubeclt set image deployments/client-deployment server=franswessels/multi-client:$SHA
# kubeclt set image deployments/server-deployment server=franswessels/multi-server:$SHA
# kubeclt set image deployments/worker-deployment server=franswessels/multi-worker:$SHA
