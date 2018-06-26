class Company < ApplicationRecord
  validate :name, presence: true

  has_many :stages
end
