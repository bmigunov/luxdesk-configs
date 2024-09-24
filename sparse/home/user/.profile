# Full path of the default login shell initialization file: /etc/skel/.profile.

# ~/.profile: executed by the command interpreter for login shells. This file is
# not read by bash(1), if ~/.bash_profile or ~/.bash_login exists. See
# /usr/share/doc/bash/examples/startup-files for examples. The files are located
# in the bash-doc package.

# The default umask is set in /etc/profile; for setting the umask for ssh
# logins, install and configure the libpam-umask package.




export EDITOR=nvim

# Make Java apps appear without issues under Wayland
export _JAVA_AWT_WM_NONREPARENTING=1

# Launch Firefox & Thunderbird in Wayland-compatible mode
export MOZ_ENABLE_WAYLAND=1

export PATH=$PATH:$HOME/.local/bin:$XDG_DATA_HOME/cargo/bin

export QT_QPA_PLATFORM="wayland;xcb"

export GDK_BACKEND=wayland

QT_QPA_PLATFORMTHEME=qt5ct

if [ "${XDG_DATA_HOME}" ]; then
    export HISTFILE="${XDG_DATA_HOME}/bash/bash_history"
    export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
    export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"
    export GOPATH="${XDG_DATA_HOME}/go"
    export ANDROID_HOME="${XDG_DATA_HOME}/android"
    export CARGO_HOME="${XDG_DATA_HOME}/cargo"
    export ELECTRUMDIR="${XDG_DATA_HOME}/electrum"
else
    export HISTFILE="${HOME}/.local/share/bash/bash_history"
    export GNUPGHOME="${HOME}/.local/share/gnupg"
    export GRADLE_USER_HOME="${HOME}/.local/share/gradle"
    export GOPATH="${HOME}/.local/share/go"
    export ANDROID_HOME="${HOME}/.local/share/android"
    export CARGO_HOME="${HOME}/.local/share/cargo"
    export ELECTRUMDIR="${HOME}/.local/electrum"
fi

if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ "${XDG_DATA_HOME}" ]; then
    export LESSHISTFILE="${XDG_STATE_HOME}/less/history"
else
    export LESSHISTFILE="${HOME}/.local/state/less/history"
fi

# Home directories environment
export AUDIO_DIR="${HOME}/Audio"
export MUSIC_DIR="${AUDIO_DIR}/Music"

export BOOKS_DIR="${HOME}/Books"

export DOCUMENTS_DIR="${HOME}/Documents"
export DOCUMENTS_JOB_DIR="${DOCUMENTS_DIR}/job"

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

export VIDEO_DIR="${HOME}/Video"
export PERSONAL_VIDEO_DIR="${VIDEO_DIR}/personal"
export SAVED_VIDEO_DIR="${VIDEO_DIR}/saved"
export MOVIES_DIR="${VIDEO_DIR}/movies"
export SERIES_DIR="${VIDEO_DIR}/series"

export WORKSPACE_DIR="${HOME}/workspace"
export WORKSPACE_JOB_DIR="${WORKSPACE_DIR}/job"
export GHIDRA_DIR="${WORKSPACE_DIR}/ghidra"
export ANDROID_STUDIO_SDK_DIR="${WORKSPACE_DIR}/android_studio/sdk"
export ANDROID_STUDIO_PROJECTS_DIR="${WORKSPACE_DIR}/android_studio/projects"
export OBSIDIAN_DIR="${WORKSPACE_DIR}/obsidian"
export SRC_DIR="${WORKSPACE_DIR}/src"
export VAR_DIR="${WORKSPACE_DIR}/var"
export SAVED_LOGS_DIR="${VAR_DIR}/log"
export IMG_DIR="${VAR_DIR}/img"
export BACKUP_DIR="${VAR_DIR}/backup"
export NEOVIM_BACKUP_DIR="${BACKUP_DIR}/nvim"
