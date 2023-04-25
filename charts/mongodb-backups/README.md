# MongoDB backups

[Learn more / Documentation](https://github.com/neo9/mongodb-backups)

## Installing the chart

```
helm install --name mongodb-backups n9/mongodb-backups --namespace [namespace]
```

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `mongodb-backups` deployment:

```console
$ helm del --purge mongodb-backups
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration


| Parameter                                      | Description              | Default                                                    |
|------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------|
| `tag` | Docker image tag | `v0.0.2` |
| `secrets` | Array of key and name | `[]` |
| `config` | Yaml config file | `{}` |
