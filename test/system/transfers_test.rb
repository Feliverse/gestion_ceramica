require "application_system_test_case"

class TransfersTest < ApplicationSystemTestCase
  setup do
    @transfer = transfers(:one)
  end

  test "visiting the index" do
    visit transfers_url
    assert_selector "h1", text: "Transfers"
  end

  test "should create transfer" do
    visit transfers_url
    click_on "New transfer"

    fill_in "Date", with: @transfer.date
    fill_in "Destination warehouse", with: @transfer.destination_warehouse_id
    fill_in "Origin warehouse", with: @transfer.origin_warehouse_id
    fill_in "Total", with: @transfer.total
    click_on "Create Transfer"

    assert_text "Transfer was successfully created"
    click_on "Back"
  end

  test "should update Transfer" do
    visit transfer_url(@transfer)
    click_on "Edit this transfer", match: :first

    fill_in "Date", with: @transfer.date
    fill_in "Destination warehouse", with: @transfer.destination_warehouse_id
    fill_in "Origin warehouse", with: @transfer.origin_warehouse_id
    fill_in "Total", with: @transfer.total
    click_on "Update Transfer"

    assert_text "Transfer was successfully updated"
    click_on "Back"
  end

  test "should destroy Transfer" do
    visit transfer_url(@transfer)
    click_on "Destroy this transfer", match: :first

    assert_text "Transfer was successfully destroyed"
  end
end
