node(){
  try{

    /* Récupération du dépôt git applicatif */
    stage('Git Checkout'){
        steps {
            git branch: 'main',
            url :'git@github.com:naqa92/microservice_test.git'
        }
    }
    stage("Compile") {
        steps {
        sh "./gradlew compileJava"
        }
    }
    stage("Test") {
        steps {
        sh "./gradlew test"
        }
    }
    stage("Package") {
        steps {
        sh "./gradlew build"
        }
    }
  } finally {
    cleanWs()
  }
}