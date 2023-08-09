# argo-workflows

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: latest](https://img.shields.io/badge/AppVersion-latest-informational?style=flat-square)

Neo9 argo workflows deployment

This chart basically deploys workflows through templates, there are cluster wide either they are deployed in a namespace.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| vpnScript.containerImage | string | `"eu.gcr.io/neokube/vpn-script:latest"` | container image used by vpn script |
| vpnScript.credentials.configVpnCli.secretName | string | `"config-vpn-cli"` | name of the secret containing vpn script cli config (env parameters) |
| vpnScript.credentials.gcp.secretName | string | `"argo-gcloud-credendtials"` | name of the secret containing gcp service account token (key cred.json, mandatory to mount file with the same name) |
| vpnScript.credentials.gitConfig.secretName | string | `"git-config"` | name of the secret containing .gitconfig |
| vpnScript.credentials.sshKeys.secretName | string | `"ssh-key"` | name of the secret containing ssh config (config, private and public keys) |
| workflowCli.containerImage | string | `"eu.gcr.io/neokube/workflow-cli:latest"` |  |
| workflowCli.jiraCli.credentials.secretName | string | `"jira-credentials"` | name of the secret containing jira credentials with keys (user, token, jira-url) |