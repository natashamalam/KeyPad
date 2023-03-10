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
				xcodebuild -project KeyPad.xcodeproj
			}
		}
	}
}
