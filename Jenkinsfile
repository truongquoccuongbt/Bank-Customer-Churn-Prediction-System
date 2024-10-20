pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'ls && docker-compose -f ./services/docker-compose.yaml  -f ./services/docker-compose.dev.yaml build'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}