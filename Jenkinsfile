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
                sh '''
                    npm install -g yarn
                    yarn install
                    yarn add gulp gulp-cli --dev
                '''
            }
        }

        stage('Build Game') {
            steps {
                sh 'npx gulp'
            }
        }

        stage('Serve App') {
            steps {
                sh 'nohup npx serve . -l 8080 > server.log 2>&1 &'
            }
        }
    }
}
