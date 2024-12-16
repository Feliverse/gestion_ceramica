require "application_system_test_case"

class QuotationDetailsTest < ApplicationSystemTestCase
  setup do
    @quotation_detail = quotation_details(:one)
  end

  test "visiting the index" do
    visit quotation_details_url
    assert_selector "h1", text: "Quotation details"
  end

  test "should create quotation detail" do
    visit quotation_details_url
    click_on "New quotation detail"

    fill_in "Product", with: @quotation_detail.product_id
    fill_in "Quantity", with: @quotation_detail.quantity
    fill_in "Quotation", with: @quotation_detail.quotation_id
    fill_in "Subtotal", with: @quotation_detail.subtotal
    fill_in "Unit price", with: @quotation_detail.unit_price
    click_on "Create Quotation detail"

    assert_text "Quotation detail was successfully created"
    click_on "Back"
  end

  test "should update Quotation detail" do
    visit quotation_detail_url(@quotation_detail)
    click_on "Edit this quotation detail", match: :first

    fill_in "Product", with: @quotation_detail.product_id
    fill_in "Quantity", with: @quotation_detail.quantity
    fill_in "Quotation", with: @quotation_detail.quotation_id
    fill_in "Subtotal", with: @quotation_detail.subtotal
    fill_in "Unit price", with: @quotation_detail.unit_price
    click_on "Update Quotation detail"

    assert_text "Quotation detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Quotation detail" do
    visit quotation_detail_url(@quotation_detail)
    click_on "Destroy this quotation detail", match: :first

    assert_text "Quotation detail was successfully destroyed"
  end
end
