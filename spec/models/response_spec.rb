require 'rails_helper'
RSpec.describe Response, type: :model do
  let(:response) { create(:response) }

  it 'user id should be present' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end
