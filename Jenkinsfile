pipeline {
	environment {
		registry = "ravi1312/startup"
		registryCredential = 'ravi@1312'
		dockerImage = ''
	}
	agent any
	stages {
		stage('Build') {
			//agent {
			//	docker {
			//		image 'ravi1312/startup:latest'
			//	}
			//}
			steps{
				echo "hi"
			}
		}
		stage('Building image') {
			steps{
				script {
					//docker.build registry + ":$BUILD_NUMBER"
					docker.withRegistry('', 'ravi1312/startup') {
						dockerImage.push("$BUILD_NUMBER")
					}
					echo "hello"
					sh """
					aws --version
					git --version
					"""
					//docker build --tag ravi1312/basic_docker:sample
				}
			}
		}
	}
}
