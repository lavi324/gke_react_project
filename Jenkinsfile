pipeline {
    agent {
        kubernetes {
            inheritFrom 'docker-image-build'
            idleMinutes 5
            yamlFile 'Build-pod.yaml'
            defaultContainer 'dind'
        }
    }
    environment {
        DOCKER_REGISTRY = 'https://registry.hub.docker.com'
        DOCKER_HUB_CREDENTIALS = credentials('dockerhublavi') 
        TAG = '0.2'
    }
    stages {
        stage('build') {
            steps {
                sh 'npm version'  
            }        
        }
        stage('Run npm build') {
            steps {
                echo 'Running npm build...'
                sh 'npm run build'
            }
        }
        stage('Test Docker') {
            steps {
                script {
                    sh 'docker --version'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'start build docker image'
                sh "docker build -t lavi324/react_project:${TAG} ."   
            }
        }
        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhublavi', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh '''
                    echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                    docker push lavi324/react_project:${TAG}
                    '''
                }
            }
        }
    }
    post {
        success {
            echo 'Docker image pushed successfully.'
        }
    }
}

