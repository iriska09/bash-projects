#!/bin/bash
# this our function 
function _gitPush {
    if [ $# = 0 ]; then 
        read -p "provide path to commit: " path
        read -p "provide commit message: " message
        git add $path
        git commit -m "$message"
        git push
    elif [ $# = 1 ]; then
         git add .
         git commit -m $1
         git push
    
    elif [ $# = 2 ]; then
        git add $1
        git commit -m $2
        git push
    
    fi
}
# here we are checking if we have git and also sending our errors to dev/nul
#2 if its != to 0 then it is correct 
#if it is not equal to 0  then do this command
which git 2> /dev/null && clear
if [ $? != 0 ]; then
    echo "Installing git...."
    yum install git -y 1> /dev/null
fi 
# here we are checking the status of the git 
# if it is equal to 0 that means the command is workd correct 
#if command is correct than do our function command 
git status 2> /dev/null && clear
if [ $? = 0 ]; then
    _gitPush
    # or else do echo and ask me about reposotory 
    # find my reposotory name with using repo_path 
    # repo_path is equal to that command 
else
    echo "repository not detected"
    read -p "enter repo name: " repo
    repo_path=$(find / -name $repo)
    #here we are changing our directory  to our $repo and 
    # using our function we are runing our command 
    cd $repo_path
    _gitPush
    # here we are finding the lines using word count command 
    # and if there is more than one line 
    # let me now wit echo found more than one 
    resultCount=$(find / -name $repo | wc -l)
    if [ $resultCount -gt 1 ]; then
        echo "found more then 1 repo with name: $repo:"
        # and here we are finding a name of our repositor4ies 
        #and asking from user is that your repo if it is not yes then echo skip
        for result in $(find / -name $repo 2> /dev/null); do 
            read -p "Is this your repo? -> $result <- [y/n]" x
            if [ $x != 'y' ]; then
                echo "skipping..."
                # or else if it is no then change your directory to $result 
                #and use function that we have our commands after breake
            else
                cd $result
                _gitPush
                break
            fi
        done
    else
    #or else change your directory to $repo_path and run our function 
        cd $repo_path
        _gitPush
    fi
fi
