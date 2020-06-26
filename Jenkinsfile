pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'cd /sample-app'
        sh 'mvn -B -DskipTests clean package'
      }
    }

  }
}