FactoryBot.define do
  factory :pivot do
    club_name { 'string' }
    sport_name { 'string' }
    club_address { 'string' }
    status { 'pending' }
    date_time { Time.current }
    moderador_id { create(:user, :moderator).id }

    association :user
    association :publication
  end
end
