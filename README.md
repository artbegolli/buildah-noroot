# buildah-noroot

This repository holds an example for running buildah builds inside k8s containers.

I’ve managed to setup an unprivileged build in a container running quay.io/buildah/stable v1.11.3 through looking through a number of issues which works with the following conditions:
* --security-opt seccomp:unconfined: this could be okay – Kubernetes by default sets seccomp:unconfined. Ideally we would not want to have to set this.
* setting a volume: this is fine
* buildah bud with --storage-driver vfs: This is limiting. The preference is to not force users to set a storage driver in their build specification and additionally vfs leads to slow build times.
