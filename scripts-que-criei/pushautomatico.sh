=#!/bin/bash
set -e  # para o script se algum comando falhar

read -p "Digite a mensagem de commit: " messagecommit

if [ -z "$messagecommit" ]; then
    echo "Mensagem de commit vazia, abortando."
    exit 1
fi

git add .
git commit -m "$messagecommit"
git push origin "$(git branch --show-current)"

echo "Push feito com sucesso!"
