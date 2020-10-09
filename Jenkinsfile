pipeline {
    agent any
    parameters{
        string(name: 'GitUrl', defaultValue: 'https://github.com/thermofisher/tfsds-Databricks-Notebook-Deploy-POC.git', description: 'Give the url to the GitHub')
        string(name: 'BranchName', defaultValue: 'release-test1', description: 'Mention the Specified Branch Name')
        string(name: 'GitToken', defaultValue: 'd66c6997a09a1230ec344713dc1db8292105306e', description: 'Input your Github developers Token')
        choice(choices: ['greeting' , 'silence' , 'abort'], description: '', name: 'REQUESTED_ACTION')
        //extendedChoice defaultValue: '', description: '', descriptionPropertyValue: '', multiSelectDelimiter: ',', name: 'Mastercommitids', propertyFile: '/var/lib/jenkins/commits/Commit_ids.log', propertyKey: 'master-Branch_commit-ids', quoteValue: false, saveJSONParameterToFile: false, type: 'PT_CHECKBOX', visibleItemCount: 10
    }
    stages {
        stage ("testing") {
           // when {
                // Only say hello if a "greeting" is requested
             //   expression { params.REQUESTED_ACTION == 'greeting' || 'silence' }
            //}
            steps {
                script{
                    if ( params.REQUESTED_ACTION == 'greeting'){
                        echo "hello"
                    }else if (params.REQUESTED_ACTION == 'abort') {
                        echo "hi"
                    }else if (params.REQUESTED_ACTION == 'silence') {
                        echo "good"
                    }else {
                        sh "exit 1"
                    }// sh "exit 1"
                    //currentBuild.result = 'FAILURE'
                }
            }
        }
    }
}
    
