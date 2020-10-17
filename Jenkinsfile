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
                        //sh "exit 1"
                        }
                    } catch (Exception e) {
                        sh 'Handle the exception!'
                    }
                   // if ( params.Mastercommitids == 'greeting'){
                      //  echo "hello"
                    //}else if (params.Mastercommitids == 'abort') {
                      //  echo "hi"
                    //}else if (params.Mastercommitids == 'silence') {
                  //      echo "good"
                   // }else if (params.Mastercommitids == 'and') {
                       // echo "abcd"
                   // }else if (params.Mastercommitids != 'abort' && 'silence' && 'greeting' && 'and') {
                        //sh "exit 1"
                     //   error ("this is not expected")
                    //}//else {
                       // sh "exit 1"
                        //error ("this is not expected")
                    //}
                }
            }
        }
        try {
            stage('failFirst') {
                error('Fail')    
            }
        } catch (Exception ex) {
    }
    }
}
    
