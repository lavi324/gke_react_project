node server.js
nano TableData.js
cd ..
nano server.js
npm start
node server.js
nano server.js
node server.js
nano server.js
node server.js
nano server.js
node server.js
nano server.js
node server.js
ls
cd server
ls
cd mongo-table-app
nano server.js
npm start
node server.js
nano server.js
node server.js
nano server.js
rm server.js
nano server.js
node server.js
nano server.js
node server.js
nano server.js
node server.js
cd server
ls
cd 
cd mongo-table-app
npm start
node server.js
nano server.js
node server.js
nano server.js
node server.js
cd server
ls
cd mongo-table-app
node server.js
nano server.js
npm start
ls
cd src
nano App.js
ls
nano TableData.js
node server.js
nano server.js
npm start
nano TableData.js
cd ..
node server.js
kubectl get all -n mongo
npm start
ls
cd src
ls
ls
nano server.js
cd ..
node server.js
nano server.js
node server.js
cd ..
cd server
nano server.js
cd ..
ls
rm -rf
npm start
rm -rf mongo-table-app
rm -rf server
mkdir backend
cd backend
npm init -y
npm install express mongoose cors
cd server.js
nano server.js
nano teams.route.js
nano team.model.js
cd ..
npx create-react-app frontend
cd frontend
npm install axios
cd src
nano App.js
cd ..
cd backend
node server.js
npm start
nano server.js
node server.js
nano server.js
cd..
cd ..
ls
rm -rf frontend
rm -rf backend
ls
npx create-react-app frontend
cd frontend
cd src
nano App.js
npm start
npm run build
ls
cd ..
ls
nano Dockefile
rename Dockefile Dockerfile
rm Dockefile 
nano Dockerfile
docker build -t react_image:0.1 .
docker tag react_image:0.1 lavi324/react_project:0.1
docker push lavi324/react_project:0.1
ls
cd ..
ls
nano deployment.yaml
nano service.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get all
nano deployment.yaml
kubectl apply -f deployment.yaml
kubectl get all
kubectl create ns prometheus
kubectl create ns jenkins
kubectl create ns argo
helm repo add jenkins https://charts.jenkins.io
helm repo update
helm install jenkins jenkins/jenkins
kubectl config set-context --current --namespace=jenkins
helm install jenkins jenkins/jenkins
kubectl get all
kubectl edit service/jenkins
kubectl get all
kubectl get secrets
kubectl get secret jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode
kubectl get ns
kubectl config set-context --current --namespace=argo
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
helm install argo-cd argo/argo-cd
kuectl get all
kubectl get all
kubectl edit service/argo-cd-argocd-server
kubectl get all
kubectl -n argo get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm search repo prometheus-community
kubectl get all
kubectl config set-context --current --namespace=prometheus
kubectl get all
kubectl edit service/prometheus-server
kubectl get all
kubectl config set-context --current --namespace=prod
kubectl get all
kubectl delete all --all
ls
git init
git remote add origin https://github.com/lavi324/gke_react_project.git
git commit -m "first commit"
git config --global user.email lavialduby@gmail.com
git config --global user.name lavi324
git commit -m "first commit"
git add .
git remote add origin https://github.com/lavi324/gke_react_project.git
git add .
git commit -m "first commit"
git push -u origin main
git push origin main
git branch -M main
git push -u origin main
cd frontend
nano Dockerfile
pwd
mv Dockerfile /home/doritalduby/frontend /home/doritalduby
mv /home/doritalduby/frontend/Dockerfile /home/doritalduby/
ls
cd ..
ls
nano Dockerfile
mkdir my_react_chart
cd my_react_chart
mkdir templates
cd templates
pwd
mv deployment.yaml service.yaml /home/doritalduby/my_react_chart/templates
ls
cd ..
mv deployment.yaml service.yaml /home/doritalduby/my_react_chart/templates
cd my_react_chart
cd templates
ls
cd ..
nano chart.yaml
nano values.yaml
ls
touch values.yaml
ls
nano values.yaml
cd ..
git add .
git commit -m "commit"
git push -u origin main
la
halm package my_react_chart
helm package my_react_chart
cd my_react_chart
ls
mv chart.yaml Chart.yaml
ls
cd ..
helm package my_react_chart
helm push my-react-chart-0.1.0.tgz oci://registry-1.docker.io/lavi324
kubectl config set-context --current --namespace=prod
kubectl get all
cd frontent
cd frontend
cd src
nano App.js
cd ..
ls
nano Dockerfile
cd ..
rm Dockerfile
cd frontend
git add .
git commit -m "new"
git pish origin main
git push origin main
nano Jenkinsfile
nano build-pod.yaml
nano Jenkinsfile
cd ..
git add .
git commit -m "new"
git push origin main
cd frontend
ls
pwd
mv Jenkinsfile build-pod.yaml Dockerfile /home/doritalduby/
ls
cd ..
ls
git add .
git commit -m "new"
git push origin main
ls
mv build-pod.yaml Build-pod.yaml
ls
git add .
git commit -m "new"
git push origin main
nano Jenkinsfile
git add .
git commit -m "new"
git push origin main
nano Jenkinsfile
git add .
git commit -m "new"
git push origin main
nano Jenkinsfile
git add .
git commit -m "new"
git push origin main
nano Jenkinsfile
git add .
git commit -m "new"
git push origin main
kubectl get all
kubectl config set-context --current --namespace=jenkins
kubectl get all
kubectl exec -it jenkins-0 -- /bin/bash
ls
mkdir new
cd new
nano Dockerfile
rm Dockerfile
nano Dockerfile
docker build -t lavi324/node_dind_image:latest .
nano Dockerfile
rm Dockerfile
nano Dockerfile
docker build -t lavi324/node_dind_image:latest .
nano Dockerfile
rm Dockerfile
nano Dockerfile
docker build -t lavi324/node_dind_image:latest .
rm Dockerfile
nano Dockerfile
docker build -t lavi324/node_dind_image:latest .
rm Dockerfile
nano Dockerfile
docker build -t lavi324/node_dind_image:latest .
rm Dockerfile
nano Dockerfile
docker build -t lavi324/node_dind_image:latest .
rm Dockerfile
nano Dockerfile
docker build -t lavi324/node_dind_image:latest .
rm Dockerfile
nano Dockerfile
docker build -t lavi324/node_dind_image:latest .
rm Dockerfile
nano Dockerfile
docker build -t lavi324/node_dind_image:latest .
rm Dockerfile
nano Dockerfile
docker build -t lavi324/node_dind_image:latest .
rm Dockerfile
nano Dockerfile
docker build -t lavi324/node_dind_image:latest .
docker tag lavi324/node_dind_image:latest lavi324/node_dind_image:latest
docker push lavi324/node_dind_image:latest
cd ..
nano Build-pod.yaml
git add .
git commit -m "new"
git push origin main
nano jenkinsfile
ls
nano Jenkinsfile
rm Jenkinsfile
nano Jenkinsfile
la
nano App.js
nano Jenkinsfile
git add .
git commit -m "new"
git push origin main
nano App.js
ls
nano Jenkinsfile
rm Jenkinsfile
nano Jenkinsfile
rm Jenkinsfile
nano Jenkinsfile
git add .
git commit -m "new"
git push origin main
ls
rm App.js
cd frontend
cd ..
rm cd new
ls
cd new
ls
cd ..
ls
nano Jenkinsfile
git add .
git commit -m "new"
git push origin main
ls -la
cd frontend
ls
nano Jenkinsfile
rm Jenkinsfile
cd ..
nano Jenkinsfile
git add .
git commit -m "new"
git push origin main
nano Jenkinsfile
git add .
git commit -m "new"
git push origin main
cd frontend
ls
cd ..
nano Dockerfile
git add .
git commit -m "new"
git push origin main
ls
cd my_react_chart
ls
nano Chart.yaml
cd templates
ls
nano deployment.yaml
git add .
cd ..
git add .
git commit -m "new"
git push origin main
helm package my_react_chart
ls
helm push my-react-chart-0.1.1.tgz oci://registry-1.docker.io/lavi324
kubectl config set-context --current --namespace=argo
kubectl -n argo get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
ls
nano Jenkinsfile
rm Jenkinsfile
nano Jenkinsfile
cd frontend
ls
cd src
nano App.py
nano App.js
cd ..
nano Jenkinsfile
cd my_react_chart
ls
nano Chart.yaml
cd templates
ls
nano deployment.yaml
cd ..
git add .
git commit -m "new"
git push origin main
helm package my_react_chart
helm push my-react-chart-0.1.2.tgz oci://registry-1.docker.io/lavi324
kubectl -n argo get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
eff
nano Jenkinsfile
cd my_react_chart
nano Chart.yaml
cd templates
nano deployment.yaml
cd ..
cd frontend
cd src
nano App.js
cd ..
git add .
git commit -m "new"
git push origin main
cd new
ls
nano Dockerfile
docker build -t lavi324/node_dind_image:0.1 .
nano Dockerfile
docker build -t lavi324/node_dind_image:0.1 .
docker push lavi324/node_dind_image:0.1
cd ..
ls
nano Build-pod.yaml
git add .
git commit -m "new"
docker push lavi324/node_dind_image:0.1
git push origin main
nano Jenkinsfile
git add .
git commit -m "new"
git push origin main
ls
helm package my_react_chart
helm push my-react-chart-0.1.3.tgz oci://registry-1.docker.io/lavi324
cd frontend
cd src
nano App.py
nano App.js
cd ..
nano Jenkinsfile
cd my_react_chart
nano Chart.yaml
cd templates
nano deployment.yaml
cd ..
nano Jenkinsfile
git add .
git commit -m "new"
git push origin main
cd frontend
ls
cd ..
ls
mv new build-pod-image
ls
git add .
git commit -m "new"
git push origin main
git remote add origin https://github.com/lavi324/gke_react_project.git
git remote add origin http://github.com/lavi324/gke_react_project.git
git remote -v
git push origin main
git config --global credential.helper cache
git push origin main
git login
git config
git config --global user.name "lavi324"
git config --global user.email "lavialduby@gmail.com"
git push origin main
git remote -v
git config --global credential.helper cache
git push origin main
git config --global credential.helper 'cache --timeout=3600'
git push origin main
kubectl get nodes
pwd
ls
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
sudo apt-get install bc
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
ls
nano Jenkinsfile
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
nano Jenkinsfile
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
nano Jenkinsfile
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
nano Jenkinsfile
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
nano Jenkinsfile
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
nano Jenkinsfile
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
nano Jenkinsfile
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
nano Jenkinsfile
nano increment_versions.sh
rm increment_versions.sh
nano Jenkinsfile
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
nano Jenkinsfile
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
nano Jenkinsfile
rm increment_versions.sh
nano increment_versions.sh
chmod +x increment_versions.sh
./increment_versions.sh
nano Jenkinsfile
ls
cd my_react_chart
cd templates
pwd 
nano deployment.yaml
pwd
cd ..
ls
nano Chart.yaml
cd ..
