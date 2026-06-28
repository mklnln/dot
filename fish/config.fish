source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# === MY OWN ALIASES (migrated here from cachyos-config.fish, which pacman overwrites on update) ===
alias venv="source .venv/bin/activate.fish"
alias aliases="code ~/.config/fish/config.fish"
alias src="source ~/.config/fish/config.fish"
alias gac="git add . && git commit -m"
alias gpoh="git push origin HEAD"
alias code="vscodium"
alias fishhist="code ~/.local/share/fish/fish_history"
alias chrome-web="chromium --remote-debugging-port=9222 --no-first-run --no-default-browser-check --user-data-dir=$HOME/.chrome-driver"
alias r="npx tsx ~/code/hootsuite-auto/refactor.ts"
alias kd="sudo nano /etc/keyd/default.conf"
