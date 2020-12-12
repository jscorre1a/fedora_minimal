# Add rofi settings
mkdir $HOME/.config/rofi
cp extras/config.rasi $HOME/.config/rofi/config.rasi

# Add fusuma settings
mkdir $HOME/.config/fusuma
cp extras/config.yml $HOME/.config/fusuma/config.yml

# Add code settings
mkdir -p $HOME/.config/Code/User/
cp extras/settings.json $HOME/.config/Code/User/settings.json

# Copy startup information
cp -a startup/. $HOME/.config/autostart/

# Copy wallpapers
cp -r Wallhaven/ $HOME/Pictures/

# Install noir theme
sh ./extras/install.sh -i

# GDrive
opam init

source $HOME/.bash_profile 

opam update

source $HOME/.bash_profile
source $HOME/.bashrc

opam install depext

opam depext google-drive-ocamlfuse

opam install google-drive-ocamlfuse

#google-drive-ocamlfuse

mkdir $HOME/GoogleDrive/

#google-drive-ocamlfuse $HOME/GoogleDrive
