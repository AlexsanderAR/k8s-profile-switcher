#!/bin/bash
#select awsProfile in $(grep -F \[ ~/.aws/config | sed 's/^.* //g;s/.$//g') ; do
select awsProfile in $(grep -F \[ ~/.aws/credentials | sed 's/\[//g;s/\]//g') ; do
	saml2aws login -a ${awsProfile}
	export AWS_PROFILE=${awsProfile}
	echo -e "\e[33mAWS_PROFILE:\e[37m ${awsProfile} \U0002714"
	return
done
