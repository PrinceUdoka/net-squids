require "test_helper"

class NetworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @network = FactoryBot.create(:network)
  end

  test "should get index" do
    get networks_url
    assert_response :success
  end

  test "should get new" do
    get new_network_url
    assert_response :success
  end

  test "should create network" do
    @network_attributes = FactoryBot.attributes_for(:network)

    assert_difference("Network.count") do
      post networks_url, params: { network: @network_attributes }
    end

    assert_redirected_to network_url(Network.last)
  end

  test "should show network" do
    get network_url(@network)
    assert_response :success
  end

  test "should get edit" do
    get edit_network_url(@network)
    assert_response :success
  end

  test "should update network" do
    patch network_url(@network), params: { network: { ip: @network.ip, name: @network.name } }
    assert_redirected_to network_url(@network)
  end

  test "should destroy network" do
    assert_difference("Network.count", -1) do
      delete network_url(@network)
    end

    assert_redirected_to networks_url
  end
end
