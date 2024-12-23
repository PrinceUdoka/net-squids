require "test_helper"

class ServiceTest < ActiveSupport::TestCase
  def setup
    @service = FactoryBot.build(:service)
  end
  test "valid with valid data" do
    assert @service.valid?
  end

  test "invalid with without name" do
    @service.name = nil

    assert_not @service.valid?
    assert_not_empty @service.errors[:name]
  end

  test "invalid with without ip" do
    @service.ip = nil

    assert_not @service.valid?
    assert_not_empty @service.errors[:ip]
  end

  test "invalid with without node" do
    @service.node = nil
    assert_not @service.valid?

    assert_not_empty @service.errors[:node]
  end
end
