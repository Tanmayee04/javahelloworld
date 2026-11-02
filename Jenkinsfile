pipeline {
    agent any
    
    stages {
        stage('Build docker image') {
            steps {
                sh 'docker build -t java-hello-world:latest'
            }
        }
        
        stage('Run container') {
            steps {
                sh 'docker run --name java-hello-running java-hello-world:latest'
            }
        }
    }
}

