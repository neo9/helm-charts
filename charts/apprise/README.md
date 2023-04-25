Apprise allows you to send notifications to almost all of the most popular notification services.
It also has an Apprise API witch is a lightweight REST framework that wraps the Apprise Notification Library.

## Options:

### Notification system:
Here is a stateless example of how one might send a notification (using /notify/):

   - `curl -X POST -d 'urls=mailto://user:pass@gmail.com&body=test message' \
    https://apprise.neokube.neo9.pro/notify`

  - `curl -X POST -d '{"urls": "slack://tokenA/tokenB/TokenC/#channel", "body":"test message"}' \
    -H "Content-Type: application/json" \
    https://apprise.neokube.neo9.pro/notify`

Using --tag (or -g) with apprise will now only notify those that match the tag specify.
There is a special tag called all which when specified will notify everything 

In the case of not wanting to put the configuration directly in the curl command, we can use a more persistent solution.

### Persistent Storage Solution
We can pre-save all of our Apprise configuration and/or set of Apprise URLs and associate them with a {KEY} of your choosing. 

There are multiple options to create a persistent configuration:

1. Directly with the curl command using the "add" option.
Example:

   `curl -X POST -d '{"format":"text","config":"devops=slack://tokenA/tokenB/TokenC/#channel"}' \
    -H "Content-Type: application/json" \
    https://apprise.neokube.neo9.pro/add/{KEY}/`


2. API: There is a small built-in Configuration Manager that can be optionally accessed through your web browser allowing you to create and save as many configurations as you'd like.

- https://apprise.neokube.neo9.pro/cfg/{KEY}


3. Define a config in the values.yaml file:

```yaml
config:
  existingSecret: 
  existingSecretKey: 
  rawYaml: 
   rawFile: |
      version: 1
      tag: all, devops
      urls:
        - slack://tokenA/tokenB/TokenC/#channel:
          - tag: devops
```

4. Define a secret in the cluster with the desired config and bind it in values.yaml:


   4.1. Create a secret, "config-secret", in the cluster.

   4.1. At values.yaml

   ```yaml
      config:
      existingSecret: config-secret
      existingSecretKey: 
         - configFile.yml
      rawYaml: []
   ```
### Environment Variables

The use of environment variables allow you to provide over-rides to default settings.

 By default, in the deployment.yaml we define 2 environment variables:

    APPRISE_STATEFUL_MODE = simple 

    Configuration is written straight to disk using the {KEY}.cfg (if TEXT based) and {KEY}.yml (if YAML based).
 
    APPRISE_CONFIG_LOCK =yes

    Locks down your API hosting so that you can no longer delete/update/access stateful information.
    Your configuration is still referenced when stateful calls are made to /notify.

See more:

- https://github.com/caronc/apprise-api

- https://github.com/caronc/apprise