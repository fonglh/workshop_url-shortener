require 'rails_helper'

describe UrlsController do
  describe '#create' do

    def do_request
      post :create, url: { long_url: url }
    end

    context 'success' do
      let(:url) { 'http://google.com' }

      it 'creates a record in the database' do
        expect { do_request }.to change(Url, :count).by(1)
      end

      it 'redirects to home' do
        do_request
        expect(response).to redirect_to root_path
      end

      it 'assigns @url' do
        do_request
        # assigns(:url) gets the instance variable
        expect(assigns(:url).long_url).to eq url
      end
    end

    context 'failure' do
      let(:url) { nil }

      it 'does not create a record in database' do
        expect { do_request }.not_to change(Url, :count)
      end

      it 'redirects to home' do
        do_request

        expect(flash[:alert]).to eq 'Cannot create lah!'
        expect(response).to redirect_to root_path
      end

    end
  end
end
