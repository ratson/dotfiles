# history search with peco
if (( $+commands[peco] )); then
  peco-select-history() {
    BUFFER=$(history 1 | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\*?\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$LBUFFER")
    CURSOR=${#BUFFER}
    zle reset-prompt
  }
  zle -N peco-select-history
  bindkey '^r' peco-select-history
fi
