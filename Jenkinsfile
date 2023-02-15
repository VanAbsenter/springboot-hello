pipeline {
    agent any
    
      environment {
    DOCKER_IMAGE = "mydockerhubusername/my-app"
    DOCKER_TAG = "latest"
    DOCKER_PORT = "8080"
  }
    
      stages {
        stage('Delete workspace before build starts') {
            steps {
                echo 'Deleting workspace'
                deleteDir()
            }
        }
       stage('Build docker image') {
             steps{
                dir('lesson-1') {
                    sh 'docker build -t mydockerhubusername/my-app:0.4 .'
                }
            }
        }
        stage('Push docker image to DockerHub') {
            steps{
                withDockerRegistry(url: 'https://index.docker.io/v1/') {
                    sh '''
                        docker push mydockerhubusername/my-app:0.4
                    '''
                }
            }
        }
