class Candidate < ActiveRecord::Base
  has_many :votes
  validates :name, presence: true
  validates :hometown, presence: true
  validates :district, prescence: true
  validates :party, prescence: true
end
