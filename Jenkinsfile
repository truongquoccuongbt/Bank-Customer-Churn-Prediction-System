pipeline {
    agent {
        docker {
            image 'python:3.8'
        }
    }

    stages {
        stage('Build') {
            steps {
                sh 'make build-dev'
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