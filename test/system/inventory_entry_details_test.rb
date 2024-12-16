require "application_system_test_case"

class InventoryEntryDetailsTest < ApplicationSystemTestCase
  setup do
    @inventory_entry_detail = inventory_entry_details(:one)
  end

  test "visiting the index" do
    visit inventory_entry_details_url
    assert_selector "h1", text: "Inventory entry details"
  end

  test "should create inventory entry detail" do
    visit inventory_entry_details_url
    click_on "New inventory entry detail"

    fill_in "Inventory entry", with: @inventory_entry_detail.inventory_entry_id
    fill_in "Product", with: @inventory_entry_detail.product_id
    fill_in "Quantity", with: @inventory_entry_detail.quantity
    fill_in "Subtotal", with: @inventory_entry_detail.subtotal
    click_on "Create Inventory entry detail"

    assert_text "Inventory entry detail was successfully created"
    click_on "Back"
  end

  test "should update Inventory entry detail" do
    visit inventory_entry_detail_url(@inventory_entry_detail)
    click_on "Edit this inventory entry detail", match: :first

    fill_in "Inventory entry", with: @inventory_entry_detail.inventory_entry_id
    fill_in "Product", with: @inventory_entry_detail.product_id
    fill_in "Quantity", with: @inventory_entry_detail.quantity
    fill_in "Subtotal", with: @inventory_entry_detail.subtotal
    click_on "Update Inventory entry detail"

    assert_text "Inventory entry detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Inventory entry detail" do
    visit inventory_entry_detail_url(@inventory_entry_detail)
    click_on "Destroy this inventory entry detail", match: :first

    assert_text "Inventory entry detail was successfully destroyed"
  end
end
