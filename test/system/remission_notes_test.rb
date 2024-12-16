require "application_system_test_case"

class RemissionNotesTest < ApplicationSystemTestCase
  setup do
    @remission_note = remission_notes(:one)
  end

  test "visiting the index" do
    visit remission_notes_url
    assert_selector "h1", text: "Remission notes"
  end

  test "should create remission note" do
    visit remission_notes_url
    click_on "New remission note"

    fill_in "Client", with: @remission_note.client_id
    fill_in "Client phone", with: @remission_note.client_phone
    fill_in "Date", with: @remission_note.date
    fill_in "Delivery address", with: @remission_note.delivery_address
    fill_in "Driver", with: @remission_note.driver
    fill_in "Sale", with: @remission_note.sale_id
    fill_in "Total weight", with: @remission_note.total_weight
    fill_in "Warehouse", with: @remission_note.warehouse_id
    fill_in "Warehouse manager", with: @remission_note.warehouse_manager
    click_on "Create Remission note"

    assert_text "Remission note was successfully created"
    click_on "Back"
  end

  test "should update Remission note" do
    visit remission_note_url(@remission_note)
    click_on "Edit this remission note", match: :first

    fill_in "Client", with: @remission_note.client_id
    fill_in "Client phone", with: @remission_note.client_phone
    fill_in "Date", with: @remission_note.date
    fill_in "Delivery address", with: @remission_note.delivery_address
    fill_in "Driver", with: @remission_note.driver
    fill_in "Sale", with: @remission_note.sale_id
    fill_in "Total weight", with: @remission_note.total_weight
    fill_in "Warehouse", with: @remission_note.warehouse_id
    fill_in "Warehouse manager", with: @remission_note.warehouse_manager
    click_on "Update Remission note"

    assert_text "Remission note was successfully updated"
    click_on "Back"
  end

  test "should destroy Remission note" do
    visit remission_note_url(@remission_note)
    click_on "Destroy this remission note", match: :first

    assert_text "Remission note was successfully destroyed"
  end
end
