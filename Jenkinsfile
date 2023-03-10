pipeline {
	agent any

	stages {
		stage('stage one') {
			steps {
				sh 'git fetch --tags'
			}
		}
		stage('checkout dev') {
			steps {
				sh 'git checkout dev'
			}
		}
	}
}
