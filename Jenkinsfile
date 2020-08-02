pipeline {
    agent any
    parameters{
        string(name: 'GitUrl', defaultValue: 'https://github.com/ravi1312/Cherry-pick.git', description: 'Give the url to the GitHub')
        string(name: 'BranchName', defaultValue: 'master', description: 'Mention the Specified Branch Name')
        string(name: 'GitToken', defaultValue: 'd66c6997a09a1230ec344713dc1db8292105306e', description: 'Input your Github developers Token')
        extendedChoice defaultValue: '', description: '', descriptionPropertyValue: '', multiSelectDelimiter: ',', name: 'Mastercommitids', propertyFile: '/var/lib/jenkins/commits/Commit_ids.log', propertyKey: 'master-Branch_commit-ids', quoteValue: false, saveJSONParameterToFile: false, type: 'PT_CHECKBOX', visibleItemCount: 10
    }
stages {
    stage ("Checkout Git Branch") {
        steps {
            git branch: "${params.BranchName}",
            credentialsId:  'b09e12b5-99dc-4376-b2c5-a8920ac44060',
            url: "${params.GitUrl}"
            sh "ls -lat"
            sh "git status"
            sh "git branch -a" 
            sh """
            sh gitpush.sh "${params.Mastercommitids}" "${params.GitToken}"
            """
        }
    }
  }
    post { 
        always { 
            cleanWs()
        }
    }    
}
