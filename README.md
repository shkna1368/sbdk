 make spring boot project with docker file

make docker account.
make docker repository
install docker desktop  and enale kubernetes in settings.

go to spring boot root folder in powershell :
 docker build -t shabab68/sbdk .

docker push shabab68/sbdk

kubectl create deployment sbdk --image=shabab68/sbdk
kubectl get depoloyment

kubectl get replicateset
kubectl describe shabab68/sbdk
kubectl describe pod sbdk
kubectl expose deployment.apps/sbdk --port=9090
kubectl port-forward service/sbdk 9090:9090
