FactoryBot.define do
  factory :products do
    sequence :name do |n|
      "Test Product #{n}"
    end

    sequence :description do |n|
      "Test product description #{n}"
    end
  end
end
