function theme_colors() {
  for code ({000..255}) print -P -- \
    "$code: %F{$code}This is how your text would look like%f"
}

POWERLEVEL9K_VI_INSERT_MODE_STRING=""
POWERLEVEL9K_VI_COMMAND_MODE_STRING="[N]"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%I:%M  \UF133  %m.%d.%y}"

# Removed item from this array:
# vcs
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon
  dir
  status
  vi_mode
)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  root_indicator
  command_execution_time
  nvm
  rvm
)

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_RVM_BACKGROUND="197"
POWERLEVEL9K_RVM_FOREGROUND="255"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="255"

POWERLEVEL9K_OS_ICON_BACKGROUND="231"
POWERLEVEL9K_OS_ICON_FOREGROUND="black"

POWERLEVEL9K_NVM_BACKGROUND="227"

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="033"
POWERLEVEL9K_DIR_HOME_BACKGROUND=$POWERLEVEL9K_DIR_DEFAULT_BACKGROUND
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=$POWERLEVEL9K_DIR_DEFAULT_BACKGROUND
POWERLEVEL9K_DIR_ETC_BACKGROUND=$POWERLEVEL9K_DIR_DEFAULT_BACKGROUND

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="021"
POWERLEVEL9K_DIR_HOME_FOREGROUND=$POWERLEVEL9K_DIR_DEFAULT_FOREGROUND
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=$POWERLEVEL9K_DIR_DEFAULT_FOREGROUND
POWERLEVEL9K_DIR_ETC_FOREGROUND=$POWERLEVEL9K_DIR_DEFAULT_FOREGROUND

POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f "

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="229"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="157"
