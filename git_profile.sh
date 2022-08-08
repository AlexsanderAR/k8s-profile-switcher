#!/bin/bash
select userAccount in personal procore consensus ; do
  [ ${userAccount} == "personal" ]  && userEmail=alexsander.rodrigues@gmail.com
  [ ${userAccount} == "procore" ]   && userEmail=alexsander.rodrigues-contractor@procore.com
  [ ${userAccount} == "consensus" ] && userEmail=alexsander.rodrigues@consensus.com
  git config --global user.email "${userEmail}"
  git config --global user.name "Alexsander Rodrigues"
  export GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa-${userAccount}"
  echo userAccount....:${userAccount}
  echo userEmail......:${userEmail}
  echo userKey........:~/.ssh/id_rsa-${userAccount}
  return
done
