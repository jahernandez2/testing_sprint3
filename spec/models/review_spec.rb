require 'rails_helper'

RSpec.describe Review, type: :model do
  subject do
    Review.new(publication_id: 1, review: 1, user_id: 1)
  end
  it 'publication_id should be present' do
    subject.publication_id = nil
    expect(subject).to_not be_valid
  end
  it 'review should be present' do
    subject.review = nil
    expect(subject).to_not be_valid
  end
  it 'user_id should be present' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
  it 'review should be smaller than 5' do
    subject.review = 6
    expect(subject).to_not be_valid
  end
end
