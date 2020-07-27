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
	          sh "docker run -d -p 443:00 nginx:alpine"
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
