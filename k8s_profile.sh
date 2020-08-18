#!/bin/bash
k8sConfigFolder=~/.kube
k8sConfig=1
select k8sFile in $(ls ${k8sConfigFolder}|grep yml ) ; do
	export KUBECONFIG=${k8sFile}
	echo -e "\e[33mKUBECONFIG:\e[37m ${KUBECONFIG} \U0002714"
	return
done
