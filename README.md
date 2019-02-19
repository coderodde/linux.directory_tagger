# linux.directory_tagger
A simple program for faster switching current working directories. The idea is that the user holds his/her _*tags*_ in `~/.dt/tags` text file, one tag per line. Each tag consists of two tokens: the actual tag name and the directory it points to. For example, if the tag file contains

    home ~
    docs ~/Documents
    down ~/Downloads
    root /
    
typing into `bash` `dt docs` will change the current working directory to `~/Documents`. `dt` can do a little more:
1. tag name matching uses Levenshtein edit distance for matching the tag entries in the tags file. In other words, typing `dt hme` will still switch to `~` even if the tag name is misspelled. 
2. Writing simply `dt` will switch to the previous directory and make the current directory previous instead. This allows "jumping" between two directories via simply typing `dt` without arguments.

## Installing
    
    git clone git@github.com:coderodde/linux.directory_tagger.git
    cd linux.directory_tagger
    chmod 700 dt.install.sh
    ./dt.install.sh
    
## Flags

*Synopsis* `dt [-s | -S | -l | -L | -d]`

Lists all the tag entries in the tags file. `-s` and `-S` stand for "sorted", `l` and `L` for listing, `d` sort by directory names. Upper case flags for showing associated directories.
