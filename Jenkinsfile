pipeline {
  agent any
  
  environment {
    DOCKER_IMAGE = "mydockerhubusername/my-app"
    DOCKER_TAG = "latest"
    DOCKER_PORT = "8080"
  }

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
          docker.run("${DOCKER_IMAGE}:${DOCKER_TAG}", "-p ${DOCKER_PORT}:8080")
          }
               sh "docker build ."
          }
        }
      }
    }
  }
}
