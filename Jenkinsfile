#!groovy
pipeline {
  agent none
  stages {
    stage('Docker stop container') {
      agent any
      steps {
        sh 'docker stop hello'
        sh 'docker rm hello'
      }
    }
    stage('Docker delete image') {
      agent any
      steps {
        sh 'docker rmi hello-world'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t hello-world .'
      }
    }    
    stage('Docker run') {
      agent any
      steps {
        sh 'docker run -d --name hello -p 4001:4000 hello-world'
      }
    }
  }
}