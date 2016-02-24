class Candidate < ActiveRecord::Base
  has_many :votes
  validates :name, presence: true
  validates :hometown, presence: true
  validates :district, presence: true
  validates :party, presence: true
  validates :name, uniqueness: true

  def as_json(options)
    {name: name,
     hometown: hometown,
     district: district,
     party: party,
     votes: votes.length}
  end
end
