class MultipleBranchSelectionPrompt

  NUMBER_REGEXP = /\A\d+\z/

  attr_reader :branches

  def initialize(branches)
    @branches = branches
  end

  def prompt_for_branch_selection
    print_prompt_for_branch_selection
    get_branch_name_from_user_input(gets.strip)
  end

private

  def get_branch_name_from_user_input(user_input)
    branch_numbers = user_input.split(" ")
    branch_numbers.map do |branch_number|
      if branch_number =~ NUMBER_REGEXP
        chosen_branch_index = branch_number.to_i - 1
        if chosen_branch_index != -1 && !(chosen_branch_name = branches[chosen_branch_index]).nil?
          chosen_branch_name
        end
      end
    end.compact
  end

  def print_prompt_for_branch_selection
    puts "Destroy one or more branches:"
    puts
    branches.each_with_index do |branch_name, index|
      puts "  #{index+1}: #{branch_name}"
    end
    puts
    # Use print rather than puts so that the number the user types show on the same line
    print "Type the number(s) of the branch(es) you want to destroy: "
  end

end
