pipeline {
    agent any

    tools {
        maven 'maven3'
    }

    environment {
        IMAGE_NAME = 'midhun-tomcat-project'
        CONTAINER_NAME = 'midhun-tomcat-container'
        SONAR_ENV = 'Docker-EC2-CI-CD'
    }

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('SonarQube Scan (Optional)') {
            steps {
                script {
                    try {
                        withSonarQubeEnv("${SONAR_ENV}") {
                            sh '''
                            mvn sonar:sonar \
                            -Dsonar.projectKey=midhun-docker-project \
                            -Dsonar.projectName=Midhun-DevOps-App
                            '''
                        }
                    } catch (e) {
                        echo "SonarQube skipped due to low server resources"
                    }
                }
            }
        }

        stage('Prepare WAR for Docker') {
            steps {
                sh '''
                rm -rf docker-tomcat-app/webapp || true
                mkdir -p docker-tomcat-app/webapp/target
                cp webapp/target/*.war docker-tomcat-app/webapp/target/
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                dir('docker-tomcat-app') {
                    sh "docker build -t $IMAGE_NAME ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker stop $CONTAINER_NAME || true
                docker rm $CONTAINER_NAME || true
                docker run -d -p 8085:8080 --name $CONTAINER_NAME $IMAGE_NAME
                '''
            }
        }
    }
}
