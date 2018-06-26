class Types::QueryType < Types::BaseObject
  description 'The root query'

  field :products, [Types::ProductType], resolver: Resolvers::Products::FindProducts
  field :stages, [Types::StageType], resolver: Resolvers::Stages::FindStages

  # def stages
  #   Stage.all
  # end

  # field :stage, Types::StageType, null: true do
  #   description 'Find a stage by ID'
  #   argument :id, ID, required: true
  # end

  # def stage(id:)
  #   Stage.find_by(id: id)
  # end
end
