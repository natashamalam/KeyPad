pipeline {
	agent any

	stages {
		stage('clone repo') {
			steps {
				sh 'git clone'
			}
		}
		stage('checkout dev') {
			steps {
				sh 'git checkout dev'
			}
		}
	}
}
