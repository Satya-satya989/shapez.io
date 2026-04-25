pipeline {
    agent any

    environment {
        NODE_ENV = 'production'
    }

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Satya-satya989/shapez.io.git'
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
                    cd gulp
                    yarn install || true
                    npx gulp
                '''
            }
        }

        stage('Package App') {
            steps {
                sh '''
                    cd ..
                    ls -la
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

    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed. Check logs.'
        }
    }
}
