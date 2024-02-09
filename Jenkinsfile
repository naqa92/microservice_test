node(){
  try{

    /* Récupération du dépôt git applicatif */
    stage('Git checkout'){
      git branch: 'main',
      credentialsId: 'jenkinsgitlabssh',
      url: "git@github.com:naqa92/microservice_test.git"
    }

    stage('Echo test') {
            echo 'Ceci est un test dans Jenkinsfile.'
        }

  } finally {
    cleanWs()
  }
}