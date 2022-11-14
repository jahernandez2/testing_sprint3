require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  let(:user) { create(:user) }
  let(:pivots_list) { create_list(:pivot, 5, moderador_id: user.id) }
  let(:message) { create(:message) }

  describe 'GET #index' do
    before do
      sign_in user
      pivots_list
      get :index
    end

    it 'returns http success' do
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #show' do
    before do
      sign_in user
      get :show, params: { id: message.id }
    end

    it 'returns http success' do
      expect(response.status).to eq(200)
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

  describe 'GET #edit' do
    before do
      sign_in user
      get :edit, params: { id: message.id }
    end

    it 'returns http success' do
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #create' do
    before do
      sign_in user
      pivots_list
      post :create, params: { message: message.attributes }
    end

    it 'redirects to another page' do
      expect(response.status).to eq(302)
    end
  end
end
