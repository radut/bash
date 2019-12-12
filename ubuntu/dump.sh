apt list --installed | tee apt.list.installed
dpkg --get-selections | tee dpkg.get.selections
pip freeze | tee pip.freeze
cp ~/.vimrc .
cp ~/.bash_profile .
cp ~/.bashrc .
cp ~/.profile .
cp ~/.gitconfig .

