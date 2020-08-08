pipeline{
	agent any
	stages{
		stage("build"){
			options{
				checkoutToSubdirectory('file/file1/file2/file3/')
			}
			steps{
				sh "git init"
				sh "git config core.sparsecheckout true"
				sh "git sparse-checkout list file/file1/file2/file3/"
				sh 'echo "file/file1/file2/file3/ >> .git/info/sparse-checkout"'
				//sh "git read-tree -mu HEAD"
				//echo "hello world"
				sh "pwd"
				sh "ls -lrt"
				sh "pwd"
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
