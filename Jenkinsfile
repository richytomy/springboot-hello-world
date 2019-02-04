pipeline {
    agent {
        docker {
            image 'springboot:richy'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh './mvnw clean package'
            }
        }

    }
}
