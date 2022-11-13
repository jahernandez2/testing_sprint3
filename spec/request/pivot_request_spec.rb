require 'rails_helper'

class PivotControllerTest < ActiveSupport::TestCase
  RSpec.describe Pivot, type: :request do
    describe 'index' do
      it 'should return a successful response' do
        get '/pivots'
        expect(response).to have_http_status(302)
      end
    end
    describe 'new' do
      it 'should return a successful response' do
        get '/pivots/new'
        expect(response).to have_http_status(302)
      end
    end
    describe 'show' do
      it 'should return a successful response' do
        get '/pivots/show'
        expect(response).to have_http_status(302)
      end
    end
    describe 'edit' do
      it 'should return a successful response' do
        get '/pivots/edit'
        expect(response).to have_http_status(302)
      end
    end
  end
end
