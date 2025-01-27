
#!/usr/bin/env bash

# Backs up and restores gnome3 keybindings
# Tested with Gnome 3.36.8
# by peterrus

set -e

mkdir -p gnome3-keybind-backup

if [[ $1 == 'backup' ]]; then
  dconf dump '/org/gnome/desktop/wm/keybindings/' > gnome3-keybind-backup/keybindings.dconf
  dconf dump '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' > gnome3-keybind-backup/custom-values.dconf
  dconf read '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings' > gnome3-keybind-backup/custom-keys.dconf
  echo "backup done"
  exit 0
fi
if [[ $1 == 'restore' ]]; then
  # dconf reset -f '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/'
  # dconf reset -f '/org/gnome/desktop/wm/keybindings/'
  dconf load '/org/cinnamon/desktop/keybindings' < ./keybindings.dconf
  dconf load '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' < ./custom-values.dconf
  dconf write '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings' "$(cat ./custom-keys.dconf)"
  echo "restore done"
  exit 0
fi

echo "parameter 0: [backup|restore]"

dconf load '/org/cinnamon/desktop/keybindings/custom-keybindings/' < ./yo
dconf write '/org/cinnamon/desktop/keybindings/custom-keybindings' "$(cat ./yo)"