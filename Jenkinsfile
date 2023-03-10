pipeline {
	agent any

	stages {
		stage('build dev') {
			steps {
				sh "xcodebuild -project KeyPad.xcodeproj -scheme KeyPad -destination 'platform=iOS Simulator,name=iPhone 14'"
			}
		}
		stage('test only if build is done') {
			when {
				expression {
					env.GIT_BRANCH == "test/*"
				}
			}
			steps {
				sh "xcodebuild test -project KeyPad.xcodeproj -scheme KeyPadTests -destination 'platform=iOS Simulator,name=iPhone 14'"
			}
		}
		stage('archive') {
			when {
				expression {
					env.GIT_BRANCH == "release/*"
				}
			}
			steps {
				sh 'xcodebuild -project KeyPad.xcodeproj \
					-scheme KeyPad -archivePath KeyPad.xcarchive \
					-destination generic/platform=iOS archive'
			}
		}
	}
	post {
		always {
			echo 'cleaning the workspace'
			sh 'xcodebuild clean'
		}
	}
}
