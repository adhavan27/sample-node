pipeline{
    agent any
    stages{
        stage ('github checkout'){
            steps{
            git "https://github.com/adhavan27/sample-node.git"   
            }
        }
        stage ('Build'){
            steps{
                sh "npm install"
                sh "npm test"
            }
        }
        stage('sonarqube stage'){
            steps{
                sh "npm run sonar"
            }
        }
        stage ("docker build image"){
            steps{
                sh "docker build -t adhavan27/sample-node ."
            }
        }
        stage ("docker image push"){
            steps{
               withCredentials([string(credentialsId: 'docker', variable: 'dockerpassword')]) {
                sh "docker login -u adhavan27 -p ${dockerpassword}"
        }
                sh "docker push adhavan27/sample-node"
            }
        }
        stage ("container deployment"){
            steps{
                sh "docker rm -f nodejs"
                sh "docker run -d -p 5000:8080 --name nodejs adhavan27/sample-node"
            }
        }
    }
}
