require 'rails_helper'

RSpec.describe ReviewsHelper, type: :helper do
  let(:user) { create(:user) }
  let(:review) { create(:review, user_id: user) }
  let(:new_data) { (0..5).to_a.sample }

  # describe '#hello_world' do
  #   subject { helper.hello_world(new_data) }

  #   before { allow(controller).to receive(:current_user).and_return(user) }

  #   it 'updates review to new data' do
  #     expect(subject).to eq(true)
  #   end
  # end
end
