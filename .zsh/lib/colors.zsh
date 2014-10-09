typeset -Ag FX FG BG

LSCOLORS="gxfxcxdxbxeghehbagacax"
LS_COLORS="di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=37;44:su=37;41:sg=0;46:tw=0;42:ow=0;40:"

FX=(
    reset     "%{0m%}"
    bold      "%{1m%}" no-bold      "%{m%}"
    italic    "%{3m%}" no-italic    "%{m%}"
    underline "%{4m%}" no-underline "%{m%}"
    blink     "%{5m%}" no-blink     "%{m%}"
    reverse   "%{7m%}" no-reverse   "%{m%}"
)

for color in {000..255}; do
    FG[$color]="%{;5;${color}m%}"
    BG[$color]="%{;5;${color}m%}"
done

# Show all 256 colors with color number
function spectrum_ls() {
  for code in {000..255}; do
    print -P -- "$code: %F{$code}Test%f"
  done
}

