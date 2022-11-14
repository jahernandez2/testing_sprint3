require 'rails_helper'

RSpec.describe PublicationsController, type: :controller do
  let(:user) { create(:user) }
  let(:publication) { create(:publication, user_id: user.id) }

  describe 'GET #index' do
    before do
      sign_in user
      get :index
    end

    it 'returns http success' do
      expect(response.status).to eq(200)
    end

    context 'with sport_name' do
      before do
        get :index, params: { sport_name: publication.sport_name }
      end

      it 'returns http success' do
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'GET #new' do
    before do
      sign_in user
      get :new
    end

    it 'returns http success' do
      expect(response.status).to eq(200)
    end
  end

  describe 'DELETE #destroy' do
    before do
      sign_in user
      delete :destroy, params: { id: publication.id }
    end

    it 'redirects to another page' do
      expect(response.status).to eq(302)
    end
  end

  describe 'POST #create' do
    before do
      sign_in user
      post :create, params: { publication: publication.attributes }
    end

    it 'redirects to another page' do
      expect(response.status).to eq(302)
    end
  end
end
