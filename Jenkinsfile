pipeline {
	environment {
		registry = "ravi1312/startup"
		registryCredential = 'ravi@1312'
	}
	agent any
	stages {
		stage('Building image') {
			steps{
				script {
					//docker.build registry + ":$BUILD_NUMBER"
					docker.withRegistry('ravi1312/startup') {
						sh "docker pull ravi1312/startup"
					}
					//docker build --tag ravi1312/basic_docker:sample
				}
			}
		}
	}
}
