pipeline {
    agent any
	parameters {
		separator(name: "building", sectionHeader: "Build Environment")
		choice(name: "java_vendor", choices: "Corretto", defaultValue: "building environment choice selection")
		string(name: 'git_url', defaultValue: '', description: 'Mention the Specified Branch Name')
		choice(name: "java_version", choices: "11")
		string(name: 'BranchName', defaultValue: '', description: 'Mention the Specified Branch Name')
		separator(name: "testing")
		choice(name: "browser", choices: "chrome")
		//separator(name: "end")
	}
    //parameters{
      //  string(name: '', description: 'Give the url to the GitHub')
       // string(name: 'BranchName', defaultValue: '', description: 'Mention the Specified Branch Name')
        //separator(name: "building", sectionHeader: "Build Environment")
        //string(name: 'GitToken', defaultValue: '', description: 'Input your Github developers Token')
       // extendedChoice defaultValue: '', description: '', descriptionPropertyValue: '', multiSelectDelimiter: ',', name: 'Mastercommitids', propertyFile: '/var/lib/jenkins/commits/Commit_ids.log', propertyKey: 'master-Branch_commit-ids', quoteValue: false, saveJSONParameterToFile: false, type: 'PT_CHECKBOX', visibleItemCount: 10
        //file description: '', name: ''
    //}
	    stages {
		    stage ("Checkout Git Branch") {
			    steps {
				    script{
					    echo "${params.git_url}"
					    //echo "${params.}"
					    echo "${params.java_vendor}"
					    echo "input for .json file"
					    def inputJsonPath = input message: 'Upload file', parameters: [file(name: 'test.csv', description: 'Upload only CSV file')]
					    def JsonContent = readFile "${inputJsonPath}"
					    echo ("CSV FILE PATH IS : ${inputJsonPath}")
					    echo("CSV CONTENT IS: ${JsonContent}")
					    echo"  *******  "
					    echo "${JsonContent}"
				    }
			    }
		    }
	    }
	    post { 
		    always { 
			    cleanWs()
		    }
	    }
	    }
