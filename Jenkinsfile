pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Satya-satya989/shapez.io.git'
            }
        }

        stage('Install Dependencies (Yarn)') {
            steps {
                sh 'npm install -g yarn'
                sh 'yarn install'
            }
        }

        stage('Build Game (Gulp)') {
            steps {
                sh 'yarn gulp'
            }
        }

        stage('Serve App') {
            steps {
                sh 'nohup npx serve . -l 8080 &'
            }
        }
    }
}
