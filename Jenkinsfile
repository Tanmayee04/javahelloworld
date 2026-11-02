pipeline {
  agent any
  stages {
    stage ('Compile')
      steps {
         sh 'javac hello.java'
      }
  }
    stage('Execute & Verify') {
      steps {
        sh 'java hello'
}
