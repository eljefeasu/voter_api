require 'test_helper'

class VoterTest < ActiveSupport::TestCase

  test "voter class exists" do
    assert Voter
  end

  test "voter validations" do
    v = Voter.create!(name: "Jefferson Neel", party: "Likes to")
    assert_equal v, Voter.find(v.id)
    assert_raises do v = Voter.create!(name: "Jefferson Neel") end
  end
  
end
