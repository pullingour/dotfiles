# ~/.bash_aliases

# w3m bookmark
alias w3mhn='w3m https://news.ycombinator.com/'
alias w3mimg='w3m http://img.2chan.net/b/futaba.htm'

# Git Commands
alias ga='git add .'
alias gc='git commit -m '
alias gcc="git commit -m 'hoge'"
alias gl='git log --graph --decorate --oneline'
alias gd='git diff'
alias gb='git branch'
alias gs='git status'
alias gm='git push origin master'
alias gpg='git push origin gh-pages'

# custam commands
alias cl='clear'
alias la='ls -a'
alias shs='ssh slotet'

# move dir
alias c.='cd ../'
alias c..='cd ../../'
alias c...='cd ../../../'

# sh commands
alias makeGif='sh makeGif.sh'
alias pripara='sh convertPriparamp4.sh'
alias primg='sh Primg.sh'
alias bpg='sh publish_to_ghpages.sh'
alias resize='sh resizejpg.sh'
alias deploy='sh deploy.sh'

# hoge
alias ccvm='python /Users/kiyomasa/git/python-scripts/post_vid_to_slack.py'

pripost()
{
  rm $HOME/Desktop/pripara/post/.DS_Store
  python $HOME/Desktop/pripara/pripost.py
  echo "done"
}

gifToMp4()
{
  read -p "enter gif file name: " filename
  ffmpeg -i $filename -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" video.mp4
}

# hugo alias
alias hugoserver='hugo server -w -D'

# wtf
convertYoutubeCapture()
{
  timestamp=$(date +%s)
  find $HOME/Desktop/ -name "*).png" -exec rm {} \;
  mkdir $HOME/images/test/pri/$timestamp
  mv $HOME/Desktop/*.png $HOME/images/resouces/LoM/$timestamp
  cd $HOME/images/resouces/LoM/$timestamp

  IFS_bak=$IFS
  IFS=$'\n'
  for file in *.png
  do
    # 595 406
#     #    1048 1498
    convert $file -crop 1498x1048+520+240 $file
  done
  IFS=$IFS_bak
}