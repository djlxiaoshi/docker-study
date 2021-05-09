pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('Build') { 
            steps {
                sh "sh ./deploy/build.sh" 
            }
        }
    }
}