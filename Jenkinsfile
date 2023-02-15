pipeline {
    agent any

    stages {
        stage('Docker version') {
            steps {
                sh "echo $USER"
                sh 'docker version'
            }
        }
        stage('Delete workspace before build starts') {
            steps {
                echo 'Deleting workspace'
                deleteDir()
            }
        }
        stage('Checkout') {
            steps{
                git branch: 'main',
                    url: 'https://github.com/nongratt/springboot-hello.git'        
                }
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
