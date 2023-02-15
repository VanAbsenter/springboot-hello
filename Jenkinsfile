pipeline {
  agent any
  

  stages {
    stage('Build and Push Docker Image') {
      steps {
        script {
          docker.build("${DOCKER_IMAGE}:${DOCKER_TAG}")
        }
      }
    }

    stage('Run Docker Container') {
      steps {
        script {
          docker.run("${DOCKER_IMAGE}:${DOCKER_TAG}", "-p ${DOCKER_PORT}:9000:9000")
          
        }
      }
    }
  }
}

