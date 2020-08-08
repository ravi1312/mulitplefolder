pipeline{
	agent any
	stages{
		stage("build"){
			steps{
				sh "git init"
				sh "git config core.sparsecheckout true"
				sh "git sparse-checkout init file/file1/file2/"
				sh "git sparse-checkout set file/file1/file2/"
				sh "git sparse-checkout list file/file1/file2/"
				sh "cd file/file1"
				sh "ls file/file1"
				sh "tree file"
				sh "ls"
				//sh 'echo "file1/file2/file3/ >> .git/info/sparse-checkout"'
			       // sh "cat file/file1"
				//sh "git read-tree -mu HEAD"
				//echo "hello world"
				sh "pwd"
				sh "ls -lrt"
				sh "pwd"
				sh "ls"
				sh "pwd"
				sh "cat $WORKSPACE/file/file1/test.py"
			}
		}
	}
	post{
		always{
			cleanWs()
		}
	}
}
