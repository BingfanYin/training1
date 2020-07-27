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
	          sh "echo grp2 2222"
	        }
	      }
	    }
	    stage('Testing image') {
	      steps{
	        script {
	          sh "echo grp2 3333"
	        }
	      }
	    }
		stage('Pushing Image') {
	      steps{
	        script {
	          sh "echo grp 4444"
	        }
	      }
		}     
	}
}
