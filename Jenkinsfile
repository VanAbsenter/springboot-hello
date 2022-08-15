pipeline {

    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11'
            args '-v /root/.m2:/root/.m2'
        }
    }

    stages {
        stage('Build'){
            steps{
                echo "Get commit ${env.GIT_COMMIT} in branch ${env.GIT_BRANCH}"
                echo "Running ${env.BUILD_NUMBER} build on ${env.NODE_NAME}"
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}