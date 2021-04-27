az repos pr list --reviewer=sahar.rachamim@fundguard.com --status=active -r=fgrepo |
	jq '.[].sourceRefName' |
	cut -d '"' -f 2 |
	cut -d / -f 3-
