# eck-managed

![Version: 0.3.2](https://img.shields.io/badge/Version-0.3.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 7.16.2](https://img.shields.io/badge/AppVersion-7.16.2-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://prometheus-community.github.io/helm-charts | es-exporter(prometheus-elasticsearch-exporter) | 5.2.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| elasticsearch.affinity | object | `{}` |  |
| elasticsearch.annotations | object | `{}` |  |
| elasticsearch.config."node.data" | bool | `true` |  |
| elasticsearch.config."node.ingest" | bool | `true` |  |
| elasticsearch.config."node.master" | bool | `true` |  |
| elasticsearch.config."node.store.allow_mmap" | bool | `false` |  |
| elasticsearch.config."xpack.security.authc".anonymous.authz_exception | bool | `false` |  |
| elasticsearch.config."xpack.security.authc".anonymous.roles | string | `"superuser"` |  |
| elasticsearch.config."xpack.security.authc".anonymous.username | string | `"anonymous"` |  |
| elasticsearch.enabled | bool | `true` |  |
| elasticsearch.labels | object | `{}` |  |
| elasticsearch.nodeSelector | object | `{}` |  |
| elasticsearch.pod.elasticsearch.env[0].name | string | `"ES_JAVA_OPTS"` |  |
| elasticsearch.pod.elasticsearch.env[0].value | string | `"-Xms4g -Xmx4g"` |  |
| elasticsearch.replicaCount | int | `2` |  |
| elasticsearch.resources.limits.cpu | int | `2` |  |
| elasticsearch.resources.limits.memory | string | `"8Gi"` |  |
| elasticsearch.resources.requests.cpu | int | `2` |  |
| elasticsearch.resources.requests.memory | string | `"8Gi"` |  |
| elasticsearch.scheduling.maxSkewPerNode | int | `1` | Max difference of number of pods between nodes using topologySpreadConstraints |
| elasticsearch.service.annotations | object | `{}` |  |
| elasticsearch.service.labels | object | `{}` |  |
| elasticsearch.tolerations | list | `[]` |  |
| elasticsearch.topologySpreadConstraints | list | `[]` |  |
| elasticsearch.version | string | `"7.16.2"` |  |
| elasticsearch.volumeClaim.spec.accessModes[0] | string | `"ReadWriteOnce"` |  |
| elasticsearch.volumeClaim.spec.resources.requests.storage | string | `"10Gi"` |  |
| elasticsearch.volumeClaim.spec.storageClassName | string | `"gcp-sc-retain-wait-ssd"` |  |
| es-exporter.enabled | bool | `true` |  |
| es-exporter.es.uri | string | `"http://catalogue-elasticsearch-es-default:9200"` |  |
| fullnameOverride | string | `"eck"` |  |
| kibana.affinity | object | `{}` |  |
| kibana.annotations | object | `{}` |  |
| kibana.enabled | bool | `true` |  |
| kibana.http.service.metadata.annotations | object | `{}` |  |
| kibana.http.service.metadata.labels | object | `{}` |  |
| kibana.http.tls.selfSignedCertificate.disabled | bool | `true` |  |
| kibana.labels | object | `{}` |  |
| kibana.nodeSelector | object | `{}` |  |
| kibana.replicaCount | int | `1` |  |
| kibana.resources.limits.cpu | int | `1` |  |
| kibana.resources.limits.memory | string | `"1Gi"` |  |
| kibana.resources.requests.cpu | float | `0.1` |  |
| kibana.resources.requests.memory | string | `"256Mi"` |  |
| kibana.scheduling.maxSkewPerNode | int | `1` | Max difference of number of pods between nodes using topologySpreadConstraints |
| kibana.tolerations | list | `[]` |  |
| kibana.topologySpreadConstraints | list | `[]` |  |
| kibana.version | string | `"7.16.2"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)
