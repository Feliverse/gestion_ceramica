require "test_helper"

class InventoryEntryDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_entry_detail = inventory_entry_details(:one)
  end

  test "should get index" do
    get inventory_entry_details_url
    assert_response :success
  end

  test "should get new" do
    get new_inventory_entry_detail_url
    assert_response :success
  end

  test "should create inventory_entry_detail" do
    assert_difference("InventoryEntryDetail.count") do
      post inventory_entry_details_url, params: { inventory_entry_detail: { inventory_entry_id: @inventory_entry_detail.inventory_entry_id, product_id: @inventory_entry_detail.product_id, quantity: @inventory_entry_detail.quantity, subtotal: @inventory_entry_detail.subtotal } }
    end

    assert_redirected_to inventory_entry_detail_url(InventoryEntryDetail.last)
  end

  test "should show inventory_entry_detail" do
    get inventory_entry_detail_url(@inventory_entry_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventory_entry_detail_url(@inventory_entry_detail)
    assert_response :success
  end

  test "should update inventory_entry_detail" do
    patch inventory_entry_detail_url(@inventory_entry_detail), params: { inventory_entry_detail: { inventory_entry_id: @inventory_entry_detail.inventory_entry_id, product_id: @inventory_entry_detail.product_id, quantity: @inventory_entry_detail.quantity, subtotal: @inventory_entry_detail.subtotal } }
    assert_redirected_to inventory_entry_detail_url(@inventory_entry_detail)
  end

  test "should destroy inventory_entry_detail" do
    assert_difference("InventoryEntryDetail.count", -1) do
      delete inventory_entry_detail_url(@inventory_entry_detail)
    end

    assert_redirected_to inventory_entry_details_url
  end
end
