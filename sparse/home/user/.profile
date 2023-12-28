# Full path of the default login shell initialization file: /etc/skel/.profile.

# ~/.profile: executed by the command interpreter for login shells. This file is
# not read by bash(1), if ~/.bash_profile or ~/.bash_login exists. See
# /usr/share/doc/bash/examples/startup-files for examples. The files are located
# in the bash-doc package.

# The default umask is set in /etc/profile; for setting the umask for ssh
# logins, install and configure the libpam-umask package.




if [ "${XDG_DATA_HOME}" ]; then
    export HISTFILE="${XDG_DATA_HOME}/bash/bash_history"
else
    export HISTFILE="${HOME}/.local/share/bash/bash_history"
fi

export EDITOR=nvim


if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ -z "$SSH_AUTH_SOCK" ]; then
    eval $(ssh-agent -s)
    ssh-add
fi

export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"

export LESSHISTFILE="${XDG_STATE_HOME}/less/history"

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get -y autoremove
sudo apt-get -y clean

export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin

export AUDIO_DIR="${HOME}/Audio"
export MUSIC_DIR="${AUDIO_DIR}/Music"
export BOOKS_DIR="${HOME}/Books"
export DOCUMENTS_DIR="${HOME}/Documents"
export PERSONAL_DOCUMENTS_DIR="${DOCUMENTS_DIR}/personal"
export JOB_DOCUMENTS_DIR="${DOCUMENTS_DIR}/job"
export DOWNLOADS_DIR="${HOME}/Downloads"
export TELEGRAM_DOWNLOADS_DIR="${DOWNLOADS_DIR}/Telegram"
export TORRENT_DOWNLOADS_DIR="${DOWNLOADS_DIR}/Torrent"
export GAMES_DIR="${HOME}/Games"
export NES_GAMES_DIR="${GAMES_DIR}/NES"
export SEGA_MEGA_DRIVE_GAMES_DIR="${GAMES_DIR}/SEGA_Mega_Drive"
export SNES_GAMES_DIR="${GAMES_DIR}/SNES"
export N64_GAMES_DIR="${GAMES_DIR}/N64"
export PS_GAMES_DIR="${GAMES_DIR}/PS"
export PS2_GAMES_DIR="${GAMES_DIR}/PS2"
export ZXS_GAMES_DIR="${GAMES_DIR}/ZXS"
export DOS_GAMES_DIR="${GAMES_DIR}/DOS"
export WINDOWS_GAMES_DIR="${GAMES_DIR}/WIN"
export PICTURES_DIR="${HOME}/Pictures"
export ARTWORK_DIR="${PICTURES_DIR}/artwork"
export GIF_DIR="${PICTURES_DIR}/gif"
export PHOTO_DIR="${PICTURES_DIR}/photo"
export SAVED_PICTURES_DIR="${PICTURES_DIR}/saved"
export SCREENSHOTS_DIR="${PICTURES_DIR}/screenshots"
export WALLPAPERS_DIR="${PICTURES_DIR}/wallpapers"
export TORRENTS_DIR="${HOME}/Torrents"
export FINISHED_TORRENTS_DIR="${TORRENTS_DIR}/finished"
export IDEO_DIR="${HOME}/Video"
export ERSONAL_VIDEO_DIR="${VIDEO_DIR}/personal"
export AVED_VIDEO_DIR="${VIDEO_DIR}/saved"
export OVIES_DIR="${VIDEO_DIR}/movies"
export ERIES_DIR="${VIDEO_DIR}/series"
export WORKSPACE_DIR="${HOME}/workspace"
export JOB_WORKSPACE_DIR="${WORKSPACE_DIR}/job"
export GHIDRA_DIR="${WORKSPACE_DIR}/ghidra"
export ANDROID_STUDIO_DIR="${WORKSPACE_DIR}/android_studio"
export OBSIDIAN_DIR="${WORKSPACE_DIR}/obsidian"
export PERSONAL_SRC_DIR="${WORKSPACE_DIR}/personal/src"
export PERSONAL_VAR_DIR="${WORKSPACE_DIR}/personal/var"
export PERSONAL_LOG_DIR="${PERSONAL_VAR_DIR}/log"
export PERSONAL_IMAGES_DIR="${PERSONAL_VAR_DIR}/images"
export PERSONAL_BACKUP_DIR="${PERSONAL_VAR_DIR}/backup"
export NEOVIM_BACKUP_DIR="${PERSONAL_BACKUP_DIR}/nvim"
