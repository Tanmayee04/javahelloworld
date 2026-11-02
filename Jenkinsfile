pipeline {
    agent any
    
    environment{
      DOCKER_IMAGE = 'java-hello-world:latest'
      CONTAINER_NAME = 'java-hello-running'
    }
    
    stages {
        stage('Build docker image') {
            steps {
                sh 'docker build -t ${DOCKER_IMAGE} .'
            }
        }
        
        stage('Run container') {
            steps {
                sh 'docker run --name ${CONTAINER_NAME} ${DOCKER_IAMGE}'
            }
        }
    }
}

