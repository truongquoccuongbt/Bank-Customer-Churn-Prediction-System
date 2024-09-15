pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'docker-compose -f ./docker-compose.yaml  -f ./docker-compose.dev.yaml build'
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