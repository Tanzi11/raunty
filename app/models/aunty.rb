class Aunty < ApplicationRecord
  has_many :advices
  has_many :notes
  has_many :rants, through: :advices
end
