# Get rid of all the resources created above

nginx-source:
  kubernetes.deployment_absent: []

nginx-source-template:
  kubernetes.deployment_absent: []

my-nginx:
  kubernetes.deployment_absent: []
