pipeline {
    agent {
        kubernetes {
            inheritFrom 'docker-image-build'
            idleMinutes 5
            yamlFile 'Build-pod.yaml'
            defaultContainer 'dind'
        }
    }

    tools {
        nodejs "21.7.1"
    }

    environment {
        DOCKER_REGISTRY = 'https://registry.hub.docker.com'
        DOCKER_HUB_CREDENTIALS = credentials('dockerhublavi') 
        TAG = '0.3'
    }
    stages {
        stage('Build') {
            steps {
                dir('frontend') { // Navigate into the frontend directory
                    sh 'npm install'
                    sh 'npm run build'
                }
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
        stage('Helm Package') {
            steps {
                sh 'helm package my_react_chart'
            }
        }
        stage('Helm Push') {
            steps {
                sh 'helm push my-react-chart-0.1.2.tgz oci://registry-1.docker.io/lavi324'
            }
        }
    }
    post {
        success {
            echo 'Docker image pushed successfully.'
        }
    }
}
