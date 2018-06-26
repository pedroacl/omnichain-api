module Resolvers
  class FindStages < Resolvers::BaseResolver
    description 'Find stages'

    argument :supplyChainID, ID, required: false

    def resolve(stage_id: nil)
      stages = Stage.all
      stages = stages.where(stage_id: stage_id) if stage_id.present?

      stages
    end
  end
end
