# n9-api

![Version: 1.4.3](https://img.shields.io/badge/Version-1.4.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: latest](https://img.shields.io/badge/AppVersion-latest-informational?style=flat-square)

Neo9 standard API chart

## Requirements

Kubernetes: `>= 1.23.0-0`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| "If.api.type=java".healtcheck.path | string | `"/actuator/health"` | Overrided by chart values if set |
| "If.api.type=java".metrics.port | int | `8080` | Overrided by chart values if set |
| "If.api.type=java".pod.env.valuesMap.PROFILE | string | `".deployedEnv"` | If not set release namespace is the default value |
| "If.api.type=java".service.labels.spring-boot | string | `"true"` | Always injected for apiType=java |
| "If.api.type=node".healtcheck.path | string | `"/ping"` | Overrided by chart values if set |
| "If.api.type=node".metrics.port | int | `9101` | Overrided by chart values if set |
| "If.api.type=node".pod.env.valuesMap.NODE_ENV | string | `".deployedEnv"` | If not set release namespace is the default value |
| api.deployedEnv | string | `""` | Override the release namespace value for env var sent to pod |
| api.logLevel | string | `""` | No default values, check https://github.com/neo9/n9-node-log |
| api.type | string | `"node"` | Only "node" or "java" will set multiple default value in releases, check readme |
| clusterRole.autoBindClusteRole | bool | `false` | Bind cluster role to service account created/named in chart values |
| clusterRole.create | bool | `false` | Specifies whether a cluster role should be created, also require to set rules. |
| clusterRole.name | string | `""` | Name of cluster role to create or to use if not created by chart |
| clusterRole.rules | object | `{}` | Set clusterRole rules, example commented out in values.yaml files |
| configMap | list | `[]` | Generate and define content of one or multiple configmap |
| deployment.annotations."reloader.stakater.com/auto" | string | `"true"` |  |
| deployment.labels | object | `{}` |  |
| deployment.minAvailable | int | `1` | Default to 1 if not set for the podDisruptionBudget |
| deployment.minReadySeconds | string | `""` |  |
| deployment.progressDeadlineSeconds | string | `""` |  |
| deployment.replicaCount | int | `1` | Automatically create podDisruptionBudget if more than 1 replica |
| deployment.securityContext | object | `{}` |  |
| deployment.strategy | object | `{}` | Default Rolling Update |
| flux.defaultImagePoliciesEnabled | bool | `true` |  |
| flux.defaultImagePolicy | string | `"default"` |  |
| flux.enabled | bool | `false` |  |
| flux.imageRepository.interval | string | `"1m0s"` |  |
| flux.imageRepository.secretName | string | `"docker-registry-gcr-admin"` |  |
| flux.imageUpdateAutomation.enabled | bool | `false` |  |
| flux.imageUpdateAutomation.git.author.email | string | `"flux-bot@my-domain.com"` |  |
| flux.imageUpdateAutomation.git.author.name | string | `"flux-bot"` |  |
| flux.imageUpdateAutomation.git.message | string | `"chore: Updating images"` |  |
| flux.imageUpdateAutomation.git.pushRef.branch | string | `"main"` |  |
| flux.imageUpdateAutomation.git.ref.branch | string | `"main"` |  |
| flux.imageUpdateAutomation.git.sourceRef | string | `"my-repo"` |  |
| flux.imageUpdateAutomation.interval | string | `"1m0s"` |  |
| flux.imageUpdateAutomation.update.path | string | `"./config"` |  |
| flux.imageUpdateAutomation.update.strategy | string | `"Setters"` |  |
| global.deployedEnv | string | `""` | Not recommended by default, designed to expose 'api.deployedEnv' into parent-chart (subchart values override global values) |
| global.imagePullSecrets | list | `[]` | Not recommended by default, designed to expose 'image.pullSecrets' into parent-chart (subchart values override global values) |
| global.istio.enabled | string | `""` | Not recommended by default, designed to expose 'istio.enabled' into parent-chart (subchart values override global values) |
| global.logLevel | string | `""` | Not recommended by default, designed to expose 'api.logLevel' into parent-chart (subchart values override global values) |
| healthCheck.enabled | bool | `true` |  |
| healthCheck.failureThreshold | int | `3` |  |
| healthCheck.initialDelaySeconds | int | `3` |  |
| healthCheck.liveness.enabled | bool | `true` |  |
| healthCheck.path | string | `""` | Specify a port for httpGet probe, if different from /ping for node or /actuator/health for java |
| healthCheck.periodSeconds | int | `10` |  |
| healthCheck.port | string | `""` | Specify port to probe if different from service port |
| healthCheck.readiness.enabled | bool | `true` |  |
| healthCheck.tcpSocket | bool | `false` | Enabled usage of tcpSocket probe over httpget probe |
| healthCheck.timeoutSeconds | int | `1` |  |
| hpa.cpu | int | `100` |  |
| hpa.customMetrics | list | `[]` |  |
| hpa.enabled | bool | `false` | Create Horizontal Pod Autoscaling |
| hpa.maxReplicas | int | `5` |  |
| hpa.memory | int | `80` |  |
| hpa.minReplicas | int | `1` |  |
| hpa.rabbitmq.enabled | bool | `false` |  |
| hpa.rabbitmq.metricName | string | `"master-api_queue_messages"` |  |
| hpa.rabbitmq.serviceName | string | `"rabbitmq"` |  |
| hpa.rabbitmq.target | int | `1` |  |
| image.digest | string | `""` | Overrides tag if set |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.repository | string | `"n9/api"` |  |
| image.tag | string | `"latest"` | Define the image tag which by default is 'latest' |
| ingress.additionalHosts | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.defaultPathType | string | `"ImplementationSpecific"` | Set a default pathType for all hosts |
| ingress.enabled | bool | `false` |  |
| ingress.globalEasyTls | bool | `false` | Automatically generate tls certificate secret for defined hosts |
| ingress.hosts | list | `[]` |  |
| ingress.labels | object | `{}` |  |
| ingress.tls | list | `[]` |  |
| initContainer.command | list | `[]` |  |
| initContainer.enabled | bool | `false` |  |
| initContainer.resources | object | `{}` |  |
| initJob.activeDeadlineSeconds | int | `950` |  |
| initJob.command | list | `[]` |  |
| initJob.enabled | bool | `false` |  |
| initJob.hookDeletionPolicy | string | `"before-hook-creation,hook-succeeded"` | Helm hook deletion policy on when to delete previous initjob |
| initJob.priorityClassName | string | `""` |  |
| initJob.resources | object | `{}` | Example commented out in values.yaml files |
| initJob.ttlSecondsAfterFinished | int | `300` |  |
| istio.enabled | bool | `false` | Create virtual service ressource (v1alpha3) |
| istio.retries | object | `{}` |  |
| logging.enabled | bool | `false` |  |
| metrics.enabled | bool | `false` | Condition to enable ports and service for metrics endpoints |
| metrics.port | string | `""` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| metrics.serviceMonitor.interval | string | `"15s"` | Value in seconds suffixed by unit 's' |
| monitoring.prometheusEndpoint | string | `"http://prometheus-operated.monitoring.svc.cluster.local:9090"` |  |
| monitoring.rules.cpuAvg.enabled | bool | `true` |  |
| monitoring.rules.cpuAvg.podQuery | string | `""` |  |
| monitoring.rules.cpuAvg.window | string | `"1m"` |  |
| monitoring.rules.enabled | bool | `false` |  |
| monitoring.rules.extraRules | list | `[]` |  |
| monitoring.rules.extraRulesEnabled | bool | `true` |  |
| monitoring.rules.ingressAccessFreq.enabled | bool | `false` |  |
| monitoring.rules.ingressAccessFreq.window | string | `"1m"` |  |
| monitoring.rules.memoryAvg.enabled | bool | `true` |  |
| monitoring.rules.memoryAvg.podQuery | string | `""` |  |
| monitoring.rules.rabbitmq.enabled | bool | `false` |  |
| monitoring.rules.rabbitmq.queues.default | bool | `false` |  |
| monitoring.rules.rabbitmq.queues.scaling | bool | `true` |  |
| monitoring.rules.serviceAccessFreq.enabled | bool | `true` |  |
| monitoring.rules.serviceAccessFreq.window | string | `"1m"` |  |
| name.appNameOverride | string | `""` | Override to set 'application name' if different from the release name (or template: namespace-release-name) |
| name.templatedNameOverride | string | `""` | Override the 'application name' to be used as a convention to name k8s ressources create by chart |
| onePerNode.enabled | bool | `true` |  |
| pdb.enabled | bool | `false` | Create Pod Disruption Budget |
| pdb.minAvailable | int | `1` |  |
| pod.additionalEnv.secrets | list | `[]` |  |
| pod.additionalEnv.values | list | `[]` |  |
| pod.additionalEnv.valuesMap | object | `{}` |  |
| pod.annotations | object | `{}` |  |
| pod.args | list | `[]` |  |
| pod.command | list | `[]` |  |
| pod.env.secrets | list | `[]` | Define secret env values for pods, example commented out in values.yaml files |
| pod.env.values | list | `[]` | Define env values for pods, example commented out in values.yaml files |
| pod.env.valuesMap | object | `{}` | Define and sent env Values as a map, useful for yaml merge |
| pod.envFrom.configmaps | list | `[]` |  |
| pod.envFrom.enabled | bool | `true` |  |
| pod.envFrom.secrets | list | `[]` |  |
| pod.mounts.configMap | list | `[]` | Define configmap to attach and mount, example commented out in values.yaml files |
| pod.mounts.configMapMap | object | `{}` | Define map of configmap to mount, useful for yaml merge |
| pod.mounts.pvc | list | `[]` | Define pvc to attach and mount, example commented out in values.yaml files |
| pod.mounts.secrets | list | `[]` | Define secrets to attach and mount, example commented out in values.yaml files |
| pod.securityContext | object | `{}` |  |
| pod.workingDir | string | `""` |  |
| resources | object | `{}` |  |
| scaling.cpuAvg.enabled | bool | `true` |  |
| scaling.cpuAvg.threshold | float | `0.9` |  |
| scaling.enabled | bool | `false` |  |
| scaling.extraTriggers | list | `[]` |  |
| scaling.extraTriggersEnabled | bool | `true` |  |
| scaling.ingressAccessFreq.enabled | bool | `false` |  |
| scaling.ingressAccessFreq.threshold | int | `100` |  |
| scaling.maxReplicaCount | int | `100` |  |
| scaling.memoryAvg.enabled | bool | `true` |  |
| scaling.memoryAvg.threshold | float | `0.9` |  |
| scaling.minReplicaCount | int | `1` |  |
| scaling.rabbitmq.default.enabled | bool | `false` |  |
| scaling.rabbitmq.default.in | int | `1` |  |
| scaling.rabbitmq.default.out | int | `1` |  |
| scaling.rabbitmq.enabled | bool | `false` |  |
| scaling.rabbitmq.queues | list | `[]` |  |
| scaling.serviceAccessFreq.enabled | bool | `true` |  |
| scaling.serviceAccessFreq.threshold | int | `100` |  |
| scheduling.affinity | object | `{}` |  |
| scheduling.maxSkewPerNode | int | `1` | Max difference of number of pods between nodes using topologySpreadConstraints 0 to disable it  |
| scheduling.nodeSelector | object | `{}` |  |
| scheduling.tolerations | list | `[]` |  |
| scheduling.topologySpreadConstraints | list | `[]` |  |
| service.additionalPorts | list | `[]` | Create additional pods endpoints and relative service |
| service.annotations | object | `{}` |  |
| service.labels | object | `{}` |  |
| service.port | int | `80` |  |
| service.targetPort | string | `""` | Port to access on the pod if different from port used by service |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | Name of service account to create or to use if not created by chart |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)
