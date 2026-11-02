pipeline {
    agent any
    
    environment{
      DOCKER_USER = 'tanmayeedhakate'
      IMAGE_NAME = 'java-hello-world-v3'
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
                sh "docker rm -f ${CONTAINER_NAME} || true"
                sh "docker run --name ${CONTAINER_NAME} ${DOCKER_IMAGE}"
            }
        }
        stage('Push to Dockerhub') {
            steps {
                withCredentials([usernamePassword(credentialsId: DOCKER_CREDS_ID, usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh "echo '${PASS}' | docker login -u '${USER}' --password-stdin"
                    sh "docker tag ${IMAGE_NAME} ${DOCKER_USER}/${IMAGE_NAME}:latest"
                    sh "docker push ${DOCKER_USER}/${IMAGE_NAME}:latest"
                }
            }
        }
    }
}

