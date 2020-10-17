pipeline {
    agent any
    parameters{
        string(name: 'GitUrl', defaultValue: '', description: 'Give the url to the GitHub')
        string(name: 'BranchName', defaultValue: '', description: 'Mention the Specified Branch Name')
        string(name: 'GitToken', defaultValue: '', description: 'Input your Github developers Token')
        choice(choices: ['greeting' , 'silence' , 'abort' , 'and'], description: '', name: 'REQUESTED_ACTION')
        extendedChoice defaultValue: '', description: '', descriptionPropertyValue: '', multiSelectDelimiter: ',', name: 'Mastercommitids', propertyFile: '$WORKSPACE/file.txt', propertyKey: 'notebookcopy', quoteValue: false, saveJSONParameterToFile: false, type: 'PT_CHECKBOX', visibleItemCount: 10
    }
    stages {
        stage ("testing") {
            steps {
                script{
                    try {
                        if (params.Mastercommitids != 'abort' && 'silence' && 'greeting' && 'and') {
                            error('wrong input')
                        }
                    } catch (err) {
                       // echo err.getMessage()
                        //sh 'Handle the exception!'
                    }
                }
            }
        }
    }
}
    
