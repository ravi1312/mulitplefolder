pipeline{
	agent any
	options{
		checkoutToSubdirectory('nothing')
	}
	stages{
		stage("build"){
			steps{
				sh "git config core.sparsecheckout true"
				sh "git sparse-checkout list demo/demo1/demo2/demo3"
				echo "demo/demo1/demo2/demo3/ >> .git/info/sparse-checkout"
				echo "hello world"
				sh "ls -lrt"
				sh "ls"
				sh "pwd"
				sh "cat $WORKSPACE/nothing/demo/demo1/demo2/demo3/file.py"
			}
		}
	}
}
