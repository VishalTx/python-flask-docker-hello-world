pipeline{
  agent any
  environment {
    DOCKER_CREDENTIALS= credentials('docker')
  }
  stages{
    stage('checkout'){
      steps{
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/VishalTx/python-flask-docker-hello-world.git']]])
      }
    }
    stage('Build Docker') {
      steps{
       // build the docker image from the source code using the BUILD_ID parameter in image name
        sh 'echo $DOCKER_CREDENTIALS | sudo docker login -u $DOCKER_CREDENTIALS --password-stdin'
        sh "sudo docker build -t flask-app . -S"
      }
    }
    stage("run docker container"){
      steps{ 
        sh "docker run -p 8000:8000 --name flask-app -d flask-app "
      }
    }
  }
}
