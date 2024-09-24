# Full path of the default login shell initialization file: /etc/skel/.profile.

# ~/.profile: executed by the command interpreter for login shells. This file is
# not read by bash(1), if ~/.bash_profile or ~/.bash_login exists. See
# /usr/share/doc/bash/examples/startup-files for examples. The files are located
# in the bash-doc package.

# The default umask is set in /etc/profile; for setting the umask for ssh
# logins, install and configure the libpam-umask package.




export EDITOR=nvim

export PATH="${PATH}":"${HOME}/.local/bin":"${XDG_DATA_HOME}/cargo/bin"

if [ "${XDG_DATA_HOME}" ]; then
    export HISTFILE="${XDG_DATA_HOME}/bash/history"
    export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
    export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"
    export GOPATH="${XDG_DATA_HOME}/go"
    export ANDROID_USER_HOME="${XDG_DATA_HOME}/android"
    export CARGO_HOME="${XDG_DATA_HOME}/cargo"
    export ELECTRUMDIR="${XDG_DATA_HOME}/electrum"
    export SDKMAN_DIR="$XDG_DATA_HOME/sdkman"
    export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"
else
    export HISTFILE="${HOME}/.local/share/bash/history"
    export GNUPGHOME="${HOME}/.local/share/gnupg"
    export GRADLE_USER_HOME="${HOME}/.local/share/gradle"
    export GOPATH="${HOME}/.local/share/go"
    export ANDROID_USER_HOME="${HOME}/.local/share/android"
    export CARGO_HOME="${HOME}/.local/share/cargo"
    export ELECTRUMDIR="${HOME}/.local/share/electrum"
    export SDKMAN_DIR="${HOME}/.local/share/sdkman"
    export RUSTUP_HOME="${HOME}/.local/share/rustup"
fi

if [ -n "${BASH_VERSION}" ]; then
    if [ -f "${HOME}/.bashrc" ]; then
        . "${HOME}/.bashrc"
    fi
fi

if [ "${XDG_STATE_HOME}" ]; then
    export LESSHISTFILE="${XDG_DATA_HOME}/less/history"
else
    export LESSHISTFILE="${HOME}/.local/share/less/history"
fi

if [ "${XDG_CONFIG_HOME}" ]; then
    export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
    export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
else
    export GTK2_RC_FILES="${HOME}/.config/gtk-2.0/gtkrc"
    export NPM_CONFIG_USERCONFIG="${HOME}/.config/npm/npmrc"
fi

# LXD Directories
export LXD_STORAGE_DIR="/storage/${USER}"
export LXD_AUDIO_DIR="${HOME}/Audio"
export LXD_DOCS_DIR="${HOME}/Documents"
export LXD_DL_DIR="${HOME}/Downloads"
export LXD_TORRENTS_DIR="${HOME}/Torrents"
export LXD_GAMES_DIR="${HOME}/Games"
export LXD_VIDEO_DIR="${HOME}/Video"
export LXD_WORKSPACE_DIR="${HOME}/Workspace"
export LXD_PICTURES_DIR="${HOME}/Pictures"
export LXD_MUSIC_DIR="${LXD_AUDIO_DIR}/Music"
export LXD_AUDIO_REC_DIR="${LXD_AUDIO_DIR}/Rec"
export LXD_PODCASTS_DIR="${LXD_AUDIO_REC_DIR}/Podcasts"
export LXD_VOICE_MSG_DIR="${LXD_AUDIO_REC_DIR}/Voice messages"
export LXD_SOUNDS_DIR="${LXD_AUDIO_DIR}/Sounds"
export LXD_JOB_DOCS_DIR="${LXD_DOCS_DIR}/Job"
export LXD_OBSIDIAN_VAULTS_DIR="${LXD_DOCS_DIR}/obsidian"
export LXD_BOOKS_DIR="${LXD_DOCS_DIR}/Books"
export LXD_TELEGRAM_DL_DIR="${LXD_DL_DIR}/Telegram"
export LXD_TORRENT_DL_DIR="${LXD_DL_DIR}/Torrent"
export LXD_MOVIES_TORRENTS_DIR="${LXD_TORRENTS_DIR}/Movies"
export LXD_SERIES_TORRENTS_DIR="${LXD_TORRENTS_DIR}/Series"
export LXD_MUSIC_TORRENTS_DIR="${LXD_TORRENTS_DIR}/Music"
export LXD_BOOKS_TORRENTS_DIR="${LXD_TORRENTS_DIR}/Books"
export LXD_GAMES_TORRENTS_DIR="${LXD_TORRENTS_DIR}/Games"
export LXD_NES_GAMES_DIR="${LXD_GAMES_DIR}/NES"
export LXD_SEGA_GAMES_DIR="${LXD_GAMES_DIR}/SEGA"
export LXD_SNES_GAMES_DIR="${LXD_GAMES_DIR}/SNES"
export LXD_N64_GAMES_DIR="${LXD_GAMES_DIR}/N64"
export LXD_PS_GAMES_DIR="${LXD_GAMES_DIR}/PS"
export LXD_PS2_GAMES_DIR="${LXD_GAMES_DIR}/PS2"
export LXD_XBOX_GAMES_DIR="${LXD_GAMES_DIR}/XBOX"
export LXD_PS3_GAMES_DIR="${LXD_GAMES_DIR}/PS3"
export LXD_XBOX360_GAMES_DIR="${LXD_GAMES_DIR}/XBOX360"
export LXD_ZX_SPECTRUM_GAMES_DIR="${LXD_GAMES_DIR}/ZX Spectrum"
export LXD_DOS_GAMES_DIR="${LXD_GAMES_DIR}/DOS"
export LXD_WIN_GAMES_DIR="${LXD_GAMES_DIR}/Windows"
export LXD_SAVED_VIDEOS_DIR="${LXD_VIDEO_DIR}/Saved"
export LXD_PERSONAL_VIDEOS_DIR="${LXD_VIDEO_DIR}/Personal"
export LXD_MOVIES_DIR="${LXD_VIDEO_DIR}/Movies"
export LXD_SERIES_DIR="${LXD_VIDEO_DIR}/Series"
export LXD_SHOTCUT_DIR="${LXD_VIDEO_DIR}/shotcut"
export LXD_JOB_WORKSPACE_DIR="${LXD_WORKSPACE_DIR}/Job"
export LXD_GHIDRA_DIR="${LXD_WORKSPACE_DIR}/ghidra"
export LXD_ANDROID_STUDIO_SDK_DIR="${LXD_WORKSPACE_DIR}/android-studio/sdk"
export LXD_ANDROID_STUDIO_PROJECTS_DIR="${LXD_WORKSPACE_DIR}/android-studio/projects"
export LXD_SRC_DIR="${LXD_WORKSPACE_DIR}/src"
export LXD_VAR_DIR="${LXD_WORKSPACE_DIR}/var"
export LXD_LOG_DIR="${LXD_VAR_DIR}/log"
export LXD_IMG_DIR="${LXD_VAR_DIR}/img"
export LXD_BACKUP_DIR="${LXD_VAR_DIR}/backup"
export LXD_ARTWORK_DIR="${LXD_PICTURES_DIR}/Artwork"
export LXD_GIF_DIR="${LXD_PICTURES_DIR}/GIF"
export LXD_PHOTOS_DIR="${LXD_PICTURES_DIR}/Photos"
export LXD_SAVED_PICTURES_DIR="${LXD_PICTURES_DIR}/Saved"
export LXD_SCREENSHOTS_DIR="${LXD_PICTURES_DIR}/Screenshots"
export LXD_WALLPAPERS_DIR="${LXD_PICTURES_DIR}/Wallpapers"
export LXD_PIC_ASSETS_DIR="${LXD_PICTURES_DIR}/Assets"

eval $(ssh-agent -a $XDG_RUNTIME_DIR/ssh-agent.sock)
