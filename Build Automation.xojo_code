#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList iOS
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyFileLibReveal
					AppliesTo = 1
					Architecture = 2
					Target = 0
					Destination = 0
					Subdirectory = Frameworks
					FolderItem = Li4vLi4vLi4vLi4vTGlicmFyeS9BcHBsaWNhdGlvbiUyMFN1cHBvcnQvUmV2ZWFsL1JldmVhbFNlcnZlci9SZXZlYWxTZXJ2ZXIueGNmcmFtZXdvcmsvaW9zLWFybTY0X3g4Nl82NC1zaW11bGF0b3IvUmV2ZWFsU2VydmVyLmZyYW1ld29yay8=
				End
				Begin CopyFilesBuildStep Fonts
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 1
					Subdirectory = Fonts
					FolderItem = Li4vLi4vUGFja3ItWG9qby1uZXcvUmVzb3VyY2VzL0ZvbnRzL1JhbGV3YXktRXh0cmFCb2xkLnR0Zg==
					FolderItem = Li4vLi4vUGFja3ItWG9qby1uZXcvUmVzb3VyY2VzL0ZvbnRzL1JhbGV3YXktUmVndWxhci50dGY=
					FolderItem = Li4vLi4vUGFja3ItWG9qby1uZXcvUmVzb3VyY2VzL0ZvbnRzL1JhbGV3YXktU2VtaUJvbGQudHRm
					FolderItem = Li4vLi4vUGFja3ItWG9qby1uZXcvUmVzb3VyY2VzL0ZvbnRzL1NvdXJjZVNhbnNQcm8tUmVndWxhci50dGY=
					FolderItem = Li4vLi4vUGFja3ItWG9qby1uZXcvUmVzb3VyY2VzL0ZvbnRzL1NvdXJjZVNhbnNQcm8tU2VtaWJvbGQudHRm
				End
				Begin SignProjectStep Sign
				End
				Begin IDEScriptBuildStep SaveProject , AppliesTo = 0, Architecture = 0, Target = 0
					DoCommand("SaveFile")
				End
			End
#tag EndBuildAutomation
