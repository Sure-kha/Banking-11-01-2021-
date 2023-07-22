node {

    stage("Git Clone"){

        git credentialsId: 'git-hub cred', url: 'https://github.com/Sure-kha/Banking-11-01-2021-.git', branch: 'jenkins-docker' 
    }

     stage("Build") {

       sh 'docker build . -t  surekha1988/pipeline:latest'
       sh 'docker image list'

    }

    withCredentials([string(credentialsId: 'dock-pass', variable: 'PASSWORD')]) {
        sh 'docker login -u surekha1988 -p $PASSWORD'
    }

    stage("Push Image to Docker Hub"){
        sh 'docker push surekha1988/pipeline:latest'
    }

    stage("kubernetes deployment"){
        sh 'kubectl apply -f deployment.yml'
    }
}
