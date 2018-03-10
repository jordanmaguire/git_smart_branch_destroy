# Git Smart Merge

This is a dumb little library I made because I don't like using autocomplete to merge a branch.

This will print out a prompt showing the local branches in your current repo and allow you to merge one of these out based on the number allocated to it:

```
Merge a branch into master:

  1: bug_fix/different_sized_tables
  2: develop
  3: fix_flaky_amount_specs
  4: nullable_factory_fields

Type the number of the branch you want to merge: 3

Merged fix_flaky_amount_specs into master
```

## Setup

To call this library from the command line, you have to make the ruby file available in your $PATH.

You'll want to clone this repo somewhere, then symlink the `git_smart_merge.rb` file somewhere on your $PATH. EG:

```
chmod +x git_smart_merge.rb
ln -s `pwd`/git_smart_merge.rb ~/bin/git_smart_merge
```

You can also add an alias to make using this more convenient. EG:

```
alias gsm="git_smart_merge"
```

## TODO

- Support merging remote branches
