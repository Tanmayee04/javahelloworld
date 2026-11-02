pipeline {
    agent any
    
    environment{
      DOCKER_USER = 'tanmayeedhakate'
      DOCKER_IMAGE = 'java-hello-world:latest'
      CONTAINER_NAME = 'java-hello-running'
      DOCKER_CREDS_ID = 'tanmayeedhakate'
    }
    
    stages {
        stage('Build docker image') {
            steps {
                sh 'docker build -t ${DOCKER_IMAGE} .'
            }
        }
        
        stage('Run container') {
            steps {
                sh 'docker run --name ${CONTAINER_NAME} ${DOCKER_IMAGE}'
            }
        }
    }
}

