#!groovy
pipeline {
  agent none
  stages {
    stage('Docker stop') {
      agent any
      steps {
         try {
            sh 'docker stop hello'
            sh 'docker rm hello'
         } catch (Exception e) {
         }
      }
    }
    stage('Docker delete') {
      agent any
      steps {
          try {
        sh 'docker rmi hello-world'
           } catch (Exception e) {
         }
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