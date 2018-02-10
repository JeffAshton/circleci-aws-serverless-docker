image := jeffashton/circleci-aws-serverless:1.26.0

build :
	docker build --no-cache -t $(image) .

test : build
	docker run -it --rm $(image) bash

push : build
	docker push $(image)
