# Add rofi settings
mkdir $HOME/.config/rofi
cp extras/config.rasi $HOME/.config/rofi/config.rasi

# Add code settings
mkdir -p $HOME/.config/Code/User/
cp extras/settings.json $HOME/.config/Code/User/settings.json

# Copy startup information
cp -a startup2/. $HOME/.config/autostart/

# Copy wallpapers
cp -r Wallhaven/ $HOME/Pictures/

# Install noir theme
sh ./extras/install.sh -i