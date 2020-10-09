pipeline {
    agent any
    parameters{
        string(name: 'GitUrl', defaultValue: 'https://github.com/thermofisher/tfsds-Databricks-Notebook-Deploy-POC.git', description: 'Give the url to the GitHub')
        string(name: 'BranchName', defaultValue: 'release-test1', description: 'Mention the Specified Branch Name')
        string(name: 'GitToken', defaultValue: 'd66c6997a09a1230ec344713dc1db8292105306e', description: 'Input your Github developers Token')
        extendedChoice defaultValue: '', description: '', descriptionPropertyValue: '', multiSelectDelimiter: ',', name: 'Mastercommitids', propertyFile: '/var/lib/jenkins/commits/Commit_ids.log', propertyKey: 'master-Branch_commit-ids', quoteValue: false, saveJSONParameterToFile: false, type: 'PT_CHECKBOX', visibleItemCount: 10
    }
stages {
    stage ("Checkout Git Branch") {
        steps {
            echo "hello"
    }
  }
    post { 
        always { 
            cleanWs()
        }
    }    
}
