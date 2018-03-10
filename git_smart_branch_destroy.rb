#!/usr/bin/env ruby

require_relative "lib/branch_parser"
require_relative "lib/multiple_branch_selection_prompt"

branches          = BranchParser.new(`git branch`).branches
selected_branches = MultipleBranchSelectionPrompt.new(branches).prompt_for_branch_selection

puts # Add a line of whitespace to the output for readability
if selected_branches.any?
  selected_branches.each do |selected_branch|
    `git branch -D #{selected_branch}`
    puts "Destroyed #{selected_branch}"
  end
else
  puts "Invalid branch selection"
end
