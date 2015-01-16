FactoryGirl.define do
  factory :url do
    # very static method, always the same
    #long_url { 'http://google.com' }

    # one possible way to generate some sequential numbers
    # sequence(:long_url) { |n| "http://google#{n}.com" }

    # using Faker gem
    long_url { Faker::Internet.url }
  end
end
