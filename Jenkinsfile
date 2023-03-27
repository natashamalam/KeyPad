pipeline {
	agent any

	stages {
		stage('build') {
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
			steps {
				sh 'xcodebuild -project KeyPad.xcodeproj \
					-scheme KeyPad -archivePath KeyPad.xcarchive \
					-destination generic/platform=iOS archive'
			}
		}
		stage('export') {
			steps {
				sh 'xcodebuild -exportArchive -archivePath KeyPad.xcarchive -exportPath KeyPad -exportOptionsPlist OptionsPlist.plist'
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
