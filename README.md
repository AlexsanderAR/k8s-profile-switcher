# Info
- This is just a very simple kubernetes profile switching tool for Bash. Although there is kubectx I think it's too complex to acomplish such a simple task like that.
- It'll make use of your kubernetes config (*.yml) files stored under **~/.kube** folder.

# How to use it
- Just create an alias to the script file (I like to use it as one single key 'k')
```
alias k='. ~/k8s-profile-switcher/k8s_profile.sh'
alias a='. ~/k8s-profile-switcher/aws_profile.sh'
```

# Todos
- I'm trying to find a good way to show which is the current profile selected (maybe a $PS1 trick). For now you should be good running a simple: 
```
echo $KUBECONFIG
```
