class Kingdom < ApplicationRecord
  has_many :ships
  belongs_to :monarch
  has_and_belongs_to_many :wars
end
