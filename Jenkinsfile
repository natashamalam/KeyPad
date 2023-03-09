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
		stage('clone into repo dir') {
			steps {
				sh 'git clone https://github.com/natashamalam/KeyPad.git'
			}
		}
		stage('checkout dev') {
			steps {
				sh 'git checkout dev'
			}
		}
	}
}
