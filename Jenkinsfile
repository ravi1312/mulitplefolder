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
				sh "git status"
				sh "ls"
				sh "tree '${params.userFlag}'"
				sh "git checkout -b testing"
				sh "git add ."
				sh "git status"
				sh "git branch -a"
				sh 'git commit -m "message"'
				//sh "git push https://4b924095e0e3627666b843f2e3c87b93649cec20@github.com/ravi1312/mulitplefolder.git"
			//	sh "git push origin https://4b924095e0e3627666b843f2e3c87b93649cec20@github.com/ravi1312/mulitplefolder.git"
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
