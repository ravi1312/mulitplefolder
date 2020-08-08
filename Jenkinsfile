pipeline{
	agent any
	options{
		checkoutToSubdirectory('nothing')
	}
	stages{
		stage("build"){
			steps{
				sh "git init"
				sh "git config core.sparsecheckout true"
				sh "git sparse-checkout list file/file1/file2/file3/"
				sh 'echo "file/file1/file2/file3/ >> .git/info/sparse-checkout"'
				//echo "hello world"
				sh "ls -lrt"
				sh "ls"
				sh "pwd"
				sh "cat $WORKSPACE/file/file1/file2/file3/file3.py"
			}
		}
	}
	post{
		always{
			cleanWs()
		}
	}
}
