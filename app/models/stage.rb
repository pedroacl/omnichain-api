# A stage where several products go through
class Stage < ApplicationRecord
  validates :name, presence: true

  has_many :products, through: :products_stages
  belongs_to :company, validate: true
  belongs_to :supply_chain, validate: true
end
