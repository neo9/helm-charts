# rabbitmq-managed

![Version: 0.7.4](https://img.shields.io/badge/Version-0.7.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.10](https://img.shields.io/badge/AppVersion-3.10-informational?style=flat-square)

A Helm chart to manage RabbitmqCluster & typology

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | list | `[]` |  |
| cluster.extraSpec | object | `{}` | Inject values directly into .spec of RabbitmqCluster manifests |
| cluster.image | string | `""` | Specify an image to use if different from operator default |
| cluster.override | object | `{}` | Set value to override the templated statefulset by the operator |
| cluster.overrideContainers | list | `[]` | Set value to override the templated containers spec by the operator |
| cluster.podLabels | object | `{}` | Set statefulSet podTemplate labels |
| cluster.rabbitmqConf | object | `{}` | Inject rabbitmq conf, which are under RabbitmqCluster.spec.rabbitmq |
| cluster.replicaCount | int | `3` | Configure number of rabbitmq replicas (should be an odd numbers) |
| cluster.resources | object | `{"limits":{},"requests":{}}` | If using default memory_high_watermark, consider memory limits being ~3 times the requests |
| cluster.resources.limits | object | `{}` | Define rabbitmq cluster container limits. |
| cluster.resources.requests | object | `{}` | Define rabbitmq cluster container requests. |
| cluster.statefulSetLabels | object | `{}` |  |
| cluster.storage | object | `{"size":"10Gi","storageClass":""}` | VolumeClaimTemplate can't be edited on a statefulset, those values only permit instance configuration at creation |
| cluster.storage.size | string | `"10Gi"` | If edited it will recreate the rabbitmq statefulset |
| cluster.storage.storageClass | string | `""` | Can only be set on creation, later edit require whole cluster replacement or pvc/data migration |
| fullnameOverride | string | `""` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `nil` |  |
| ingress.enabled | bool | `false` |  |
| ingress.host | string | `"example.test"` | Define the hostname to use. |
| ingress.labels | object | `{}` |  |
| ingress.tls.customSecretName | string | `""` | Specify an existing secret if not automatically provisionned |
| ingress.tls.enabled | bool | `true` | Enable TLS, with a default secret reference |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| policies | list | `[]` | Create rabbitmq policy to apply automatically |
| scheduling.maxSkewPerNode | int | `1` | Max difference of number of pods between nodes using topologySpreadConstraints |
| tolerations | list | `[]` |  |
| topologySpreadConstraints | string | `nil` |  |
| users | list | `[]` | Define the list of users, assigned vhosts and corresponding permissions |
| vhosts | list | `[]` | The default vhost (`/`) is automatically created |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)
