pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Satya-satya989/shapez.io.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'yarn install'
            }
        }

        stage('Build') {
            steps {
                sh 'yarn gulp'
            }
        }

        stage('Serve') {
            steps {
                sh 'nohup npx serve . -l 8080 &'
            }
        }
    }
}
