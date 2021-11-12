# kubectl-redeploy

Kubectl plugin to trigger redeploy of a deployment

## Install

This plugin is too basic to be hostes in the krew-index but you can still install it with the command :

```
kubectl krew install --manifest-url https://raw.githubusercontent.com/tcoupin/kubectl-redeploy/main/redeploy.yaml
```

## Usage

To redeploy `web` deployement

```
kubectl redeploy web
```

To redeploy `web` deployement in `myns` namespace

```
kubectl redeploy web -n myns
```
