pipeline {
	agent any

	stages {
		stage('build dev') {
			steps {
				sh "xcodebuild -project KeyPad.xcodeproj -scheme KeyPad -destination 'platform=iOS Simulator,name=iPhone 14'"
			}
		}
		stage('test only if build is done') {
			steps {
				sh "xcodebuild test -project KeyPad.xcodeproj -scheme KeyPadTests -destination 'platform=iOS Simulator,name=iPhone 14'"
			}
		}
		stage('archive') {
			steps {
				sh "xcodebuild -project KeyPad.xcodeproj -scheme KeyPad -archivePath ./KeyPad.xcarchive -destination generic/platform=iOS archive'"
			}
		}
	}
	post {
		always {
			sh 'xcodebuild clean'
		}
	}
}
