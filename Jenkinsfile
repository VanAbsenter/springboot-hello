pipeline {
  agent any
  
  stage('Run Docker Container') {
      steps {
        script {
          docker.run("${DOCKER_IMAGE}:${DOCKER_TAG}", "-p ${DOCKER_PORT}:8080")
        }
      }
  }
  stages {
    stage('Build and Push Docker Image') {
      steps {
        script {
          docker.build("${DOCKER_IMAGE}:${DOCKER_TAG}")
          docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-creds')
          docker.image("${DOCKER_IMAGE}:${DOCKER_TAG}").PUSH()
        }
      }
    }
  }
