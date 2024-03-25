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
        TAG = '0.5'
    }

    stages {
        stage('Increment Versions') {
            steps {
                // Add chmod +x command
                sh 'chmod +x increment_versions.sh'
                // Execute the script
                sh './increment_versions.sh'
            }
        }
        stage('Push to GitHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'github', usernameVariable: 'GITHUB_USER', passwordVariable: 'GITHUB_PASS')]) {
                    sh '''
                    git config --global user.email "lavialduby@gmail.com"
                    git config --global user.name "lavi324"
                    git add .
                    git commit -m "pipeline commit"
                    git push https://${GITHUB_USER}:${GITHUB_PASS}@github.com/lavi324/gke_react_project
                    '''
                }
            }
        }
        stage('Build') {
            steps {
                dir('frontend') {
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
                withCredentials([usernamePassword(credentialsId: 'dockerhublavi', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh '''
                    echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin  
                    helm push my-react-chart-1.0.4.tgz oci://registry-1.docker.io/lavi324
                    '''
                }   
            }
        }
    }
    post {
        success {
            echo 'Docker image and helm chart pushed successfully.'
        }
    }
}
