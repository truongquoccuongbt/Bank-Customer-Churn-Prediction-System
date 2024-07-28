pipeline {
    // environment {
    //     p = sh 'echo $PATH'
    //     PATH = p + ':/usr/local/bin/docker-compose'
    // }
    agent {
        docker {
            image 'python:3.8'
        }
    }

    stages {
        stage('Build') {
            steps {
                sh 'docker compose -f ./docker-compose.yaml  -f ./docker-compose.dev.yaml build'
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