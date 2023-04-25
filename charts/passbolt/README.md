# Passbolt Kubernetes Helm Charts

[![GitHub license](https://img.shields.io/github/license/mmz-srf/passbolt-helm)](https://github.com/mmz-srf/passbolt-helm/blob/master/LICENSE)
![GitHub issues](https://img.shields.io/badge/kubernetes-v1.16-green)
[![GitHub issues](https://img.shields.io/github/issues/mmz-srf/passbolt-helm)](https://github.com/mmz-srf/passbolt-helm/issues)

This helm chart installs the [passbolt container](https://github.com/passbolt/passbolt_docker/tree/master)  and a mysql database (mariadb v10.5.12)

## Requirements

- Kubernetes v1.16
- Helm 3

## Parameters

For more parameters you should have a look at ...
- the [values.yaml](values.yaml) file of this helm chart
- the [values.yaml](https://artifacthub.io/packages/helm/bitnami/mariadb/9.4.2) file of the mariadb helm chart
- the [enviroment variables](https://github.com/passbolt/passbolt_docker/tree/master) of the passbold docker image.

### General

| Parameter | Description | Default |
| - | - | - |
| `replicaCount` | How many replicas should be deployed | `1` |
| `deployStrategy` | Which deployment strategies to use | `Recreate` |
| `image.repository` | Passbolt image repository | `"passbolt/passbolt"` |
| `image.tag` | Passbolt image tag | `"latest"` |
| `image.pullPolicy` | Image pull policy | `IfNotPresent` |
| `imagePullSecrets` | Image pull secrets | `[]` |
| `nameOverride` | Name override | `""` |
| `fullnameOverride` | Full name override | `""` |
| `service.type` | Service type | `ClusterIP` |
| `service.port` | Service port | `80` |
| `ingress.enabled` | Enable ingress | `true` |
| `ingress.host` | Ingress host | `passbolt.yourdomain.com` |

### Passbolt

| Parameter | Description | Default |
| - | - | - |
| `passbolt.persistence.enabled` | Enable/Disable persistence Disk for uploaded Files (Avatars) | `true` |
| `passbolt.persistence.storageClass` | Disk storageclass | `-` |
| `passbolt.persistence.accessMode` | Disk access mode | `ReadWriteOnce` |
| `passbolt.persistence.size` | Disk size | `1Gi` |
| `passbolt.config.debug` | Enable/Disable debug output in passbolt image | `false` |
| `passbolt.config.registration` | Enable/Disable user can register | `false` |
| `passbolt.config.salt` | Salt. Generate: ```openssl rand -base64 32``` | `"your salt"` |
| `passbolt.config.gpgServerKeyFingerprint` | The GPG server key fingerprint. See [GPG key generation](#gpg-key-generation) | `"your gpg server key fingerprint"` |
| `passbolt.config.serverkey` | The GPG server key. If set the key will not be read from [file](secrets/gpg/serverkey.asc) | ` ` |
| `passbolt.config.serverkey_private` | The GPG private server key. If set the private key will not be read from [file](secrets/gpg/serverkey_private.asc) | ` ` |
| `passbolt.config.license.enabled` | Set true if you own a license key. Add the license key in [secrets/pro-license/license](secrets/pro-license/license) | `false` |
| `passbolt.config.license.key` | The license key. If set the license key will not be read from [file](secrets/pro-license/license). | `false` |
| `passbolt.config.plugins.exportenabled` | Enable export plugin | `true` |
| `passbolt.config.plugins.importenabled` | Enable import plugin | `true` |
| `passbolt.config.email.enabled` | Enable/Disable sending emails transport | `false` |
| `passbolt.config.email.from` | From email address	| `you@localhost` |
| `passbolt.config.email.host` | Email server hostname | `localhost` |
| `passbolt.config.email.port` | Email server port | `25` |
| `passbolt.config.email.timeout` | Email server timeout | `30` |
| `passbolt.config.email.username` | Username for email server auth | `username` |
| `passbolt.config.email.password` | Password for email server auth | `password` |
| `passbolt.config.livenessProbe.failureThreshold` | failureThreshold for livenessProbe | `3` |
| `passbolt.config.livenessProbe.successThreshold` | successThreshold for livenessProbe | `1` |
| `passbolt.config.livenessProbe.periodSeconds` | periodSeconds for livenessProbe | `10` |
| `passbolt.config.livenessProbe.initialDelaySeconds` | initialDelaySeconds for livenessProbe | `60` |
| `passbolt.config.livenessProbe.timeoutSeconds` | timeoutSeconds for livenessProbe | `10` |
| `passbolt.config.readinessProbe.failureThreshold` | failureThreshold for readinessProbe | `3` |
| `passbolt.config.readinessProbe.successThreshold` | successThreshold for readinessProbe | `1` |
| `passbolt.config.readinessProbe.periodSeconds` | periodSeconds for readinessProbe | `10` |
| `passbolt.config.readinessProbe.initialDelaySeconds` | initialDelaySeconds for readinessProbe | `60` |
| `passbolt.config.readinessProbe.timeoutSeconds` | timeoutSeconds for readinessProbe | `10` |


### Database
| Parameter | Description | Default |
| - | - | - |
| `mariadb.architecture` | MariaDB architecture (standalone or replication) | `standalone` |
| `mariadb.auth.rootPassword` | Password for the root user | `` |
| `mariadb.auth.database` | Name for the custom database | `passbolt` |
| `mariadb.auth.username` | Username of the passbolt user | `passbolt` |
| `mariadb.auth.password` | Password for the passbolt database user | `` |



## GPG key generation

1. Create GPG config file gpg-server-key.conf with the following content

        %echo Generating a basic OpenPGP key
        Key-Type: RSA
        Key-Length: 4096
        Subkey-Type: RSA
        Subkey-Length: 4096
        Name-Email: joe@foo.bar
        Name-Real: Joe Tester
        Expire-Date: 0
        %echo done

2. Create GPG keys

    :warning: do not set a password, since passbolt won't start :warning:

        gpg --gen-key --batch gpg-server-key.conf


3. List GPG keys

        gpg --list-secret-keys --keyid-format LONG

    You will need this to export it and in your values.yaml to validate the keys.

4. Export keys

        KEY_ID=<put your key here>
        gpg --armor --export $KEY_ID > serverkey.asc
        gpg --armor --export-secret-keys $KEY_ID > serverkey_private.asc


## Using the charts to deploy your passbolt :

1. Create a secret myreleasename-gpg 

        containing two data : 
        - serverkey.asc
        - serverkey_private.asc
        
        secret will be mounted to etc/passbolt/gpg

2. If you don't plain password in values.yaml, create your secret

        Populate with following data depending on your needs :
        - mariadb-root-password
        - mariadb-password
        - mariadb-replication-password

        indicate secret name in mariadb.auth.existingSecret

3. Deploy your chart

        you can check yourdomain.com/auth/verify.json
        to verify if PGP public key block is correctly used from your secret's data


## Importing your database / Upgrading your app :

1. Check yourdomain.com/auth/verify.json

        PGP Key should be the same than in your previous instance
        If not verify your myreleasename-pgp

2. Interrupt all Passbolt Pods

        kubectl scale --replicas=0 deployment yourpassbolt

3. Restore DB

        ssh into the mariadb pod
        log into database as root (use login and db name accordingly to your values)
        
        drop database passbolt;
        create database passbolt COLLATE utf8mb4_unicode_ci;

        import your previous db

        mysql -u root -p passbolt < yourdump.sql        

        you can use 'kubectl cp' to copy your dump into /tmp

4. Restore Passbolt Pods

        kubectl scale --replicas=X deployment yourpassbolt

        At start passbolt will seek to reorganize data from previous version that it recognize to the structure used by the current version you are running -> check log
        
5. Healtcheck and verify your data

        You should be able to login with your previous credentials and recovery kit
        If else, this healtcheck could be usefull

        kubectl exec -it --namespace passboltnamespace --context passboltcluster passboltpods-XXX-XXX -- su -s /bin/bash -c "/usr/share/php/passbolt/bin/cake passbolt healthcheck" www-data

## Create first passbolt admin user

    root@passbolt-passbolt-app:/var/www/passbolt# su -m -c "bin/cake passbolt register_user -u passboltadmin@yourdomain.com -f Admin -l Istrator -r admin" -s /bin/sh www-data
