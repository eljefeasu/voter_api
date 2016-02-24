class Voter < ActiveRecord::Base
  has_one :vote
  validates :name, presence: true
  validates :party, presence: true

  before_create :generate_token

  private def generate_token
    begin
      self.token = SecureRandom.hex
    end while self.class.exists?(token: self.token)
  end
end
