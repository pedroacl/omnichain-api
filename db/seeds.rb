# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

supply_chain = SupplyChain.create(name: 'Test Chain')

stage = Stage.create(
  name: 'Test Stage',
  supply_chain_id: supply_chain.id
)

Product.create(
  name: 'Test Product',
  description: 'Test Product Description',
  supply_chain_id: supply_chain.id,
  stage_id: stage.id,
  address: '0x0'
)
