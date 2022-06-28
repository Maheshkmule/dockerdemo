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
                   withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerhub')]) {
                   bat 'docker login -u maheshmule -p ${dockerhub}'

}
                   bat 'docker push maheshmule/dockerdemo'
                }
            }
         }
      }
   
}
