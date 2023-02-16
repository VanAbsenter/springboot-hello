pipeline {
  agent any
  
  environment {
    DOCKER_IMAGE = "mydockerhubusername/my-app"
    DOCKER_TAG = "latest"
    DOCKER_PORT = "9000"
  }

  stages {
    stage('Build and Push Docker Image') {
      steps {  
         sh 'docker build -t mydockerhubusername/my-app:$BUILD_NUMBER .'
        }
      }
    }
      
   stage('Run Docker Container') {
      steps {
        script {
          docker.run("${DOCKER_IMAGE}:${DOCKER_TAG}", "-p ${DOCKER_PORT}:9000")
          sh 'docker run mydockerhubusername/my-app'
          
        }
      }
    }
  }
}
