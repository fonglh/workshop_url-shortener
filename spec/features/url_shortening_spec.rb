require 'feature_helper'

feature 'user can shorten url' do
  let(:url) { 'http://www.yahoo.com' }

  # scenarios are executed independently of one another
  # they are like it blocks
  scenario 'on the home page' do
    visit root_path

    # fill in the text input
    fill_in 'Long url', :with => :url
    
    # Click submit button
    click_button 'Shorten'

    # Check that the page has a shortened URL
    within '#urls' do
      expect(page).to have_content /[a-zA-Z0-9]{6,}/
    end

  end
end
