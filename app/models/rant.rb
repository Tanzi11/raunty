class Rant < ApplicationRecord
  belongs_to :user
  has_many :advices
  has_many :aunties, through: :advices
end
