base:
  '*':
    # deploy the whole k8s guestbook 101 demo
    # https://github.com/kubernetes/kubernetes/tree/master/examples/guestbook
    - k8s-guestbook-101-present
    # delete the k8s guestbook resources
    # - k8s-guestbook-101-absent
    # have fun with nginx deployments
    #- k8s-nginx-deployments-present
    #- k8s-nginx-deployments-absent
