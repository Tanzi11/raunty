class Rant < ApplicationRecord
  belongs_to :user
  has_many :advices
  has_many :aunties, through: :advices

  validates :content, presence: true

  def helpful_advice
    self.advice.all_helpful_advice
  end
end
