pipeline{
	agent any
	parameters {
		string(defaultValue: "TEST", description: 'Give the total path of the folder', name: 'folderpath')
	}
	stages{
		stage("build"){
			steps{
				//sh "git init"
				//sh "git config core.sparsecheckout true"
				//sh "git sparse-checkout init '${params.folderpath}'"
				//sh "git sparse-checkout set '${params.folderpath}'"
				//sh "git sparse-checkout list '${params.folderpath}'"
				//sh "git sparse-checkout list '${params.folderpath}'"
				//sh "git status"
				//sh "ls"
				sh "tree '${params.folderpath}'"
				
				sh """
				echo "$folderpath"
				git checkout -b subset
				sh script.sh "/home/ubuntu/tested" "${folderpath}"
				git commit -m 'removed some stuff'
				git checkout master # (go back to master)
				git merge --strategy ours subset # (record a merge from the subset branch, but make no actual changes to master)
				git checkout subset
				# (edit file3.txt)
				echo "nothing" >>'${params.folderpath}'/test.py
				git add '${params.folderpath}'
				git commit -a 'edited file3'
				git checkout master # (back to master again)
				git merge subset # (will merge the change to file3.txt but still not the deletions)
				git push origin subset
				"""
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
