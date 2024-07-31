
# create:
# 	@kubectl create -f WORDPRESS/namespaces.yaml --save-config --record
# 	@kubectl create -f WORDPRESS/ClusterRoleBinding.yaml --save-config --record
# 	@kubectl create -f WORDPRESS/services.yaml --save-config --record
# 	@kubectl create -f WORDPRESS/pv.yaml --save-config --record
# 	@kubectl create -f WORDPRESS/pvc.yaml --save-config --record
# 	@kubectl create -f WORDPRESS/deployment.yaml --save-config --record
	

apply:
	@kubectl apply -f Namespaces/wordpress-namespace.yaml
	@kubectl apply -f Secret/mysql-secret.yaml
	@kubectl apply -f PVC/wordpress-pvc.yaml
	@kubectl apply -f PVC/mysql-pvc.yaml
	@kubectl apply -f PV/wordpress-pv.yaml
	@kubectl apply -f PV/mysql-pv.yaml
	@kubectl apply -f Service/wordpress-service.yaml
	@kubectl apply -f Service/mysql-service.yaml
	@kubectl apply -f Deployments/wordpress-deployment.yaml
	@kubectl apply -f Deployments/mysql-deployment.yaml
	@kubectl apply -f Ingress/wordpress-ingress.yaml
	
 
registry:
	@kubectl apply -f Register/service.yaml
	@kubectl apply -f Register/service2.yaml
	@kubectl apply -f Register/deployment.yaml

geral:
	@kubectl apply -f geral.yaml

secret: 
		echo -n "my-password" | base64

exec: 
	minikube service wordpress -n wordpress

# Exemplo de comando Chave Admin Jenkins
#kubectl exec jenkins-5ccb4f9498-56svc cat /var/jenkins_home/secrets/initialAdminPassword 33c7f2604a274647acb327b87dba6427	
#kubectl exec -n jenkins jenkins-6547c655d4-plmcs cat /var/jenkins_home/secrets/initialAdminPassword

# minikube tunnel
# minikube ip
# minikube addons enable ingress
