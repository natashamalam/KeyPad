pipeline {
	agent any

	stages {
		stage('clone repo') {
			steps {
				scm clone
			}
		}
		stage('checkout dev') {
			steps {
				scm checkout
			}
		}
	}
}
