pipeline{
	agent any
	parameters {
		string(defaultValue: "TEST", description: 'Give the total path of the folder', name: 'userFlag')
	}
	stages{
		stage("build"){
			steps{
				sh "git init"
				sh "git config core.sparsecheckout true"
				sh "git sparse-checkout init '${params.userFlag}'"
				sh "git sparse-checkout set '${params.userFlag}'"
				sh "git sparse-checkout list '${params.userFlag}'"
				sh "git sparse-checkout list '${params.userFlag}'"
				sh "ls"
				sh "tree file"
				sh "git checkout testing"
				//sh 'echo "file1/file2/file3/ >> .git/info/sparse-checkout"'
			       // sh "cat file/file1"
				//sh "git read-tree -mu HEAD"
				//echo "hello world"
				sh "pwd"
				sh "ls -lrt"
				sh "pwd"
				sh "ls"
				sh "pwd"
				sh "cat $WORKSPACE/file/file1/file2/test1.py"
			}
		}
	}
	post{
		always{
			cleanWs()
		}
	}
}
