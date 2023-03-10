pipeline {
	agent any

	stages {
		stage('stage one') {
			steps {
				sh 'git clone'
			}
		}
		stage('checkout dev') {
			steps {
				sh 'git checkout dev'
			}
		}
		stage('xcode clean') {
			steps {
				sh 'xcodebuild clean'
			}
		}
	}
}
