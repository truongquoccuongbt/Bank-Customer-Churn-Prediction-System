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
                    echo 'Push image to docker hub...'
                    docker.withRegistry('', registryCredential) {
                        sh 'docker push truongcuongbt/bank-customer-chunk-api:latest'
                        echo 'push image success'
                    }
                }
                
            }
        }
        // stage('SSH commands') {
        //     steps {
        //         sshagent(credentials: ['vps_bankchunk']) {
        //             sh '''
        //             ls
        //             '''
        //         }
        //     }
        // }
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