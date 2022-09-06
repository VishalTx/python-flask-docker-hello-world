pipeline{
  agent any
  stages{
    stage('checkout'){
      steps{
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/VishalTx/python-flask-docker-hello-world.git']]])
      }
    }
  }
}
