kubernetes-python-module:
  pip.installed:
    - name: kubernetes

redis-master-deployment:
  kubernetes.deployment_present:
    - name: redis-master
    - source: salt://k8s-guestbook-101-present/redis-master-deployment.yml
  require:
    - pip: kubernetes-python-module

redis-master-service:
  kubernetes.service_present:
    - name: redis-master
    - source: salt://k8s-guestbook-101-present/redis-master-service.yml
  require:
    - kubernetes.deployment_present: redis-master

redis-slave-deployment:
  kubernetes.deployment_present:
    - name: redis-slave
    - source: salt://k8s-guestbook-101-present/redis-slave-deployment.yml
  require:
    - kubernetes.deployment_present: redis-master

guestbook-deployment:
  kubernetes.deployment_present:
    - name: guestbook
    - source: salt://k8s-guestbook-101-present/guestbook-deployment.yml
  require:
    - kubernetes.service_present: redis-master
    - kubernetes.service_present: redis-slave

guestbook-service:
  kubernetes.service_present:
    - name: guestbook
    - source: salt://k8s-guestbook-101-present/guestbook-service.yml
  require:
    - kubernetes.deployment_present: guestbook
