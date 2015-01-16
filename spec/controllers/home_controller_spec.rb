require 'rails_helper'

describe HomeController do
  describe '#index' do
    let(:url_1) { double(:url, created_at: 5.days.ago) }    
    let(:url_2) { double(:url, created_at: 2.days.ago) }
    let(:db_urls) { [url_1, url_2] }

    it 'retrieves URLs in reverse order' do
      # this is actually setup code
      # Url.all now returns db_urls
      # usual case for this, without {db_urls}
      # is to check that the method was called at least once
      expect(Url).to receive(:all) { db_urls }

      # want to test the index method of HomeController
      # this must be after the expect or it can't listen
      # out for the call to Url.all
      get :index

      expect(assigns(:urls)).to eq db_urls.reverse

    end

  end
end
