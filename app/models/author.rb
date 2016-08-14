class Author < ApplicationRecord
  has_many :authorships
  has_many :titles, through: :authorships
end
