require 'test_helper'

class VoteTest < ActiveSupport::TestCase

  test "vote class exists" do
    assert Vote
  end

  test "vote must have candidate assigned" do
    v = Vote.create!(voter_id: 2, candidate_id: 1)
    assert_equal v, Vote.find(v.id)
    assert_raises do v = Vote.create!(voter_id: 1) end
  end

  test "vote must have voter assigned" do
    v = Vote.create!(voter_id: 2, candidate_id: 1)
    assert_equal v, Vote.find(v.id)
    assert_raises do v = Vote.create!(candidate_id: 1) end
  end

end
