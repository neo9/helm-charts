# catalogue-utils

![Version: 0.8.6](https://img.shields.io/badge/Version-0.8.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.neo9.pro | crossplane-buckets | 0.3.1 |
| https://charts.neo9.pro | eck-managed(eck-managed) | 0.1.0 |
| https://charts.neo9.pro | mongodb(mongodb-managed) | 0.6.3 |
| https://charts.neo9.pro | rabbitmq(rabbitmq-managed) | 0.4.1 |
| https://helm.min.io | minio | 8.0.10 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| catalogue.akeneo-api | bool | `false` | Condition to enable and deploy catalogue-akeneo-api |
| catalogue.backoffice | bool | `true` | Condition to enable and deploy catalogue-backoffice |
| catalogue.cms-api | bool | `true` | Condition to enable and deploy catalogue-cms-api |
| catalogue.export-api | bool | `true` | Condition to enable and deploy catalogue-export-api |
| catalogue.import-api | bool | `true` | Condition to enable and deploy catalogue-import-api |
| catalogue.jobs-api | bool | `true` | Condition to enable and deploy catalogue-jobs-api |
| catalogue.live-api | bool | `true` | Condition to enable and deploy catalogue-live-api |
| catalogue.master-api | bool | `true` | Condition to enable and deploy catalogue-master-api |
| catalogue.media-api | bool | `true` | Condition to enable and deploy catalogue-media-api |
| catalogue.merchandising-api | bool | `false` | Condition to enable and deploy catalogue-merchandising-api |
| catalogue.metrics-api | bool | `false` | Condition to enable and deploy catalogue-metrics-api |
| catalogue.mirakl-api | bool | `false` | Condition to enable and deploy catalogue-mirakl-api |
| catalogue.mock-api | bool | `false` | Condition to enable and deploy catalogue-mock-api |
| catalogue.mock-backoffice | bool | `false` | Condition to enable and deploy catalogue-mock-backoffice |
| catalogue.publication-api | bool | `true` | Condition to enable and deploy catalogue-publication-api |
| catalogue.scheduler-api | bool | `true` | Condition to enable and deploy catalogue-scheduler-api |
| catalogue.search-admin-api | bool | `true` | Condition to enable and deploy catalogue-search-admin-api |
| catalogue.users-api | bool | `true` | Condition to enable and deploy catalogue-users-api |
| catalogue.web-api | bool | `true` | Condition to enable and deploy catalogue-web-api |
| mongodb.enabled | bool | `false` |  |
| mongodb.fullnameOverride | string | `"catalogue-mongodb"` |  |
| mongodb.mongodb.version | string | `"6.0.5"` |  |
| mongodb.mongodb.featureCompatibilityVersion | string | `"6.0"` |  |
| mongodb.replicaCount | int | `3` |  |
| mongodb.resources.limits.cpu | string | `"1"` |  |
| mongodb.resources.limits.memory | string | `"2G"` |  |
| mongodb.resources.requests.cpu | string | `"500m"` |  |
| mongodb.resources.requests.memory | string | `"1G"` |  |
| mongodb.mongodbAgent.resources.limits.cpu | string | `"500m"` |  |
| mongodb.mongodbAgent.resources.limits.memory | string | `"500M"` |  |
| mongodb.mongodbAgent.resources.requests.cpu | string | `"50m"` |  |
| mongodb.mongodbAgent.resources.requests.memory | string | `"50M"` |  |
| mongodb.users[0].name | string | `"n9-catalogue"` |  |
| mongodb.users[0].db | string | `"admin"` |  |
| mongodb.users[0].roles[0].name | string | `"clusterAdmin"` |  |
| mongodb.users[0].roles[1].name | string | `"userAdminAnyDatabase"` |  |
| mongodb.users[0].roles[2].name | string | `"readWriteAnyDatabase"` |  |
| mongodb.users[0].roles[3].name | string | `"dbAdminAnyDatabase"` |  |
| mongodb.users[1].name | string | `"catalogue-akeneo-api"` |  |
| mongodb.users[1].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[2].name | string | `"catalogue-cms-api"` |  |
| mongodb.users[2].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[3].name | string | `"catalogue-export-api"` |  |
| mongodb.users[3].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[4].name | string | `"catalogue-import-api"` |  |
| mongodb.users[4].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[5].name | string | `"catalogue-jobs-api"` |  |
| mongodb.users[5].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[6].name | string | `"catalogue-master-api"` |  |
| mongodb.users[6].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[7].name | string | `"catalogue-media-api"` |  |
| mongodb.users[7].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[8].name | string | `"catalogue-merchandising-api"` |  |
| mongodb.users[8].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[9].name | string | `"catalogue-mirakl-api"` |  |
| mongodb.users[9].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[10].name | string | `"catalogue-mock-api"` |  |
| mongodb.users[10].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[11].name | string | `"catalogue-scheduler-api"` |  |
| mongodb.users[11].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[12].name | string | `"catalogue-search-admin-api"` |  |
| mongodb.users[12].roles[0].name | string | `"readWrite"` |  |
| mongodb.users[13].name | string | `"catalogue-users-api"` |  |
| mongodb.users[13].roles[0].name | string | `"readWrite"` |  |
| mongodb.mongodbMonitoring.user.create | bool | `true` |  |
| mongodb.mongodb-exporter.enabled | bool | `true` |  |
| mongodb.mongodb-exporter.existingSecret.name | string | `"catalogue-mongodb-admin-monitoring"` |  |
| mongodb.mongodb-exporter.serviceMonitor.enabled | bool | `false` |  |
| rabbitmq.enabled | bool | `false` |  |
| rabbitmq.fullnameOverride | string | `"catalogue-rabbitmq"` |  |
| rabbitmq.cluster.image | string | `"docker.io/bitnami/rabbitmq:3.10.8-debian-11-r7"` |  |
| rabbitmq.cluster.replicaCount | int | `3` |  |
| rabbitmq.cluster.resources.limits.cpu | string | `"500m"` |  |
| rabbitmq.cluster.resources.limits.memory | string | `"750M"` |  |
| rabbitmq.cluster.resources.requests.cpu | string | `"100m"` |  |
| rabbitmq.cluster.resources.requests.memory | string | `"250M"` |  |
| rabbitmq.cluster.rabbitmqConf.additionalPlugins[0] | string | `"rabbitmq_consistent_hash_exchange"` |  |
| rabbitmq.cluster.rabbitmqConf.additionalPlugins[1] | string | `"rabbitmq_delayed_message_exchange"` |  |
| rabbitmq.cluster.rabbitmqConf.additionalConfig | string | `"consumer_timeout = 10800000\n"` |  |
| rabbitmq.cluster.override.statefulSet.spec.template.spec.containers[0].name | string | `"rabbitmq"` |  |
| rabbitmq.cluster.override.statefulSet.spec.template.spec.containers[0].env[0].name | string | `"RABBITMQ_COMMUNITY_PLUGINS"` |  |
| rabbitmq.cluster.override.statefulSet.spec.template.spec.containers[0].env[0].value | string | `"https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.10.2/rabbitmq_delayed_message_exchange-3.10.2.ez"` |  |
| rabbitmq.vhosts[0] | string | `"catalogue"` |  |
| rabbitmq.users[0].name | string | `"n9-catalogue"` |  |
| rabbitmq.users[0].permissions[0].vhost | string | `"/"` |  |
| rabbitmq.users[0].permissions[1].vhost | string | `"catalogue"` |  |
| rabbitmq.users[1].name | string | `"akeneo-api"` |  |
| rabbitmq.users[1].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.users[2].name | string | `"export-api"` |  |
| rabbitmq.users[2].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.users[3].name | string | `"import-api"` |  |
| rabbitmq.users[3].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.users[4].name | string | `"internal-live-api"` |  |
| rabbitmq.users[4].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.users[5].name | string | `"jobs-api"` |  |
| rabbitmq.users[5].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.users[6].name | string | `"master-api"` |  |
| rabbitmq.users[6].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.users[7].name | string | `"media-api"` |  |
| rabbitmq.users[7].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.users[8].name | string | `"merchandising-api"` |  |
| rabbitmq.users[8].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.users[9].name | string | `"mirakl-api"` |  |
| rabbitmq.users[9].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.users[10].name | string | `"mock-api"` |  |
| rabbitmq.users[10].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.users[11].name | string | `"publication-api"` |  |
| rabbitmq.users[11].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.users[12].name | string | `"scheduler-api"` |  |
| rabbitmq.users[12].permissions[0].vhost | string | `"catalogue"` |  |
| rabbitmq.policies[0].name | string | `"ha"` |  |
| rabbitmq.policies[0].vhost | string | `"catalogue"` |  |
| rabbitmq.policies[0].pattern | string | `".*"` |  |
| rabbitmq.policies[0].applyTo | string | `"all"` |  |
| rabbitmq.policies[0].definition.ha-mode | string | `"all"` |  |
| rabbitmq.policies[0].definition.ha-sync-mode | string | `"automatic"` |  |
| eck-managed.enabled | bool | `false` |  |
| eck-managed.fullnameOverride | string | `"catalogue-eck"` |  |
| eck-managed.elasticsearch.enabled | bool | `false` |  |
| eck-managed.elasticsearch.replicaCount | int | `2` |  |
| eck-managed.elasticsearch.service.annotations."ingress.neo9.io/expose-hostname" | string | `"catalogue-elasticsearch.{{namespace}}.{{domain}}"` |  |
| eck-managed.elasticsearch.service.annotations."ingress.neo9.io/expose-annotations" | string | `"kubernetes.io/ingress.class: nginx\ncert-manager.io/cluster-issuer: letsencrypt-dns-production-gcp\nexternal-dns.alpha.kubernetes.io/ttl: \"5\"\nnginx.ingress.kubernetes.io/ssl-redirect: \"true\"\nforecastle.stakater.com/expose: true\nnginx.ingress.kubernetes.io/proxy-body-size: 200m\ningress.neo9.io/access-operator-enabled: \"true\"\ningress.neo9.io/allowed-visitors: self,neo9,neo9-sf"` |  |
| eck-managed.elasticsearch.service.annotations."ingress.neo9.io/expose-labels" | string | `"ingress.neo9.io/access-operator-enabled: \"true\""` |  |
| eck-managed.elasticsearch.service.labels."ingress.neo9.io/expose" | string | `"true"` |  |
| eck-managed.elasticsearch.resources.limits.cpu | int | `1` |  |
| eck-managed.elasticsearch.resources.limits.memory | string | `"2Gi"` |  |
| eck-managed.elasticsearch.resources.requests.cpu | int | `1` |  |
| eck-managed.elasticsearch.resources.requests.memory | string | `"2Gi"` |  |
| eck-managed.elasticsearch.pod.elasticsearch.env[0].name | string | `"ES_JAVA_OPTS"` |  |
| eck-managed.elasticsearch.pod.elasticsearch.env[0].value | string | `"-Xms1g -Xmx1g"` |  |
| eck-managed.elasticsearch.volumeClaim.spec.accessModes[0] | string | `"ReadWriteOnce"` |  |
| eck-managed.elasticsearch.volumeClaim.spec.resources.requests.storage | string | `"10Gi"` |  |
| eck-managed.elasticsearch.config."node.master" | bool | `true` |  |
| eck-managed.elasticsearch.config."node.data" | bool | `true` |  |
| eck-managed.elasticsearch.config."node.ingest" | bool | `true` |  |
| eck-managed.elasticsearch.config."node.store.allow_mmap" | bool | `false` |  |
| eck-managed.elasticsearch.config."xpack.security.authc".anonymous.username | string | `"anonymous"` |  |
| eck-managed.elasticsearch.config."xpack.security.authc".anonymous.roles | string | `"superuser"` |  |
| eck-managed.elasticsearch.config."xpack.security.authc".anonymous.authz_exception | bool | `false` |  |
| eck-managed.es-exporter.enabled | bool | `false` |  |
| eck-managed.es-exporter.es.uri | string | `"http://catalogue-eck-elasticsearch-es-default:9200"` |  |
| eck-managed.es-exporter.serviceMonitor.enabled | bool | `false` |  |
| eck-managed.kibana.enabled | bool | `false` |  |
| eck-managed.kibana.version | string | `"7.16.2"` |  |
| eck-managed.kibana.resources.requests.memory | string | `"256Mi"` |  |
| eck-managed.kibana.resources.requests.cpu | float | `0.1` |  |
| eck-managed.kibana.resources.limits.memory | string | `"1Gi"` |  |
| eck-managed.kibana.resources.limits.cpu | int | `1` |  |
| eck-managed.kibana.nodeSelector.type | string | `"main"` |  |
| eck-managed.kibana.replicaCount | int | `1` |  |
| eck-managed.kibana.http.tls.selfSignedCertificate.disabled | bool | `true` |  |
| eck-managed.kibana.http.service.metadata.annotations."ingress.neo9.io/expose-hostname" | string | `"catalogue-kibana.{{namespace}}.{{domain}}"` |  |
| eck-managed.kibana.http.service.metadata.annotations."ingress.neo9.io/expose-annotations" | string | `"kubernetes.io/ingress.class: nginx\ncert-manager.io/cluster-issuer: letsencrypt-dns-production-gcp\nexternal-dns.alpha.kubernetes.io/ttl: \"5\"\nnginx.ingress.kubernetes.io/ssl-redirect: \"true\"\nforecastle.stakater.com/expose: true\nnginx.ingress.kubernetes.io/proxy-body-size: 200m\ningress.neo9.io/access-operator-enabled: \"true\"\ningress.neo9.io/allowed-visitors: self,neo9,neo9-sf"` |  |
| eck-managed.kibana.http.service.metadata.annotations."ingress.neo9.io/expose-labels" | string | `"ingress.neo9.io/access-operator-enabled: \"true\""` |  |
| eck-managed.kibana.http.service.metadata.labels."ingress.neo9.io/expose" | string | `"true"` |  |
| external-secrets.enabled | bool | `false` |  |
| external-secrets.bucketName.media-api | string | `"example"` | Set bucket name to use for desired api |
| external-secrets.schema.akeneo-api[0] | string | `"rabbitmq"` |  |
| external-secrets.schema.akeneo-api[1] | string | `"mongodb"` |  |
| external-secrets.schema.cms-api[0] | string | `"mongodb"` |  |
| external-secrets.schema.export-api[0] | string | `"rabbitmq"` |  |
| external-secrets.schema.export-api[1] | string | `"mongodb"` |  |
| external-secrets.schema.internal-live-api[0] | string | `"elasticsearch"` |  |
| external-secrets.schema.internal-live-api[1] | string | `"rabbitmq"` |  |
| external-secrets.schema.import-api[0] | string | `"rabbitmq"` |  |
| external-secrets.schema.import-api[1] | string | `"mongodb"` |  |
| external-secrets.schema.jobs-api[0] | string | `"rabbitmq"` |  |
| external-secrets.schema.jobs-api[1] | string | `"mongodb"` |  |
| external-secrets.schema.live-api[0] | string | `"elasticsearch"` |  |
| external-secrets.schema.master-api[0] | string | `"rabbitmq"` |  |
| external-secrets.schema.master-api[1] | string | `"mongodb"` |  |
| external-secrets.schema.master-api[2] | string | `"elasticsearch"` |  |
| external-secrets.schema.merchandising-api[0] | string | `"mongodb"` |  |
| external-secrets.schema.merchandising-api[1] | string | `"rabbitmq"` |  |
| external-secrets.schema.media-api[0] | string | `"rabbitmq"` |  |
| external-secrets.schema.media-api[1] | string | `"mongodb"` |  |
| external-secrets.schema.media-api[2] | string | `"google_service_account"` |  |
| external-secrets.schema.media-api[3] | string | `"bucket"` |  |
| external-secrets.schema.mirakl-api[0] | string | `"rabbitmq"` |  |
| external-secrets.schema.mirakl-api[1] | string | `"mongodb"` |  |
| external-secrets.schema.mock-api[0] | string | `"rabbitmq"` |  |
| external-secrets.schema.mock-api[1] | string | `"mongodb"` |  |
| external-secrets.schema.publication-api[0] | string | `"elasticsearch"` |  |
| external-secrets.schema.publication-api[1] | string | `"rabbitmq"` |  |
| external-secrets.schema.scheduler-api[0] | string | `"rabbitmq"` |  |
| external-secrets.schema.scheduler-api[1] | string | `"mongodb"` |  |
| external-secrets.schema.search-admin-api[0] | string | `"mongodb"` |  |
| external-secrets.schema.users-api[0] | string | `"mongodb"` |  |
| minio.enabled | bool | `false` |  |
| minio.fullnameOverride | string | `"catalogue-minio"` |  |
| minio.mode | string | `"standalone"` |  |
| minio.persistence.size | string | `"20Gi"` |  |
| minio.persistence.storageClass | string | `"gcp-sc-retain-wait-ssd"` |  |
| minio.ingress.enabled | bool | `true` |  |
| minio.ingress.annotations."ingress.neo9.io/expose-annotations" | string | `"kubernetes.io/ingress.class: nginx\ncert-manager.io/cluster-issuer: letsencrypt-dns-production-gcp\nexternal-dns.alpha.kubernetes.io/ttl: \"5\"\nnginx.ingress.kubernetes.io/ssl-redirect: \"true\"\nforecastle.stakater.com/expose: true\nnginx.ingress.kubernetes.io/proxy-body-size: 200m\ningress.neo9.io/access-operator-enabled: \"true\"\ningress.neo9.io/allowed-visitors: self,neo9,neo9-sf"` |  |
| minio.ingress.annotations."ingress.neo9.io/expose-labels" | string | `"ingress.neo9.io/access-operator-enabled: \"true\""` |  |
| minio.ingress.labels."ingress.neo9.io/expose" | string | `"true"` |  |
| minio.resources.requests.memory | string | `"1Gi"` |  |
| minio.buckets[0].name | string | `"catalogue-integration-media-api-bucket"` |  |
| minio.buckets[0].policy | string | `"public"` |  |
| crossplane-buckets.enabled | bool | `false` |  |
| crossplane-buckets.mode | string | `"simple"` |  |
| crossplane-buckets.shareServiceAccount.enabled | bool | `true` |  |
| crossplane-buckets.shareServiceAccount.name | string | `"namespace-catalogue-gcs"` |  |
| crossplane-buckets.shareServiceAccount.defaultRoles[0] | string | `"roles/storage.objectAdmin"` |  |
| crossplane-buckets.prefix | string | `"clustername-namespace"` |  |
| crossplane-buckets.cloud.default.location | string | `"EU"` |  |
| crossplane-buckets.buckets[0].name | string | `"cat-media"` |  |
| crossplane-buckets.buckets[0].hasPrefix | bool | `true` |  |
| crossplane-buckets.buckets[0].deletionPolicy | string | `"Orphan"` |  |
| crossplane-buckets.buckets[0].uniformPolicy | bool | `true` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.8.1](https://github.com/norwoodj/helm-docs/releases/v1.8.1)
