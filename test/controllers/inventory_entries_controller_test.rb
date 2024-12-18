require "test_helper"

class InventoryEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_entry = inventory_entries(:one)
  end

  test "should get index" do
    get inventory_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_inventory_entry_url
    assert_response :success
  end

  test "should create inventory_entry" do
    assert_difference("InventoryEntry.count") do
      post inventory_entries_url, params: { inventory_entry: { date: @inventory_entry.date, total: @inventory_entry.total, warehouse_id: @inventory_entry.warehouse_id } }
    end

    assert_redirected_to inventory_entry_url(InventoryEntry.last)
  end

  test "should show inventory_entry" do
    get inventory_entry_url(@inventory_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventory_entry_url(@inventory_entry)
    assert_response :success
  end

  test "should update inventory_entry" do
    patch inventory_entry_url(@inventory_entry), params: { inventory_entry: { date: @inventory_entry.date, total: @inventory_entry.total, warehouse_id: @inventory_entry.warehouse_id } }
    assert_redirected_to inventory_entry_url(@inventory_entry)
  end

  test "should destroy inventory_entry" do
    assert_difference("InventoryEntry.count", -1) do
      delete inventory_entry_url(@inventory_entry)
    end

    assert_redirected_to inventory_entries_url
  end
end
