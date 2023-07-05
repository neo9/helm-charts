# mongodb-managed

![Version: 0.7.0](https://img.shields.io/badge/Version-0.7.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart to manage mongodbcommunity cluster

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://prometheus-community.github.io/helm-charts | mongodb-exporter(prometheus-mongodb-exporter) | 3.1.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| nameOverride | string | `""` |  |
| fullnameOverride | string | `""` |  |
| labels | object | `{}` | Additionnal labels to add to the metadata of mongodb statefulset |
| annotations | object | `{}` | Additionnal annotations to add to the metadata of mongodb statefulset |
| replicaCount | int | `3` |  |
| mongodb.version | string | `"6.0.5"` |  |
| mongodb.featureCompatibilityVersion | string | `"6.0"` |  |
| mongodb.labels | object | `{}` | Additionnal labels to add to the metadata of mongodb pods |
| mongodb.annotations | object | `{}` | Additionnal annotations to add to the metadata of mongodb pods |
| users | list | `[]` | Define the list of mongo users, their roles and attributed db |
| tolerations | list | `[]` |  |
| affinity | object | `{}` |  |
| nodeSelector | object | `{}` |  |
| resources.limits | object | `{}` | Define mongodb container limits. |
| resources.requests | object | `{}` | Define mongodb container requests. |
| mongodbAgent.resources.limits | object | `{}` | Define limits for mongodb-agent from the operator. |
| mongodbAgent.resources.requests | object | `{"cpu":"50m","memory":"50M"}` | Define requests for mongodb-agent from the operator. |
| serviceAccount.create | bool | `true` | Specifiy whether a service account should be created |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.name | string | `""` | Name of k8s serviceAccount to create or to use if not created by chart |
| storage | object | `{"dataVolume":{"size":"10Gi","storageClass":""},"logsVolume":{"enabled":false,"size":"2Gi","storageClass":""}}` | VolumeClaimTemplate can't be edited on a statefulset, those values only permit instance configuration at creation |
| storage.dataVolume.size | string | `"10Gi"` | Can only be set on creation, later edit should be made on the pvc directly |
| storage.dataVolume.storageClass | string | `""` | Can only be set on creation, later edit require pvc/data migration |
| storage.logsVolume.enabled | bool | `false` | Can be disabled on new mongodb instances creation, since the default logs output became stdout |
| storage.logsVolume.size | string | `"2Gi"` | Can only be set on creation, later edit should be made on the pvc directly |
| storage.logsVolume.storageClass | string | `""` | Can only be set on creation, later edit require pvc/data migration |
| rbac | object | `{"role":{"autoBindRole":true,"create":true,"name":"","rules":{}}}` | Create Role and bind it to the service account |
| rbac.role.create | bool | `true` | Specifies whether a role should be created, also require to set rules. |
| rbac.role.name | string | `""` | Name of k8s role to create or to use if not created by chart |
| rbac.role.autoBindRole | bool | `true` | Bind role to service account created/named in chart values |
| rbac.role.rules | object | `{}` | Used to replace default chart rules |
| mongodbMonitoring.user.create | bool | `true` | Create a dedicated mongodb user with monitoring roles to be used by mongodb-exporter |
| mongodbMonitoring.user.additionnalRoles | list | `[]` |  |
| mongodb-exporter.enabled | bool | `true` | If enabled, proper value should be set to connect exporter to mongodb |
| mongodb-exporter.existingSecret.name | string | `""` | (REQUIRED) If using external secret, name format is "$fullnameOverride-admin-monitoring", or check output during release install/upgrades |
| mongodb-exporter.existingSecret.key | string | `"connectionString.standardSrv"` |  |
| mongodb-exporter.extraArgs[0] | string | `"--collect-all"` |  |
| mongodb-exporter.extraArgs[1] | string | `"--no-mongodb.direct-connect"` |  |
| mongodb-exporter.extraArgs[2] | string | `"--compatible-mode"` |  |
| mongodb-exporter.tolerations | list | `[]` |  |
| mongodb-exporter.affinity | object | `{}` |  |
| mongodb-exporter.nodeSelector | object | `{}` |  |
| mongodb-exporter.resources.limits | object | `{"cpu":"100m","memory":"100M"}` | Define mongodb-exporter container limits. |
| mongodb-exporter.resources.requests | object | `{"cpu":"20m","memory":"50M"}` | Define mongodb-exporter container requests. |
| mongodb-exporter.serviceMonitor.enabled | bool | `false` |  |
| mongodb-exporter.serviceMonitor.interval | string | `"30s"` |  |
| mongodb-exporter.serviceMonitor.scrapeTimeout | string | `"10s"` |  |
| mongodb-exporter.serviceMonitor.namespace | string | `nil` |  |
| mongodb-exporter.serviceMonitor.additionalLabels | object | `{}` |  |
| mongodb-exporter.serviceMonitor.targetLabels | list | `[]` |  |
| mongodb-exporter.serviceMonitor.metricRelabelings | list | `[]` |  |
| mongodb-exporter.serviceMonitor.scheme | string | `""` |  |
| mongodb-exporter.serviceMonitor.tlsConfig | object | `{}` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.8.1](https://github.com/norwoodj/helm-docs/releases/v1.8.1)
