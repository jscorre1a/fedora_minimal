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