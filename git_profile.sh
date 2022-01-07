#!/bin/bash
keyFolder=~/.ssh
select gitKey in $(find ~/.ssh/ -iname "id_rsa-*" -exec basename {} \;) ; do
        export GIT_SSH_COMMAND="ssh -i ${keyFolder}/${gitKey}"
	echo -e "\e[33mGIT-KEY:\e[37m ${gitKey} \U0002714"
	return
done
