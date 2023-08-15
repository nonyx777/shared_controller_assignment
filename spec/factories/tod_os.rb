FactoryBot.define do
  factory :tod_o do
    task { Faker::Name.name }
    isComplete { true } 
  end
end
