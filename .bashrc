alias gac="git add . && git commit -m"
alias gpoh="git push origin HEAD"
alias api="npm run api:serve"
alias fe="npm run frontend:serve"
alias aliases="code 'C:\Users\user\.bashrc'"
alias sand="code 'C:\Users\user\Documents\code\sandbox.js'"
alias rsand="node 'C:\Users\user\Documents\code\sandbox.js'"
alias tsand="code 'C:\Users\user\Documents\code\tsand.ts'"
alias rtsand="npx tsx 'C:\Users\user\Documents\code\tsand.ts'"
alias aoc="npx tsx 'C:\Users\user\Documents\code\AOC-2024\tsand.ts'"
alias rtsand="npx tsx 'C:\Users\user\Documents\code\tsand.ts'"
alias gclean='gac "self-review cleanup"&&gpoh'
alias gdev='git checkout develop'
alias pcreate='npx prisma migrate dev --create-only'
alias pmig='npx prisma migrate dev'
alias pgen='npx prisma generate'
alias p='node puppet.js'
alias r='npx tsx refactor.ts'
alias s='uvicorn app:app --reload'
alias rf='node refactor.js'
alias obsidian="C:/Users/user/AppData/Local/Programs/obsidian/Obsidian.exe"
alias penv="python -m venv venv && source ./venv/Scripts/activate"
alias src="source ~/.bashrc"
alias ef="docker compose -f "postgres.docker-compose.yml" up -d --build && npm run dev"

t() {
  touch $1 && code $_
}
ytmp3low() { yt-dlp "$1" -x --audio-format mp3 --audio-quality 7 --ffmpeg-location "C:\Users\user\AppData\Local\Microsoft\WinGet\Links\ffmpeg.exe" -o "/c/Users/user/Downloads/%(title)s.%(ext)s"; }

yt() {
  yt-dlp "$1" \
    -x --audio-format mp3 --audio-quality 0 \
    --ffmpeg-location "C:\Users\user\AppData\Local\Microsoft\WinGet\Links\ffmpeg.exe" \
    -o "/c/Users/user/Downloads/%(title)s.%(ext)s" \
    --restrict-filenames \
    --print after_move:filepath 
    
}


ytm() {
  local file
  file=$(yt "$1")
  mv "$file" "E:\Syncthing\dump"
}



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

