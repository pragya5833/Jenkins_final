pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'cd /var/jenkins_home/workspace/Jenkins_final_master/sample-app'
        sh 'mvn -B -DskipTests clean package'
      }
    }

  }
}