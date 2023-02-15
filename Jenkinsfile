pipeline {
  agent any
  
  environment {
    DOCKER_IMAGE = "mydockerhubusername/my-app"
    DOCKER_TAG = "latest"
    DOCKER_PORT = "9000"
  }

   stages {
    stage('Build') {
      steps {
        sh 'docker build -t mydockerhubusername/my-app .'          
        }
      }
    }
  }
}
