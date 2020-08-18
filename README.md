# Info
- This is just a very simple kubernetes profile switching tool

# How to use it
- Just create an alias to the script file (I like to use it as one single key 'k')
```
alias k='. ~/k8s-profile-switch/k8s_profile.sh'
```

# Todos
- I'm trying to find a good way to show which is the current profile selected (maybe a $PS1 trick). For now you should be good running a simple: 
```
echo $KUBECONFIG
```
