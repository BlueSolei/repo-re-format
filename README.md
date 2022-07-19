# Re-format your C/C++ git repo using `clang-format`

When you wish to introduce a code format to your repo, one of the daunting artifact is garbaging each commits from now on, with formatting changes.  
This trushes the `git blame` tool, since the "last changes" are probably the formatting, and not the original logical commit.  
This repo is here for the rescue :-)  
It re-format your repo from the begining of time, to the latest commit.  
The script here will re-format every commit ever done on the repo, so branches are covered :-)  
It is a dangarues process, so do it on a copy of your git repo.  
This repo is really just a minimal re-packaging of this great great [git-filter-repo](https://github.com/newren/git-filter-repo/blob/75e67bcd44014502cafff67cc8a93d2914f50510/Documentation/converting-from-filter-branch.md#cheat-sheet-additional-conversion-examples) tool.  

## How to re-format a repo
1. Have the `clang-format` tool installed. [the npm way](https://www.electronjs.org/docs/latest/development/clang-format#:~:text=You%20can%20install%20clang%2Dformat,on%20macOS%2FLinux%2FWindows.) looks nice: `npm install --location=global clang-format`. 
1. Clone this repo to a folder somwhere, say, `/tmp/formatter`
1. Edit the `.clang-format` to suite your needs. here is [a visualised online way](https://zed0.co.uk/clang-format-configurator/) to do that.
1. Goto your repo, and run `/tmp/formatter/re-format.sh`
1. Validate your repo integrity - build, unit-test, etc.

## Next stpes
1. Make sure every commit from now on is formated.  
  The tools for this are: `git clang-format`, pre-commit hook, and/or CI bot/action. ([good blog post](https://ortogonal.github.io/cpp/git-clang-format/))
