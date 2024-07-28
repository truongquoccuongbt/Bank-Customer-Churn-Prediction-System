pipeline {
    environment {
        PATH = "$PATH:/usr/local/bin"
    }
    agent any
    
    if (env.BRANCH_NAME == 'main') {
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
    
}