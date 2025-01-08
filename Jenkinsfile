#!groovy
pipeline {
  agent none
  stages {
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t hello-world .'
        sh 'docker run -d -p 4001:4000 hello-world'
      }
    }
  }
}