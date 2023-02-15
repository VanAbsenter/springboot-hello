pipeline {
  agent any
  
  environment {
    DOCKER_IMAGE = "mydockerhubusername/my-app"
    DOCKER_TAG = "latest"
    DOCKER_PORT = "9000"
  }

  stages {
    stage('Build Docker Image') {
      steps {
        script {
          docker.build("${DOCKER_IMAGE}:${DOCKER_TAG}")
          docker.withRegistry("https://registry.hub.docker.com')
        }
      }
    }

    stage('Run Docker Container') {
      steps {
        script {
          docker.run("${DOCKER_IMAGE}:${DOCKER_TAG}", "-p ${DOCKER_PORT}:9000")
          
        }
      }
    }
  }
}
