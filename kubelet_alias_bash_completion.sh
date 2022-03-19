#!/bin/bash
yum install bash-completion -y
source /usr/share/bash-completion/bash_completion
echo 'source <(kubectl completion bash)' >> ~/.bashrc
kubectl completion bash >/etc/bash_completion.d/kubectl
echo 'complete -F __start_kubectl k' >>~/.bashrc
echo 'alias k=kubectl' >> ~/.bashrc
su - root
