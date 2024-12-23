require "test_helper"

class NetworkTest < ActiveSupport::TestCase
  def setup
    @network = FactoryBot.build(:network)
  end
  test "valid with valid data" do
    assert @network.valid?
  end

  test "invalid with without name" do
    @network.name = nil

    assert_not @network.valid?
    assert_not_empty @network.errors[:name]
  end

  test "invalid with without ip" do
    @network.ip = nil

    assert_not @network.valid?
    assert_not_empty @network.errors[:ip]
  end
end
