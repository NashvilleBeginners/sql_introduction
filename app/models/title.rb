class Title < ApplicationRecord
  has_many :authorships
  has_many :authors, through: :authorships
  belongs_to :publisher
end
