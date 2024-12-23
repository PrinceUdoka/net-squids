require "application_system_test_case"

class NetworksTest < ApplicationSystemTestCase
  setup do
    @network = FactoryBot.create(:network)
  end

  test "visiting the index" do
    visit networks_url
    assert_selector "h1", text: "Networks"
  end

  test "should create network" do
    visit networks_url
    click_on "New network"

    fill_in "Ip", with: @network.ip
    fill_in "Name", with: @network.name
    fill_in "Mask", with: @network.mask
    click_on "Create Network"

    assert_text "Network was successfully created"
    click_on "Back"
  end

  test "should update Network" do
    visit network_url(@network)
    click_on "Edit this network", match: :first

    fill_in "Ip", with: @network.ip
    fill_in "Name", with: @network.name
    fill_in "Mask", with: @network.mask
    click_on "Update Network"

    assert_text "Network was successfully updated"
    click_on "Back"
  end

  test "should destroy Network" do
    visit network_url(@network)
    click_on "Destroy this network", match: :first

    assert_text "Network was successfully destroyed"
  end
end
