if [[ -z $1 ]]; then
    echo Specify which number to ssh into
    exit 1
fi

ssh "bandit$1@bandit.labs.overthewire.org" -p 2220