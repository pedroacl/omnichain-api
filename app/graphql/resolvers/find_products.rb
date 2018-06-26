module Resolvers
  class FindProducts < Resolvers::BaseResolver
    description 'Find products'

    argument :stageID, ID, required: false
    argument :companyID, ID, required: false
    argument :supplyChainID, ID, required: false

    def resolve(stage_id: nil, company_id: nil, supply_chain_id: nil)
      products = Product.all
      products = products.where(stage_id: stage_id) if stage_id.present?
      products = products.where(company_id: company_id) if company_id.present?
      products = products.where(supply_chain_id: supply_chain_id) if supply_chain_id.present?

      products
    end
  end
end
