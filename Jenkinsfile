pipeline {
	agent any

	stages {
		stage('build dev') {
			steps {
				sh './TestShell.sh'
			}
		}
	}
	post {
		always {
			echo "After Execution"
		}
	}
}
