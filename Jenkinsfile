pipeline {
	agent any

	stages {
		stage('xcode clean') {
			steps {
				sh 'clean'
			}
		}
		stage('clone') {
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
