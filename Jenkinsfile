pipeline {
    agent any
    
    environment{
      DOCKER_USER = 'tanmayeedhakate'
      DOCKER_IMAGE = 'java-hello-world-v3'
      CONTAINER_NAME = 'java-hello-running-v3'
      DOCKER_CREDS_ID = 'my-docker-hub-credentials-id'
    }
    
    stages {
        stage('Build docker image') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} ."
            }
        }
        
        stage('Run container') {
            steps {
                sh "docker run --name ${CONTAINER_NAME} ${DOCKER_IMAGE}"
            }
        }
    }
}

