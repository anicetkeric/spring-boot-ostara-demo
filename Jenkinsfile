pipeline {
    agent any	
  environment {
    MAVEN_ARGS=" -e clean install"
  }
	
  stages {
    stage('Build') {
       steps {
	withMaven(maven: 'MAVEN_ENV') {
            sh "mvn ${MAVEN_ARGS}"
        }
       }
    }

  stage('docker-compose start') {
      steps {
       sh 'docker compose up -d'
      }
    }
  }
}
