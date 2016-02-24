require 'test_helper'

class CandidateTest < ActiveSupport::TestCase

  test "candidate class exists" do
    assert Candidate
  end

  test "candidate validations" do
    c = Candidate.create!(name: "Donald Trump", hometown: "New York City", district: "United States",
                          party: "Republican")
    assert_equal c, Candidate.find(c.id)
    assert_raises do c = Candidate.create!(name: "Jefferson Neel") end
  end

end
