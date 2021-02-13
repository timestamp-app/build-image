.PHONY: node
node: TAG=docker.pkg.github.com/timestamp-app/build-node
node:
	docker build -t ${TAG} node/
	docker push ${TAG}
