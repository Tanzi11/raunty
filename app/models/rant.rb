class Rant < ApplicationRecord
  belongs_to :user
  has_many :advices
  has_many :aunties, through: :advices

  validates :content, presence: true
end
