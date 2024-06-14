if [ "$CATPPUCCIN_FLAVOR" = "frappe" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-frappe.zsh
elif [ "$CATPPUCCIN_FLAVOR" = "latte" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-latte.zsh
elif [ "$CATPPUCCIN_FLAVOR" = "macchiato" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-macchiato.zsh
else
    source ${0:A:h}/catppuccin-flavors/catppuccin-mocha.zsh
fi


PROMPT="%(?:%F{${catppuccin_green}}%1{➜%} :%F{${catppuccin_red}}%1{➜%} )"
if [ "$CATPPUCCIN_SHOW_TIME" = true ];
then
  PROMPT+="%F{${catppuccin_mauve}}%T%  "
fi

PROMPT+="%F{${catppuccin_pink}}%n%  "
PROMPT+="%F{${catppuccin_blue}}%c%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{${catppuccin_teal}}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{${catppuccin_teal}}) %F{${catppuccin_yellow}}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{${catppuccin_teal}}) %F{${catppuccin_green}}%1{✔%}"
