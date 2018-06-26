module Resolvers
  class FindSupplyChain < Resolvers::BaseResolver
    description 'Find supply chains'

    argument :stageID, required: false

    def resolve(stage_id: nil)
      supply_chains = SupplyChain.all
      supply_chains = supply_chains.joins(:stages) if supply_chain_id.present?

      supply_chains
    end
  end
end
