pipeline {
    agent any
    parameters{
        string(name: '', description: 'Give the url to the GitHub')
        string(name: 'BranchName', defaultValue: '', description: 'Mention the Specified Branch Name')
        string(name: 'GitToken', defaultValue: '', description: 'Input your Github developers Token')
       // extendedChoice defaultValue: '', description: '', descriptionPropertyValue: '', multiSelectDelimiter: ',', name: 'Mastercommitids', propertyFile: '/var/lib/jenkins/commits/Commit_ids.log', propertyKey: 'master-Branch_commit-ids', quoteValue: false, saveJSONParameterToFile: false, type: 'PT_CHECKBOX', visibleItemCount: 10
        file description: '', name: ''
    }
stages {
    stage ("Checkout Git Branch") {
        steps {
            script{
                //echo "${params.}"
                echo "input for .json file"
                def inputJsonPath = input message: 'Upload file', parameters: [file(name: 'test.csv', description: 'Upload only CSV file')]
                def JsonContent = readFile "${inputJsonPath}"
                echo ("CSV FILE PATH IS : ${inputJsonPath}")
                echo("CSV CONTENT IS: ${JsonContent}")
                echo"  *******  "
                echo "${JsonContent}"
                //echo("${JsonContent}")
            }
           // git branch: "${params.BranchName}",
       //     credentialsId:  '1da8544d-51d7-479a-8f64-7832199228d7',
         //   url: "${params.GitUrl}"
 //           sh "ls -lat"
   //         sh "git status"
     //       sh "git branch -a" 
       //     sh """
         //   sh gitpush.sh "${params.Mastercommitids}" "${params.GitToken}"
          //  """
        }
    }
  }
    post { 
        always { 
            cleanWs()
        }
    }    
}
