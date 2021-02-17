pipeline {
	environment {
		registry = "ravi1312/basic_docker:sample"
		registryCredential = 'ravi@1312'
	}
	agent any
	stages {
		stage('Building image') {
			steps{
				script {
					docker.build registry + ":$BUILD_NUMBER"
					//docker build --tag ravi1312/basic_docker:sample
				}
			}
		}
	}
}
