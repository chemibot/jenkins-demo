pipeline {
  agent any

  environment {
    TF_IN_AUTOMATION = "true"
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/chemibot/jenkins-demo.git'
      }
    }

    stage('Terraform Init') {
      steps {
        dir('terraform') {
          sh 'terraform init'
        }
      }
    }

    stage('Terraform Apply') {
      steps {
        dir('terraform') {
          sh 'terraform apply -auto-approve'
        }
      }
    }
  }
}
