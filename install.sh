#!/bin/sh

# check exist
if [ ! -f .web3sh/.web3env ]; then
    echo -e "Error: The '.web3env' file is missing. \nTo set up the necessary environment variables, please first create this file by running 'cp /.web3sh/.web3env.example /.web3sh/.web3env', and then ensure to correctly populate it with your environment settings."
    exit 1
fi

cp -R .web3sh $HOME/

# Store the correct profile file (i.e. .profile for bash or .zshenv for ZSH).
case $SHELL in
*/zsh)
    PROFILE=${ZDOTDIR-"$HOME"}/.zshrc
    PREF_SHELL=zsh
    ;;
*/bash)
    PROFILE=$HOME/.bashrc
    PREF_SHELL=bash
    ;;
*/fish)
    PROFILE=$HOME/.config/fish/config.fish
    PREF_SHELL=fish
    ;;
*/ash)
    PROFILE=$HOME/.profile
    PREF_SHELL=ash
    ;;
*)
    echo "foundryup: could not detect shell, manually add "source ~/.web3sh/.web3sh_main" to your profile file."
    exit 1
esac

# append the source command to the PROFILE
profile_grep_result=$(cat $PROFILE | grep .web3sh)
if [ -n "$profile_grep_result" ]; then
    echo "source web3sh command already added to the profile."
else
    echo >> $PROFILE && echo "source ~/.web3sh/.web3sh_main" >> $PROFILE
fi

echo """
Run 'source ${PROFILE}' or start a new terminal session to use web3sh.
"""
