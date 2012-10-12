files=(bashrc inputrc profile tmux.conf vim vimrc xvimrc)

red="\033[1;31m"
green="\033[1;32m"
blue="\033[1;36m"

link() {
  for file in ${files[@]}
  do
    if [[ -L ~/.$file ]]
    then
      echo $red"Skipping ~/.$file. File already linked."
    else
      echo $blue"Linking $PWD/$file to ~/.$file..."
      ln -s $PWD/$file ~/.$file
    fi
  done
}

unlink() {
  for file in ${files[@]}
  do
    echo $blue"Unlinking ~/.$file..."
    rm ~/.$file
  done
}

if [[ $1 == 'link' ]]
then
  link
  echo $green"Done!"
elif [[ $1 == 'unlink' ]]
then
  unlink
  echo $green"Done!"
else
  echo $blue" Dude. I'm not a mind reader."
  echo $green" Usage: ./install.sh [link|unlink]"
fi
