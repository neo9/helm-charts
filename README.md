# helm-charts
This repository hosts some Helm Charts that we use at Neo9. \
https://neo9.fr/
## Requirements
- Helm 3

# Usage

Add repo with:
```
helm repo add n9 https://neo9.github.io/helm-charts
helm repo update n9
```

# Development
## How to test a chart locally
1. Lint your current chart
```
helm lint charts/mychartname
```

2. Template with default values
```
helm template charts/mychartname
```

3. Template with test values

Create a `testvalues.yaml` which contains values you wish to test
```
helm template testname charts/mychartname -f testvalues.yaml
```


## How to generate a chart README.md

Using `norwoodj/helm-docs`

1. Add comments in your default `values.yaml` following this format
```
service:
  # -- Port to access on the pod if different from port used by service
  targetPort:
```

2. Generate or update README for your charts
```
cd charts/mcyhartname
helm-docs -s file
```
