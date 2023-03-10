pipeline {
	agent any

	stages {
		stage('checkout dev') {
			steps {
				sh 'git -fetch --tags'
			}
		}
	}
}
