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
        stage('npm version') {
            steps {
                sh 'npm version'  
            }        
        }
        stage('Setup') {
            steps {
                script {
                    // Create React app
                    sh 'npx create-react-app my-app'
                }
            }
        }
        stage('Replace App.js') {
            steps {
                script {
                    // Change directory to my-app/src
                    dir('my-app/src') {
                        // Download App.js from GitHub
                        sh 'curl -o App.js https://raw.githubusercontent.com/lavi324/gke_react_project/main/App.js'
                    }
                }
            }
        }
        stage('Build') {
            steps {
                script {
                    // Build the React app
                    sh 'cd .. && npm run build'
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
    }
    post {
        success {
            echo 'Docker image pushed successfully.'
        }
    }
}

