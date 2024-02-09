.PHONY: run_website stop_website install_kind \
install_kind create_docker_registry

run_website: target_a target_b target_c
docker build -t explore.com . && \
docker run --rm --name explore.com - p 5000:80 -d explore.com

stop_website:
docker stop explore.com

install_kind:
curl --location --output ./kind

create_kind_cluster: install_kind install_kubectl create_docker_registry
kind create cluster --name explore.com && \
kubectl get nodes

install_kubectl:
brew install_kubectl

create_docker_registry:
if docker ps | grep -q 'local-registry'; \
then echo "---> local-registry already created; skipping"; \
docker run --name local-registry -d --restart=always -p 5000:5000 registry:2; \
fi