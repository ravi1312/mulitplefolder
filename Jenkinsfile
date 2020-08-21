pipeline{
	agent any
	parameters {
		string(defaultValue: "", description: 'Give the total path of the folder', name: 'folderpath')
		string(defaultValue: "", description: 'Give the name of the branch', name: 'Branch')
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
				git credentialsId: 'b09e12b5-99dc-4376-b2c5-a8920ac44060', url: 'https://github.com/ravi1312/mulitplefolder.git'
				sh """
				echo "$folderpath"
				
				git checkout -b '${params.Branch}'
				sh /var/lib/jenkins/script.sh "$WORKSPACE" "${folderpath}"
				
				git add .
				git commit -m "commiting new branch"
				git push https://ravi1312:ravi@131231@github.com/ravi1312/mulitplefolder.git
				
				git push --set-upstream origin '${params.Branch}' 
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
	post {
		always {
			cleanWs()
		}
	}
}
