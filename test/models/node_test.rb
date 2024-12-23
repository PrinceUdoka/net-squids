require "test_helper"

class NodeTest < ActiveSupport::TestCase
  def setup
    @node = FactoryBot.build(:node)
  end
  test "valid with valid data" do
    assert @node.valid?
  end

  test "invalid with without name" do
    @node.name = nil

    assert_not @node.valid?
    assert_not_empty @node.errors[:name]
  end

  test "invalid with without ip" do
    @node.ip = nil

    assert_not @node.valid?
    assert_not_empty @node.errors[:ip]
  end

  test "invalid with without network" do
    @node.network = nil
    assert_not @node.valid?

    assert_not_empty @node.errors[:network]
  end
end
