FactoryBot.define do
  factory :user do
    name { Faker::Name.name  }
    email { Faker::Internet.email }
    admin { false }
    moderator { false }
    password { 'p4s$w0rD' }

    trait :admin do
      admin { true }
    end

    trait :moderator do
      moderator { true }
    end
  end
end
