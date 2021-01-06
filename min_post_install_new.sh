# Ansible dependency
# pip install packaging
# pip install msrestazure

wget https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt
pip install -r requirements-azure.txt --use-feature=2020-resolver 


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