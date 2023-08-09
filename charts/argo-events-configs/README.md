# argo-events-configs

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: latest](https://img.shields.io/badge/AppVersion-latest-informational?style=flat-square)

Neo9 argo events deployment

This chart basically deploys events need for triggering workflows on argo.
It is possible to replace template which is triggered, this is juste an example.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| appName | string | `"example-app"` |  |
| eventBus.name | string | `"default"` | event bus name |
| eventBus.replicas | int | `3` | event bus replicas |
| ingress.annotations | object | `{}` | Annotations are used to configure the ingress controller |
| ingress.enabled | bool | `true` | enable ingress |
| ingress.ingressClassName | string | `"nginx"` |  |
| ingress.tls | bool | `true` |  |
| rbac.serviceAccountName | string | `"operate-workflow-sa"` | ServiceAccount used by argo-events, only one by default for this version |
| webhooks[0] | object | `{"events":[{"endpoint":"/some-event","event":"some-event","port":"12000"}],"name":"example-webhook","tls":{"hosts":["example-webhook.example.com"],"secretName":"argo-example-webhook-tls"},"triggers":[{"template":{"conditions":"vpn-remove-user-from-group","k8s":{"operation":"create","parameters":[{"dest":"spec.arguments.parameters.1.value","src":{"dataKey":"body.message","dependencyName":"some-event"}}],"source":{"resource":{"apiVersion":"argoproj.io/v1alpha1","kind":"Workflow","metadata":{"generateName":"webhook-","namespace":"argo"},"spec":{"arguments":{"parameters":[{"name":"message"}]},"entrypoint":"vpn-script","workflowTemplateRef":{"clusterScope":true,"name":"hello-world"}}}}},"name":"webhook-workflow-trigger-vpn-remove-user-from-group"}}],"url":"example-webhook.example.com"}` | webhook name |
| webhooks[0].events[0] | object | `{"endpoint":"/some-event","event":"some-event","port":"12000"}` | Events for this webhook, it has to be mapped with ingress setup |