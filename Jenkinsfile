pipeline{
	agent any
	options{
		checkoutToSubdirectory('demo/demo1/demo2/demo3')
	}
	stages{
		stage("build"){
			steps{
				echo "hello world"
				sh "ls -lrt"
				sh "ls"
				sh "pwd"
				sh "ls $WORKSPACE/demo/"
			}
		}
	}
}
