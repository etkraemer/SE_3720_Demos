# == Schema Information
#
# Table name: tracks
#
#  id                :bigint           not null, primary key
#  length_in_seconds :integer
#  title             :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

class TrackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
