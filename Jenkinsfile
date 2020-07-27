pipeline {

  agent any

  stages {

	    stage('Cloning Git') {
	      steps {
	        git 'https://github.com/schogini/HOOK-TEST-P02-GITHUB.git'
	      }
	    }
	    stage('Building image') {
	      steps{
	        script {
	          sh "ls -l"
	          sh "grp2 echo 2222"
	        }
	      }
	    }
	    stage('Testing image') {
	      steps{
	        script {
	          sh "grp2 echo 3333"
	        }
	      }
	    }
		stage('Pushing Image') {
	      steps{
	        script {
	          sh "grp2 echo 4444"
	        }
	      }
		}     
	}
}
