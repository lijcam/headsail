# Headsail workspace

The workspace helm chart is designed to deploy the components that must be templated. Session resources should be defined in the content directory.


## Testing
Before committing changes to the helm chart run the vaildation script in the tests directory. 

```
$ tests/validate-workspace-helmchart.sh
```