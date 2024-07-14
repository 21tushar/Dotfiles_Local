# Fish greetings when the terminal is shown up in interactive mode
function fish_greeting
    if test (random 1 10) = 1
        fish_logo f00 '' ff0
    else
        if test (random 1 10) -gt 5
            pokemon-colorscripts -r
        else
            colorscript random
        end    
    end
end

function ls --wraps='eza -a --icons --group-directories-first' --description 'alias ls=eza -a --icons --group-directories-first'
    eza -a --icons --group-directories-first --hyperlink $argv
end

function lth --wraps='eza --long --header --icons --tree --git --group-directories-first' --description 'alias lth=eza --long --header --icons --tree --git --group-directories-first'
    eza --long --header --icons --tree --git --group-directories-first --hyperlink $argv
end

function lt --wraps='eza --long --header -a --icons --tree --git --group-directories-first' --description 'alias lt=eza --long --header -a --icons --tree --git --group-directories-first'
    eza --long --header -a --icons --tree --git --group-directories-first --hyperlink $argv
end

function lh --wraps='eza --long --header --icons --git --group-directories-first' --description 'alias lh=eza --long --header --icons --git --group-directories-first'
    eza --long --header --icons --git --group-directories-first --hyperlink $argv
end

function l --wraps='eza --long --header -a --icons --git --group-directories-first' --description 'alias l=eza --long --header -a --icons --git --group-directories-first'
    eza --long --header -a --icons --git --group-directories-first --hyperlink $argv
end

function ip --description 'alias ip=ip -c a'
    command ip -c a $argv
end

function info --wraps=tldr --description 'alias info=tldr'
    tldr $argv
end

function gpt --wraps='tgpt -i' --description 'alias gpt=tgpt -i'
    tgpt $argv
end

if status is-interactive
    if type -q atuin
        atuin init fish | source
    end
end

if type -q starship
    starship init fish | source
end

function c --wraps=clear --wraps=z --description 'alias c=z'
    z $argv
end

function cl --wraps=clear --wraps='clear' --description 'alias cl=clear'
    clear
end

function history
    builtin history --show-time='%F %T '
end

# cd fish aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."

alias home="cd ~"
