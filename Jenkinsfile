pipeline {

  environment {
    image = "bingfandocker/grp2-image"
    registryCredential = "docker-hub"
    dockerImage = ''
  }


  agent any

  stages {

	    stage('Cloning Git') {
	      steps {
	        git 'https://github.com/BingfanYin/training1.git'
	      }
	    }
	    stage('Build Image') {
	      steps{
	        script {
	          // sh "docker build -t my-web ."
                  dockerImage = docker.build image + ":$BUILD_NUMBER"
	        }
	      }
	    }
	    stage('Deploy Test Server') {
	      steps{
	        script {
	          sh "./deploy-test.sh ${env.BUILD_ID} ${env.image}:${env.BUILD_ID}"
	        }
	      }
	    }
	    stage('Testing image') {
	      steps{
	        script {
	          sh "echo 3333"
	        }
	      }
	    }
	stage('Pushing Image') {
			steps{    
				script {
					docker.withRegistry( '', registryCredential ) {
					dockerImage.push()
					}
				}
			}
		} 

	}
}

