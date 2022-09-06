pipeline{
  agent any
  stages{
    stage('nexus'){
      steps{
        nexusArtifactUploader artifacts: [[artifactId: '', classifier: '', file: '', type: '']], credentialsId: 'nexus', groupId: '', nexusUrl: '34.203.191.215:8081', nexusVersion: 'nexus2', protocol: 'http', repository: 'task01', version: ''
      }
    }
  }
}
