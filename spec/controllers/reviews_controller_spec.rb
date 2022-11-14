require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  let(:user) { create(:user) }
  let(:review) { create(:review, user_id: user.id) }
  let(:publication) { create(:publication) }

  describe 'GET #new' do
    before do
      sign_in user
      get :new, params: { publication_id: publication.id }
    end

    it 'returns http success' do
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #create' do
    before do
      sign_in user
      post :create, params: { review: review.attributes, publication_id: publication.id }
    end

    it 'redirects to another page' do
      expect(response.status).to eq(302)
    end
  end
end
