# Notes

## Environment configuration

### Git prompt

Add to bashrc

```bash
if test -f /usr/share/git/completion/git-prompt.sh; then
  source /usr/share/git/completion/git-prompt.sh 2>&1 /dev/null
  export GIT_PS1_SHOWSTASHSTATE=true
  export GIT_PS1_SHOWDIRTYSTATE=true
  export GIT_PS1_SHOWUNTRACKEDFILES=true
  export GIT_PS1_SHOWUPSTREAM="auto"
  export GIT_PS1_SHOWCOLORHINTS=true
  PS1='[\u@\h \W]$(__git_ps1) \$ '
fi
```

 - https://wiki.archlinux.org/title/Git


### direnv

Install direnv

Add to bashrc

```bash
eval "$(direnv hook bash)"
```

Configure specific folder, e.g. automatically load Nix environment.

```bash
cd <path>
echo "use flake ." >> .envrc
direnv allow .
```

In VSCode install extension 'direnv'.
We can now select the compiler installed in the nix environment.

 - https://direnv.net/
 