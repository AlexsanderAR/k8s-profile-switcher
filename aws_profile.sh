#!/bin/bash
select awsProfile in $(fgrep \[ ~/.aws/config | sed 's/^.* //g;s/.$//g') ; do
	export AWS_PROFILE=${awsProfile}
	echo -e "\e[33mAWS_PROFILE:\e[37m ${awsProfile} \U0002714"
	return
done
