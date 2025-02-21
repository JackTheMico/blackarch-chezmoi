if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr lg lazygit
abbr lj lazyjj
abbr czi chezmoi
abbr md mkdir
abbr ls eza
abbr ll 'eza -l'
abbr la 'eza -a'
abbr lt 'eza -T'
abbr jjbm 'jj bookmark s -r @- main'
abbr gpom 'git push -u origin main'
abbr efish 'chezmoi edit ~/.config/fish/config.fish'
abbr refish 'chezmoi apply ~/.config/fish/config.fish && source ~/.config/fish/config.fish'
abbr wgete 'wget -e "https_proxy=http://localhost:7897"'

function enproxy
    set -xg ALL_PROXY http://localhost:7897
    set -xg HTTP_PROXY http://localhost:7897
    set -xg HTTPS_PROXY http://localhost:7897
    echo "Enable proxies"
end
function deproxy
    set -e ALL_PROXY
    set -e HTTP_PROXY
    set -e HTTPS_PROXY
    echo "Disable proxies"
end
starship init fish | source
zoxide init fish | source
