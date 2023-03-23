# Headsail workspace


## Troubleshooting

How to setup dependencies 
https://helm.sh/docs/topics/charts/#chart-dependencies

Secrets not working? Make sure the service account can access the openshift-gitops namespace.
```
kubectl auth can-i get secrets --namespace openshift-gitops --as system:serviceaccount:auxiliary-student-1:headsail-workspace-sa
```