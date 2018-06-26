require 'rails_helper'

describe GraphqlController, type: :api do
  let(:context_path) { '/graphql' }

  let!(:supply_chain) { FactoryBot.create(:supply_chain) }

  let!(:stage) { FactoryBot.create(:stage, supply_chain: supply_chain) }

  let!(:product) do
    FactoryBot.create(
      :product,
      supply_chain: supply_chain,
      stage: stage
    )
  end

  describe 'Find Products by stage ID' do
    let(:query) do
      {
        query: '{
          findProducts(stageID: ){
            name,
            description
          }
        }'
      }
    end

    let(:expected_response) do
      {
        name: 'Test Product',
        description: 'Test product description'
      }.to_json
    end

    it 'returns a status 201 response' do
      post context_path
      expect(response).to have_http_status(201)
      expect(response.body).to be_json_eql(:expected_response)
    end
  end

  describe 'Find Products by stage supply chain ID' do
    let(:query) do
      {
        query: "{
          findProducts(supplyChainID: #{supply_chain.id}){
            name,
            description
          }
        }"
      }
    end

    let(:expected_response) do
      {
        name: 'Test Product',
        description: 'Test product description'
      }.to_json
    end

    it 'returns a status 201 response' do
      post context_path
      expect(response).to have_http_status(201)
      expect(response.body).to be_json_eql(:expected_response)
    end
  end
end
