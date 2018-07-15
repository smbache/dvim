# Dockerized (Neo)Vim

This is small dockerized neovim with some of my preferred plugins and
setup. This makes it easy to quickly use vim when pairing on others'
machines where vim is unavailable.

## Usage

```
docker run --rm -v ${PWD}:/wd -it smbache/dvim:latest
```

## Key Mappings
```
<space>/ fuzzy search in files
<space><c-l> fuzzy search in lines in current buffer, using current word
<space><c-L> fuzzy search in lines in open buffers, using current word
<space>f fuzzy lookup files to open
<space>b fuzzy switch to open buffers
<space>l fuzzy search for lines in current buffer
<space>L fuzzy search for lines in all open buffers
<space>w fuzzy switch window
<space>t toggle nerd tree.
```
