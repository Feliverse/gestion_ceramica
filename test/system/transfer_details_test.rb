require "application_system_test_case"

class TransferDetailsTest < ApplicationSystemTestCase
  setup do
    @transfer_detail = transfer_details(:one)
  end

  test "visiting the index" do
    visit transfer_details_url
    assert_selector "h1", text: "Transfer details"
  end

  test "should create transfer detail" do
    visit transfer_details_url
    click_on "New transfer detail"

    fill_in "Product", with: @transfer_detail.product_id
    fill_in "Quantity", with: @transfer_detail.quantity
    fill_in "Subtotal", with: @transfer_detail.subtotal
    fill_in "Transfer", with: @transfer_detail.transfer_id
    click_on "Create Transfer detail"

    assert_text "Transfer detail was successfully created"
    click_on "Back"
  end

  test "should update Transfer detail" do
    visit transfer_detail_url(@transfer_detail)
    click_on "Edit this transfer detail", match: :first

    fill_in "Product", with: @transfer_detail.product_id
    fill_in "Quantity", with: @transfer_detail.quantity
    fill_in "Subtotal", with: @transfer_detail.subtotal
    fill_in "Transfer", with: @transfer_detail.transfer_id
    click_on "Update Transfer detail"

    assert_text "Transfer detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Transfer detail" do
    visit transfer_detail_url(@transfer_detail)
    click_on "Destroy this transfer detail", match: :first

    assert_text "Transfer detail was successfully destroyed"
  end
end
