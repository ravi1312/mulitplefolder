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
				sh """
				git checkout -b subset
				
				git add .
				ls -lrt 
				git ls tree subset 
				git commit -m "message"
				git pull https://4b924095e0e3627666b843f2e3c87b93649cec20@github.com/ravi1312/mulitplefolder.git
				git push https://4b924095e0e3627666b843f2e3c87b93649cec20@github.com/ravi1312/mulitplefolder.git
				
				"""
				sh """
				git checkout -b subset
				git add .
				git checkout master # (go back to master)
				git merge --strategy ours subset # (record a merge from the subset branch, but make no actual changes to master)
				git checkout subset
				# (edit file3.txt)
				git add .
				git commit -m 'edited file3'
				git checkout master # (back to master again)
				git merge subset # (will merge the change to file3.txt but still not the deletions)
				"""
				sh "git checkout -b testing"
				sh "git add ."
				sh 'git commit -m "message""'
				sh "git merge subset"
				sh "git push -u origin testing"
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
