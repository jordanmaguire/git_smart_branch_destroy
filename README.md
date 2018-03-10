# Git Smart Branch Destroy

This is a dumb little library I made because I don't like using autocomplete to destroy a branch, and I want to destroy a bunch of em at once

This will print out a prompt showing the local branches in your current repo and allow you to destroy one or more of these out based on the number allocated to it:

```
Merge a branch into master:

  1: bug_fix/different_sized_tables
  2: develop
  3: fix_flaky_amount_specs
  4: nullable_factory_fields

Type the number of the branch you want to merge: 1 3

Destroyed bug_fix/different_sized_tables
Destroyed fix_flaky_amount_specs
```

## Setup

To call this library from the command line, you have to make the ruby file available in your $PATH.

You'll want to clone this repo somewhere, then symlink the `git_smart_branch_destroy.rb` file somewhere on your $PATH. EG:

```
chmod +x git_smart_branch_destroy.rb
ln -s `pwd`/git_smart_branch_destroy.rb ~/bin/git_smart_branch_destroy
```

You can also add an alias to make using this more convenient. EG:

```
alias gsd="git_smart_branch_destroy"
```
