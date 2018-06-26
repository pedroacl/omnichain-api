# A supply chain product model
class Product < ApplicationRecord
  validates :name, presence: true

  belongs_to :supply_chain, validate: true
  has_many :stages, through: :products_stages
end
