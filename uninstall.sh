#!/bin/sh

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
    echo "foundryup: could not detect shell, manually add "source $HOME/.web3sh/.web3sh_main" to your profile file."
    exit 1
esac

cp $PROFILE $PROFILE.backup
sed -i '' "/source ~\/\.web3sh\/\.web3sh_main/d" $PROFILE

cp -r $HOME/.web3sh $HOME/.web3sh_backup
rm -rf $HOME/.web3sh