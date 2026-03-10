all: ggshield-ghes-pre-receive.tar.gz

ggshield-ghes-pre-receive.tar.gz: create-ghes-environment Dockerfile
	bash $<
