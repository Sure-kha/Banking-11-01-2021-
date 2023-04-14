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
//           def dockerCmd='docker run -d -p 4200:4200 surekha1988/myfirst-app:banking-1.0'
          def dockerComposeCmd="docker-compose -f docker-compose.yaml up --detach"
          sshagent(['ec2-server-key']) {
            sh "scp docker-compose.yaml ubuntu@3.110.49.81:/home/ubuntu"
          sh "ssh -o StrictHostKeyChecking=no ubuntu@3.110.49.81 ${dockerComposeCmd}"
         }
        }
      }
    }
  }
}
