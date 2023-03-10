pipeline {
	agent any

	stages {
		stage('build dev') {
			steps {
				sh 'bash TestShell.sh'
			}
		}
	}
	post {
		always {
			echo "After Execution"
		}
	}
}
