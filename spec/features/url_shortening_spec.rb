require 'feature_helper'

feature 'user can shorten url', js: true do
  scenario 'on the home page' do
    visit root_path
  end
end
