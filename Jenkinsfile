package com.passeidireto

@Library('CommonLib@main') _

def uuid = "${UUID.randomUUID().toString()}"
def jenkinsJobLabel = "${env.JOB_NAME}-${env.BUILD_NUMBER}"
def label = "jenkins-pipeline-${uuid}"

currentBuild.result = 'SUCCESS'

println "Label: ${label}"

pipeline {
    agent {
        docker { 
            image 'sonarsource/sonar-scanner-cli'
            label 'sonar-scanner-cli'
        }
        docker { 
            image 'ubuntu:20.04'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'ps -axf'
            }
        }
    }
}