require 'rails_helper'

RSpec.describe Url, :type => :model do
  context 'validations' do
    it { is_expected.to validate_presence_of :long_url }

    #describe '#long_url' do
    #  it 'is invalid when long_url is blank' do
    #    url = Url.new(long_url: nil)

#   #     expect(url.valid?).to be false

    #    # the part after the _ is taken, and the model
    #    # is checked for the valid? method
#   #     expect(url).not_to be_valid
    #    url.valid?
    #    expect(url.errors[:long_url]).to be_present
    #  end

    #  it 'is valid when long_url is not blank' do
    #    url = Url.new(long_url: 'http://google.com')
    #    expect(url).to be_valid
    #    expect(url.errors[:long_url]).to be_blank
    #  end
    #end
  end
end
