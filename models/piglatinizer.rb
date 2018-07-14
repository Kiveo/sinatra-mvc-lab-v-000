class PigLatinizer
  attr_reader :user_input

  def initialize(user_input:)
    @user_input = user_input
  end

  def result
    @user_input
  end

end
