module AuntiesHelper

  def self.helpful_message(advice)
    if advice.helpful == true
      return "The aunties are grateful for your feedback! We are so glad to be helpful!"
    else
      return  "The aunties are grateful for your feedback! Sorry you don't like our advice."
    end
  end
end
