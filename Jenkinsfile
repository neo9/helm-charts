library('pipeline@v11.5.2')_
def devCharts = []
def commonCharts = [
  "/": [
    [
      name: "n9-api",
      path: "charts/n9-api",
      helmVersion: 3
    ],
    [
      name: "addok",
      path: "charts/addok",
      helmVersion: 3
    ],
    [
      name: "akeneo",
      path: "charts/akeneo",
      helmVersion: 3
    ],
    [
      name: "apprise",
      path: "charts/apprise",
      helmVersion: 3
    ],
    [
      name: "catalogue",
      path: "charts/catalogue",
      helmVersion: 3
    ],
    [
      name: "catalogue-utils",
      path: "charts/catalogue-utils",
      helmVersion: 3
    ],
    [
      name: "container-registry-cleaner",
      path: "charts/container-registry-cleaner",
      helmVersion: 3
    ],
    [
      name: "container-registry-config",
      path: "charts/container-registry-config",
      helmVersion: 3
    ],
    [
      name: "container-registry-operator",
      path: "charts/container-registry-operator",
      helmVersion: 3
    ],
    [
      name: "eck-managed",
      path: "charts/eck-managed",
      helmVersion: 3
    ],
    [
      name: "estafette-gke-node-pool-shifter",
      path: "charts/estafette-gke-node-pool-shifter",
      helmVersion: 3
    ],
    [
      name: "estafette-gke-preemptible-killer",
      path: "charts/estafette-gke-preemptible-killer",
      helmVersion: 3
    ],
    [
      name: "ingress-access-operator",
      path: "charts/ingress-access-operator",
      helmVersion: 3
    ],
    [
      name: "istio-rules-external-services",
      path: "charts/istio-rules-external-services",
      helmVersion: 3
    ],
    [
      name: "kps",
      path: "charts/kps",
      helmVersion: 3
    ],
    [
      name: "minio-operator",
      path: "charts/minio-operator",
      helmVersion: 3
    ],
    [
      name: "minio-tenants",
      path: "charts/minio-tenants",
      helmVersion: 3
    ],
    [
      name: "mongodb-backups",
      path: "charts/mongodb-backups",
      helmVersion: 3
    ],
    [
      name: "mongodb-managed",
      path: "charts/mongodb-managed",
      helmVersion: 3
    ],
    [
      name: "mysql-backup",
      path: "charts/mysql-backup",
      helmVersion: 3
    ],
    [
      name: "n9-api",
      path: "charts/n9-api",
      helmVersion: 3
    ],
    [
      name: "opencost",
      path: "charts/opencost",
      helmVersion: 3
    ],
    [
      name: "passbolt",
      path: "charts/passbolt",
      helmVersion: 3
    ],
    [
      name: "postgres-managed",
      path: "charts/postgres-managed",
      helmVersion: 3
    ],
    [
      name: "privatebin",
      path: "charts/privatebin",
      helmVersion: 3
    ],
    [
      name: "rabbitmq-managed",
      path: "charts/rabbitmq-managed",
      helmVersion: 3
    ],
    [
      name: "raw",
      path: "charts/raw",
      helmVersion: 3
    ],
    [
      name: "resources-cleanup-operator",
      path: "charts/resources-cleanup-operator",
      helmVersion: 3
    ],
    [
      name: "sloop",
      path: "charts/sloop",
      helmVersion: 3
    ],
    [
      name: "snipeit",
      path: "charts/snipeit",
      helmVersion: 3
    ],
    [
      name: "tekton",
      path: "charts/tekton",
      helmVersion: 3
    ],
    [
      name: "tekton-catalog",
      path: "charts/tekton-catalog",
      helmVersion: 3
    ],
    [
      name: "tekton-logging",
      path: "charts/tekton-logging",
      helmVersion: 3
    ]
  ]
]

if (env.BRANCH_NAME == "main") {
  HelmChartPipeline {
      museumCredentialsID = "neo9-chartmuseum"
      branch = "main"
      helmCharts = commonCharts
  }
}

if (env.BRANCH_NAME == "dev") {
  HelmChartPipeline {
      museum = "https://charts.dev.neo9.pro"
      museumCredentialsID = "neo9-dev-chartmuseum"
      branch = "dev"
      helmCharts = commonCharts + devCharts
  }
}
