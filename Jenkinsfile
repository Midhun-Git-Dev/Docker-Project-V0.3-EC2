pipeline {
    agent any

    tools {
        maven 'maven3'
    }

    environment {
        SONARQUBE_ENV = 'sonarqube-server'
        IMAGE_NAME = 'midhun-tomcat-project-v0.2'
        CONTAINER_NAME = 'midhun-tomcat-container'
    }

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build WAR') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv("${SONARQUBE_ENV}") {
                    bat '''
                    mvn -pl webapp -am verify ^
                      org.sonarsource.scanner.maven:sonar-maven-plugin:3.10.0.2594:sonar ^
                      -Dsonar.projectKey=docker-tomcat-project ^
                      -Dsonar.projectName=Docker-Tomcat-CI-CD
                    '''
                }
            }
        }

        stage('Prepare WAR for Docker') {
            steps {
                bat '''
                if exist docker-tomcat-app\\webapp rmdir /s /q docker-tomcat-app\\webapp
                mkdir docker-tomcat-app\\webapp\\target
                copy webapp\\target\\*.war docker-tomcat-app\\webapp\\target\\
                '''
            }
        }

        stage('Build Docker Image (Tomcat + WAR)') {
            steps {
                dir('docker-tomcat-app') {
                    bat "docker build -t %IMAGE_NAME% ."
                }
            }
        }

        stage('Run Tomcat Docker Container') {
            steps {
                bat '''
                docker stop %CONTAINER_NAME% || exit 0
                docker rm %CONTAINER_NAME% || exit 0
                docker run -d -p 8085:8080 --name %CONTAINER_NAME% %IMAGE_NAME%
                '''
            }
        }
    }

    post {
        success {
            slackSend(
                channel: '#jenkins-builds',
                color: 'good',
                message: "✅ SUCCESS: ${env.JOB_NAME} #${env.BUILD_NUMBER}\nTomcat Docker Deploy: SUCCESS\nSonarQube: PASSED\nURL: ${env.BUILD_URL}"
            )
        }

        failure {
            slackSend(
                channel: '#jenkins-builds',
                color: 'danger',
                message: "❌ FAILED: ${env.JOB_NAME} #${env.BUILD_NUMBER}\nCheck logs: ${env.BUILD_URL}"
            )
        }
    }
}
