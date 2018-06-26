class Types::ProductType < Types::BaseObject
  description 'A product of the supply chain'

  field :name, String, "The product's name", null: false
  field :description, String, 'A description of the product', null: true
end
