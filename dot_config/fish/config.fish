source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

set -gx EDITOR vim

abbr -a fe 'eval $EDITOR (fzf)'
abbr -a parus 'paru -S'

zoxide init --cmd cd fish | source
