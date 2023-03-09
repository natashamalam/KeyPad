pipeline {
	agent any

	stages {
		stage('create repo dir') {
			steps {
				sh 'mkdir TempKeyPad'
			}
		}
		stage('navigate to repo dir') {
			steps {
				sh 'cd TempKeyPad'
			}
		}
		stage('checkout dev') {
			steps {
				sh 'git checkout dev'
			}
		}
	}
}
