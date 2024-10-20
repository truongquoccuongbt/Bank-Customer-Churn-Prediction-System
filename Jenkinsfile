pipeline {
    agent any

    environment {
        registry = 'truongcuongbt/bank-customer-chunk-api'
        registryCredential = 'dockerhub'
    }
    
    stages {
        stage('Build') {
            steps {
                script {
                    sh 'ls && docker-compose -f ./services/docker-compose.yaml  -f ./services/docker-compose.dev.yaml build'
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                    echo 'Push image to docker hub...'
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                        dockerImage.push('lasted')
                    }
                }
                
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