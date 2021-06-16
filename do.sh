#! /bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Emacs
git clone git@github.com:mankalas/emacs.d.git ~/.emacs.d
# Mail
rm -rf ~/.mail && cp -r mail ~/.mail
echo "killall mbsync &>/dev/null; /usr/local/bin/mbsync -a -V 2>&1 > ~/.mail/mbsync_log" | crontab -e
# Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp -r oh-my-zsh/ ~/.oh-my-zsh/custom/
# AWS
# ???
#
