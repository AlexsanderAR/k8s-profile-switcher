#!/bin/bash
k8sConfigFolder=~/.kube
select k8sFile in $(ls ${k8sConfigFolder}/*.yml | xargs -n 1 basename ) ; do
	export KUBECONFIG=${k8sConfigFolder}/${k8sFile}
	echo -e "\e[33mKUBECONFIG:\e[37m ${KUBECONFIG} \U0002714"
	return
done
