pipeline {
    environment {
        p = sh 'echo $PATH'
        PATH = p + ':/usr/local/bin/docker-compose'
    }
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