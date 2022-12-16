# .dotfiles
![image](https://user-images.githubusercontent.com/31675729/207511494-5722ae42-0737-4a87-8197-872cde0f9253.png)


## Inspiration
[Hacker News Dotfile thread](https://news.ycombinator.com/item?id=11071754)  
[ArchWiki Dotfiles](https://wiki.archlinux.org/title/Dotfiles)


## Quickstart

```sh
git clone --bare
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
  config config status.showUntrackedFiles no
```

For autocompletes in bash edit `~/.bashrc`. Although `.bashrc` should be included in this repo anyways.

```sh
source /usr/share/bash-completion/completions/git
__git_complete config __git_main
```
