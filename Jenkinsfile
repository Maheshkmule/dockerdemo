pipeline {
    agent any
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Maheshkmule/dockerdemo.git']]])
              
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    dockerimage='docker build -t maheshmule/dockerdemo .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'docker', variable: 'dockerdemo1')]) {
                   bat 'docker login -u maheshmule -p ${dockerdemo1}'

}
                   bat 'docker push maheshmule/dockerdemo'
                }
            }
         }
      }
   
}
