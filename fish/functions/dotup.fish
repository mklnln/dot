function dotup --description 'Pull latest dotfiles (~/code/dot) and apply: keyd + konsave KDE profile'
    set -l repo ~/code/dot
    set -l knsv $repo/cachy/kde-profile-konsave/mkl.knsv

    echo "==> Pulling latest dotfiles..."
    if not git -C $repo pull --ff-only
        echo "dotup: git pull was not a fast-forward. Resolve manually in $repo." >&2
        return 1
    end

    echo "==> Installing fish shell config (config.fish + functions)..."
    mkdir -p ~/.config/fish/functions
    cp $repo/fish/config.fish ~/.config/fish/config.fish
    cp $repo/fish/functions/*.fish ~/.config/fish/functions/

    echo "==> Applying keyd config..."
    sudo cp $repo/keyd/default.conf /etc/keyd/default.conf
    sudo keyd reload

    echo "==> Installing custom command-shortcut .desktop files..."
    mkdir -p ~/.local/share/applications
    cp $repo/cachy/app-shortcuts/*.desktop ~/.local/share/applications/

    echo "==> Backing up current KDE config to konsave profile 'mkl-bkp'..."
    konsave -s mkl-bkp -f

    echo "==> Importing fresh 'mkl' profile from dotfiles..."
    konsave -r mkl 2>/dev/null
    konsave -i $knsv
    konsave -a mkl

    echo "==> Restarting plasmashell to apply KDE settings..."
    kquitapp6 plasmashell; and kstart plasmashell >/dev/null 2>&1

    echo "==> dotup complete. (Revert KDE with: konsave -a mkl-bkp)"
end
