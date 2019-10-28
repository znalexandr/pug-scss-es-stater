AWS_ECR_ACCESS_KEY_ID=AKIAI5VFCOGOOC4BVNXQ
AWS_ECR_SECRET_ACCESS_KEY=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

docker-login:
	$(shell AWS_ACCESS_KEY_ID=$(AWS_ECR_ACCESS_KEY_ID) AWS_SECRET_ACCESS_KEY=$(AWS_ECR_SECRET_ACCESS_KEY) \
		aws ecr get-login --region eu-west-3 --no-include-email)

build: docker-login
	chmod +x build.sh && \
	./build.sh
