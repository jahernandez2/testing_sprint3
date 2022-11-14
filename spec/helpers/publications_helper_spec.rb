require 'rails_helper'

RSpec.describe PublicationsHelper, type: :helper do
  let(:publication) { create(:publication) }
  let(:reviews) { create_list(:review, 5, publication_id: publication.id) }

  describe '#promedio' do
    let(:reviews_array) { reviews.pluck(:review) }
    let(:sumatoria) { reviews_array.sum }
    let(:count) { reviews_array.count }

    subject { helper.promedio(publication.id) }

    before { @expected = sumatoria / count }

    it 'averages numbers' do
      expect(subject).to eq(@expected)
    end
  end
end
