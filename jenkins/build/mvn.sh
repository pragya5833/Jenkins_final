#! /bin/bash
echo "*********************************"
echo "building jar"
echo "*********************************"
WORKSPACE=/var/jenkins_home/workspace/pipelinetest
docker run --rm -v $WORKSPACE/sample-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
#docker run -it --rm -v /var/jenkins_home/workspace/pipelinetest/sample-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine mvn -B -DskipTests clean package
#docker run --rm -v /home/shav/Desktop/pipeline/sample-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine mvn -B -DskipTests clean package
#/home/jenkins/jenkins-data/jenkins_home/workspace/pipelinetest
#--volume=
#docker run --rm --volume=/var/jenkins_home/workspace/pipelinetest/sample-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine mvn -B -DskipTests clean package


#docker run -it -v /tmp/my:/mydir  busybox