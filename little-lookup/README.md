# Little Lookup Helm Chart

Provides kubernetes deployment for https://github.com/jscheel42/little-lookup

## Installing the Chart

```bash
# Add the parent chart repository
helm repo add jscheel42 https://jscheel42.github.io/helm-charts/
# Install
helm install --name my-release jscheel42/little-lookup
```

## Configuration

The following tables list the configurable parameters of the Little Lookup chart and their default values.

| Parameter                         | Description                          | Default                                   |
| --------------------------------- | ------------------------------------ | ----------------------------------------- |
| `image.repository`                | Docker image for little-lookup       | `jscheel42/little-lookup`                 |
| `image.tag`                       | Docker tag for little-lookup         | `latest`                                  |
| `image.repository`                | When to pull the image               | `Always`                                  |
| `env`                             | List of name+value maps for env      | `[]`                                      |
| `db.path`                         | Filepath for the sqlite database     | `/data/default.db`                        |
| `debug`                           | Set RUST_BACKTRACE=1                 | `false`                                   |
| `service.type`                    | Service type                         | `ClusterIP`                               |
| `service.port`                    | Service port                         | `8000`                                    |
| `ingress.enabled`                 | Enable Ingress                       | `false`                                   |
| `ingress.annotations`             | Annotations                          | `kubernetes.io/ingress.class: nginx`      |
| `ingress.path`                    | Path                                 | `/`                                       |
| `ingress.enabled`                 | Enable Ingress                       | `false`                                   |
| `ingress.hosts`                   | List of hostnames                    | `[]`                                      |
| `persistence.enabled`             | Enable persistence for the /data dir | `false`                                   |
| `persistence.existingclaim`       | Existing PVC to use for persistence  | `myvol`                                   |
| `resources.requests.memory`       | Pod request memory                   | `128Mi`                                   |
| `resources.requests.cpu`          | Pod request cpu                      | `50m`                                     |
| `resources.limits.memory`         | Pod limit memory                     | `512Mi`                                   |
| `resources.limits.cpu`            | Pod limit cpu                        | `500m`                                    |
| `nodeSelector`                    |                                      | `{}`                                     |
| `tolerations`                     |                                      | `[]`                                     |
| `affinity`                        |                                      | `{}`                                     |