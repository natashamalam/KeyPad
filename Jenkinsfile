pipeline {
	agent any

	stages {
		stage('checkout dev') {
			steps {
				sh "xcodebuild -project KeyPad.xcodeproj -destination 'platform=iOS Simulator,name=iPhone 14'"
			}
		}
	}
}
