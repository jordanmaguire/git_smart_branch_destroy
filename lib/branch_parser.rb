class BranchParser

  attr_reader :git_branch_output

  def initialize(git_branch_output)
    @git_branch_output = git_branch_output
  end

  def branches
    git_branch_output.split("\n").select {|name| !name.include?("*")}.map(&:strip)
  end

end
