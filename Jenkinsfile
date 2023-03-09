pipeline {
	agent any

	stages {
		stage('clone repo') {
			steps {
				sh 'mkdir TempKeyPad'
			}
			steps {
				sh 'cd TempKeyPad'
			}
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
