FactoryBot.define do
  factory :response do
    message { 'string' }
    status { 'string' }
    user_moderator { create(:user).id }
    message_for { 1 }

    association :user
  end
end
