
.PHONY: update
update:
	git clone git@github.com:mc1arke/sonarqube-community-branch-plugin.git
	docker run -ti -v \$PWD/sonarqube-community-branch-plugin:/app -w /app gradle ./gradlew clean build
	cp build/libs/sonarqube-community-branch-plugin-1.4.1-SNAPSHOT.jar .
