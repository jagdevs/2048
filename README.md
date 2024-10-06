# 2048
Based on [gabrielecirulli/2048](https://github.com/gabrielecirulli/2048)  

# To run  
 docker-compose build  
 docker-compose up  

# Play
 http://127.0.0.1:8080

# k8s env var from secrets
 kubectl create secret generic app-secrets --from-literal=mysql-root-password=rootpasswd --from-literal=mysql-user=jagdev --from-literal=mysql-user-password=pass123  
 kubectl create secret generic app-secrets --from-literal=MYSQL_ROOT_PASSWORD=rootpasswd --from-literal=MYSQL_USER=jagdev --from-literal=MYSQL_USER_PASSWORD=pass123  
 - second one - uses the envFrom
