class Authorship < ApplicationRecord
  belongs_to :title
  belongs_to :author
end
