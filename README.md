# kubectl-redeploy

Kubectl plugin to trigger redeploy of a deployment

## Install

Just run the command :

```
kubectl krew install --manifest-url https://raw.githubusercontent.com/tcoupin/kubectl-redeploy/main/redeploy.yaml
```

You can not find this plugin in the krew-index because it is to simple (see [PR 1741](https://github.com/kubernetes-sigs/krew-index/pull/1741))

## Usage

To redeploy `web` deployement

```
kubectl redeploy web
```

To redeploy `web` deployement in `myns` namespace

```
kubectl redeploy web -n myns
```
