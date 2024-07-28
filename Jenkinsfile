pipeline {
    // environment {
    //     p = sh 'echo $PATH'
    //     PATH = p + ':/usr/local/bin/docker-compose'
    // }
    

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'python:3.8'
                }
            }
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