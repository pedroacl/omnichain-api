# A supply chain model
class SupplyChain < ApplicationRecord
  has_many :products
  has_many :stages
end
