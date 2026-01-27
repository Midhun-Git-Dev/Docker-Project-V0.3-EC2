pipeline {
    agent any

    tools {
        maven 'maven3'
    }

    environment {
        IMAGE_NAME = 'midhun-tomcat-project'
        CONTAINER_NAME = 'midhun-tomcat-container'
    }

    options {
        disableConcurrentBuilds()
        timeout(time: 15, unit: 'MINUTES')
    }

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build WAR (Low Memory Mode)') {
            steps {
                sh '''
                echo "Building WAR with low memory usage..."
                mvn clean package -DskipTests -T 1C
                '''
            }
        }

        stage('Prepare WAR for Docker') {
            steps {
                sh '''
                echo "Preparing WAR for Docker build..."
                rm -rf docker-tomcat-app/webapp || true
                mkdir -p docker-tomcat-app/webapp/target
                cp webapp/target/*.war docker-tomcat-app/webapp/target/
                ls -lh docker-tomcat-app/webapp/target/
                '''
            }
        }

        stage('Build Docker Image (Low Load)') {
            steps {
                dir('docker-tomcat-app') {
                    sh '''
                    echo "Building Docker image with low resource usage..."
                    DOCKER_BUILDKIT=1 docker build -t $IMAGE_NAME .
                    '''
                }
            }
        }

        stage('Run Docker Container (Memory Limited)') {
            steps {
                sh '''
                echo "Stopping old container..."
                docker stop $CONTAINER_NAME || true
                docker rm $CONTAINER_NAME || true

                echo "Running container with memory limit..."
                docker run -d -m 300m -p 8085:8080 --name $CONTAINER_NAME $IMAGE_NAME

                docker ps
                '''
            }
        }
    }

    post {
        always {
            echo "Cleaning workspace to save disk space..."
            cleanWs()
        }
    }
}
