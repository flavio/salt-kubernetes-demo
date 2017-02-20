# nginx deployment as specified inside of
# external yml
nginx-source:
  kubernetes.deployment_present:
    - source: salt://k8s-nginx-deployments-present/nginx.yml

# nginx deployment as specified inside of
# external yml using also jinja templating
nginx-source-template:
  kubernetes.deployment_present:
    - source: salt://k8s-nginx-deployments-present/nginx.yml.jinja
    - template: jinja

# nginx deployment as specified inside of sls file
my-nginx:
  kubernetes.deployment_present:
    - metadata:
        foo: bar
      spec:
        replicas: 1
        template:
          metadata:
            labels:
              run: my-nginx
          spec:
            containers:
            - name: my-nginx
              image: nginx
              ports:
              - containerPort: 80
