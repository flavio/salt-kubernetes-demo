redis-master-deployment:
  kubernetes.deployment_absent:
    - name: redis-master

redis-master-service:
  kubernetes.service_absent:
    - name: redis-master

redis-slave-deployment:
  kubernetes.deployment_absent:
    - name: redis-slave

guestbook-deployment:
  kubernetes.deployment_absent:
    - name: guestbook

guestbook-service:
  kubernetes.service_absent:
    - name: guestbook
