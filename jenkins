pipeline {
    agent any
    tools {
        maven 'maven_3_9_2'
    }
    stages {
        stage('Build Maven') {
            steps {
               checkout scmGit(branches: [[name: '*/develop']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/chellappanarchitect/springjenkins']])
               bat 'mvn clean install'
            }
        }
        stage('Build docker image') {
            steps {
               bat 'docker build -t springjenkins-0.0.1-snapshot.jar .'
            }
        }
        stage('Push image to docker hub') {
            steps {
               bat 'docker login -u "chellappanarchitect" -p "10Jul2024#" docker.io'
               bat 'docker tag springjenkins-0.0.1-snapshot.jar:latest chellappanarchitect/springjenkins-0.0.1-snapshot.jar'
               bat 'docker push chellappanarchitect/springjenkins-0.0.1-snapshot.jar'
            }
        }
    }
}
