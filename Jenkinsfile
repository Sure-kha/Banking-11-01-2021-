pipeline{
  agent any
  stages{
    stage("build"){
      steps{
        echo "Building the Application...."
      }
    }
    stage("test"){
      steps{
        echo "testing the application..."
      }
    }
    stage("deploy"){
      steps{
        echo "Deploy the application..."
        script{
          def dockerCmd='docker run -d -p 4201:4201 surekha1988/myfirst-ap:banking-1.0'
          sshagent(['ec2-server-key']) {
          sh "ssh -o StrictHostKeyChecking=no ubuntu@3.110.147.252 ${dockerCmd}"
}
        }
      }
    }
  }
}
