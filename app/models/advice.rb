class Advice < ApplicationRecord
  belongs_to :aunty
  belongs_to :rant

  def self.all_helpful_advice
    where(helpful: true)
  end

  # def helpful_advice(rants)
  #   rants.collect {|rant| rant.advices.all...}
  # end
end
