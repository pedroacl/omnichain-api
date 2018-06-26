class Types::StageType < Types::BaseObject
  description 'A stage in the supply chain'

  field :name, String, "The stage's name", null: false
  field :description, String, 'A description of the stage', null: true
end
