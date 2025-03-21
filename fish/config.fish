# ~/.config/fish/config.fish

if status is-interactive 
 # Commands to run in interactive sessions can go here
     starship init fish | source
     set FLINE_PATH $HOME/.config/fish/fishline
     set -gx PATH $PATH /home/FatalPenguin/.config/fish/fishline
     source $FLINE_PATH/init.fish
     set -g theme_title_display_process yes 
end

function fish_prompt
    fishline -s $status
end


