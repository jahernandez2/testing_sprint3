FactoryBot.define do
  factory :publication do
    club_name { 'string' }
    club_address { 'string' }
    sport_name { 'string' }
    imageurl { 'url' }

    association :user
  end
end
