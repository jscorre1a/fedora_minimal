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

#mkdir $HOME/GoogleDrive/

# Install noir theme
sh ./extras/install.sh -i

# GDrive
opam init -a -y

eval $(opam env)

opam update

opam install depext -y

opam depext google-drive-ocamlfuse -y

opam install google-drive-ocamlfuse -y

eval $(opam env)

#google-drive-ocamlfuse

#google-drive-ocamlfuse $HOME/GoogleDrive -- Also add this to startup
