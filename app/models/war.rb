class War < ApplicationRecord
  has_and_belongs_to_many :kingdoms
end
