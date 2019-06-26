class AuntySerializer < ActiveModel::Serializer
  has_many :rants
  attributes :personality
end
