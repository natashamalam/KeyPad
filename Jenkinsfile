pipeline {
	agent any

	stages {
		stage('checkout dev') {
			steps {
				sh 'git checkout dev'
			}
		}
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
