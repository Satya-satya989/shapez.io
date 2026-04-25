pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Satya-satya989/shapez.io.git'
            }
        }

        stage('Clean Workspace') {
            steps {
                sh '''
                    rm -rf node_modules
                    rm -f package-lock.json
                    yarn cache clean
                '''
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'yarn install'
            }
        }

        stage('Install Build Tools') {
            steps {
                sh 'yarn add gulp gulp-cli browser-sync --dev'
            }
        }

        stage('Build Game') {
            steps {
                sh '''
                    cd gulp
                    npx gulp
                '''
            }
        }

        stage('Serve App') {
            steps {
                steps {
                    sh 'nohup npx serve . -l 8080 > server.log 2>&1 &'
                }
            }
        }
    }
}
