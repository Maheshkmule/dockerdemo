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
                   
                    sh 'docker build -t maheshmule/dockerdemo .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u maheshmule -p ${dockerhubpwd}'

}
                   sh 'docker push maheshmule/dockerdemo'
                }
            }
         }
      }
   
}
