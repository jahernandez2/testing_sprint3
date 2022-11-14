FactoryBot.define do
  factory :review do
    review { (0..5).to_a.sample }

    association :user
    association :publication
  end
end
