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
                    rm -f package-lock.json yarn.lock
                    yarn cache clean
                '''
            }
        }

        stage('Install Dependencies') {
            steps {
                sh '''
                    yarn install --frozen-lockfile || yarn install
                '''
            }
        }

        stage('Build Game') {
            steps {
                sh '''
                    npx gulp
                '''
            }
        }

        stage('Serve App') {
            steps {
                sh '''
                    nohup npx serve . -l 8080 > server.log 2>&1 &
                '''
            }
        }
    }
}
