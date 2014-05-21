if [[ $- != *i* ]] ; then
  # Shell is non-interactive.  Be done now!
  return
fi

# Sounds
export PLAY_SOUNDS=0
export SUCCEED_SOUND="$HOME/.succeed.mp3"
export FAIL_SOUND="$HOME/.fail.mp3"

# Create files as u=rwx, g=rx, o=rx
umask 022

# Path
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="$HOME/.bin:$PATH" # For dotfiles
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/dev/android-sdk/sdk/tools:$PATH" # For Android
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH" # For Postgres App

# Fucking Adobe Air...
export PATH="$HOME/applications/airsdk/bin:$PATH" # For Adobe AIR

# Fucking Node...
# export PATH="/usr/local/bin:$PATH"

# Fucking MySQL...
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# Fucking Postgres...
export PGDATA="/usr/local/var/postgres"

# Fucking Cocos2D-X
export ANT_ROOT=$HOME/dev/apache-ant/bin
export JAVA_HOME=$(/usr/libexec/java_home)
export COCOS_CONSOLE_ROOT=$HOME/dev/cocos2d-js/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

. ~/.aliases

[[ -e "$HOME/.private" ]] && source "$HOME/.private"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "/Users/ltackett/.rvm/scripts/rvm" ]] && source "/Users/ltackett/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
