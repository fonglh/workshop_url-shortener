class Url < ActiveRecord::Base
  validates :long_url, presence: true
  before_create :generate_short_url

  def generate_short_url
    self.short_url = (Digest::SHA1.hexdigest self.long_url)[0..5]
  end
end
