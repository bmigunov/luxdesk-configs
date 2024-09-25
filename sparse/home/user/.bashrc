# Default non-login interactive shell startup file is located at
# /etc/skel/.bashrc.

# ~/.bashrc: executed by bash(1) for non-login shells. See
# /usr/share/doc/bash/examples/startup-files (in the package bash-doc) for
# examples.




# Shell options below are set by default.

# Check the window size after each command and, if necessary, update the values
# of LINES and COLUMNS.
shopt -s checkwinsize
# Attempt to save all lines of a multiple-line command in the same history.
shopt -s cmdhist
# Quote all shell metacharacters in filenames and directory names when
# performing completion.
shopt -s complete_fullquote
# Expand aliases.
shopt -s expand_aliases
# Enable extended pattern matching features.
shopt -s extglob
# Perform $'string' and $"string" quoting within ${parameter} expansions
# enclosed in double quotes
shopt -s extquote
# If set, the suffixes specified by the FIGNORE shell variable cause words to be
# ignored when performing word completion even if the ignored words are the only
# possible completions.
shopt -s force_fignore
# Append to the history file, don't overwrite it
shopt -s histappend
# Allow a word beginning with '#' to cause that word and all remaining
# characters on that line to be ignored in an interactive shell.
shopt -s interactive_comments
# Enable the programmable completion facilities,
shopt -s progcomp
# If set, prompt strings undergo parameter expansion, command substitution,
# arithmetic expansion, and quote removal after being expanded.
shopt -s promptvars
# Make the source builtin to use the value of PATH to find the directory
# containing the file supplied supplied as an argument.
shopt -s sourcepath

# Other shell options

# If set, a command name that is the name if a directory is executed as if it
# were the argument to the cd command.
shopt -u autocd
# If set, an argument to the cd builtin that is not a directory is assumed to
# be the name of a variable whose value is the directory to change to.
shopt -u cdable_vars
# If set, minor errors in the spelling of a directory component in a cd builtin
# will be corrected.
shopt -u cdspell
# If set, Bash checks that a command found in the hash table exists before
# trying to execute it. If a hashed command no longer exists, a normal path
# search is performed.
shopt -u checkhash
# If set, Bash lists the status of any stopped and running jobs before exiting
# an interactive shell. If any jobs are running, this causes the exit to be
# deferred until a second exit is attempted without an intervening command.
shopt -u checkjobs
# Bash version compability levels.
shopt -u compat31
shopt -u compat32
shopt -u compat40
shopt -u compat41
shopt -u compat42
shopt -u compat43
# If set, Bash replaces directory names with the results of word expansion when
# performing filename completion. If not set, Bash attempts to preserve what
# the user typed.
shopt -u direxpand
# If set, Bash attempts spelling correction on directory names during word
# completion if the directory name initially supplied does not exist.
shopt -u dirspell
# If set, Bash includes filenames beginning with a '.' in the results of
# filename expansion
shopt -u dotglob
# If set, a non-interactive shell will not exit if it cannot execute the file
# specified as an argument to the exec builtin.
shopt -u execfail
# If set at invocation, identical to the --debugger option.
shopt -u extdebug
# If set, patterns which fail to match filenames during filename expansion
# result in an expansion error.
shopt -u failglob
# If set, range expressions used in pattern matching bracket expressions behave
# as if in the traditional C locale when performing comparisons.
shopt -u globasciiranges
# If set, the pattern '**' used in a filename expansion context will match all
# files and zero or more directories and subdirectories. If the pattern is
# followed by a '\', only directories and subdirectories match.
shopt -u globstar
# If set, shell error messages are written in the standard GNU error message
# format.
shopt -u gnu_errfmt
# If set, and Readline is being used, a user is given an opportunity to re-edit
# a failed history substitution.
shopt -u histreedit
# If set, and Readline is being used, the results of history substitution are
# not immediately passed to the shell parser. Instead, the resulting line is
# loaded into the Readline editing buffer, allowing further modification.
shopt -u histverify
# If set, and Readline is being used, Bash will attempt to perform hostname
# completion when a word containing a '@' is being completed.
shopt -u hostcomplete
# If set, Bash will send SIGHUP to all jobs when an interactive login shell
# exits.
shopt -u huponexit
# If set, command substitution inherits the value of the errexit option,
# instead of unsetting it in the subshell environment. Enabled in POSIX mode.
shopt -u inherit_errexit
# If set, and job control is not active, the shell runs the last command of a
# pipeline not executed in the background in the current shell environment.
shopt -u lastpipe
# If set, and the cmdhist is enabled, multi-line commands are saved to the
# history with embedded newlines rather than using semicolon separators where
# possible.
shopt -u lithist
# If set, and a file that Bash is checking for mail has been accessed since the
# last time it was checked, the message "The mail in mail-file has been read"
# is displayed.
shopt -u mailwarn
# If set, and Readline is being used, Bash will not attempt to search the PATH
# for possible completions when completion is attempted on an empty line.
shopt -u no_empty_cmd_completion
# If set, Bash matches filenames in a case-insensitive fashion when performing
# filename expansion.
shopt -u nocaseglob
# If set, Bash matches patterns in a case-insensitive fashion when performing
# matching while executing case or [[ conditional commands, when performing
# pattern substitution wod expansions, or when filtering possible completions
# as part of programmable completion.
shopt -u nocasematch
# If set, Bash allows filename patterns which match no files to expand to a
# null string, rather than themselves.
shopt -u nullglob
# If set, the shift builtin prints an error message when the shift count
# exceeds the number of positional parameters.
shopt -u shift_verbose
# If set, the echo builtin expands backslash-escape sequences by default.
shopt -u xpg_echo

# Enable programmable completion features
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi


# If not running interactively, don't do anything.
case $- in
    *i*) ;;
      *) return;;
esac

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# History options
HISTFILESIZE=8192
HISTSIZE=4096

# Colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    *color* | linux | *kitty* )
        color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\e[36m\](\[\e[35m\]\t\[\e[36m\])─[\[\e[4;31m\]\w\[\e[0;36m\]]\n\[\e[36m\] └─\[\e[96m\][\[\e[91m\]\u@\h\[\e[96m\]] \[\e[91m\]>\[\e[m\]'
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:[\W] >'
fi
unset color_prompt

if [ -f "${LXD_SRC_DIR}/magicmonty/bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_THEME=Default
    source "${LXD_SRC_DIR}/magicmonty/bash-git-prompt/gitprompt.sh"
fi

# Enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    if [ "${XDG_CONFIG_HOME}" ]; then
        test -r "${XDG_CONFIG_HOME}/dircolors" && eval "$(dircolors -b ${XDG_CONFIG_HOME}/dircolors)" || eval "$(dircolors -b)"
    else
        test -r "{HOME}/.config/dircolors" && eval "$(dircolors -b ${HOME}/.config/dircolors)" || eval "$(dircolors -b)"
    fi
fi

# Alias definitions.
if [ -f "${XDG_CONFIG_HOME}/bash/bash_aliases" ]; then
    . "${XDG_CONFIG_HOME}/bash/bash_aliases"
elif [ -f "${HOME}/.config/bash/bash_aliases" ]; then
    . "${HOME}/.config/bash/bash_aliases"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$XDG_DATA_HOME/sdkman"
[[ -s "$XDG_DATA_HOME/sdkman/bin/sdkman-init.sh" ]] && source "$XDG_DATA_HOME/sdkman/bin/sdkman-init.sh"
. "/home/bmigunov/.local/share/cargo/env"

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
