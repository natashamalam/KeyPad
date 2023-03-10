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
				sh "xcodebuild -project KeyPad.xcodeproj -scheme KeyPad -destination 'platform=iOS Simulator,name=iPhone 14'"
			}
		}
		stage('test dev') {
			steps {
				sh "xcodebuild test-without-building -project KeyPad.xcodeproj -scheme KeyPadTests -destination 'platform=iOS Simulator,name=iPhone 14'"
			}
		}
	}
}
