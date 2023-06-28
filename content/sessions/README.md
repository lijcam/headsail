# Session Catalog

A session is a collection on challenges. You can select which session you want to run by updating the path at `source.helm.valuesFiles`. 

```
source:
  repoURL: https://github.com/lijcam/headsail.git
  path: ./workspace
  targetRevision: HEAD
  helm:
    valueFiles:
      - ../content/sessions/kubernetes-101.yml
```
`ValueFiles` is relative to the `source.path` directory so in our instance, it important to include the back reference (`..`).

Or you can create a custom session by creating a new yaml file and including a list of challenges.

```
---
challenges:
  - content/challenges/challenge-1
  - content/challenges/challenge-2
```