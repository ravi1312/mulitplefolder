pipeline{
	agent any
	options{
		checkoutToSubdirectory('nothing')
	}
	stages{
		stage("build"){
			steps{
				sh "git sparse-checkout list demo/demo1/demo2/demo3"
				echo "hello world"
				sh "ls -lrt"
				sh "ls"
				sh "pwd"
				sh "cat $WORKSPACE/nothing/demo/demo1/demo2/demo3/file.py"
			}
		}
	}
}
