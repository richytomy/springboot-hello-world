pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker { 
                    image 'maven:3-alpine' 
                    args '-v /root/.m2:/root/.m2'
                    }
            }
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }

        stage('Test') {
            agent {
                docker { 
                    image 'maven:3-alpine' 
                    args '-v /root/.m2:/root/.m2'
                    }
            }
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('Deploy') {
            agent { dockerfile             {
                  args  "-d --entrypoint='' -p 80:80"
            } }

            steps {
                sh'curl http://35.171.162.72:80/ -v'
            }
        }
    }
}
