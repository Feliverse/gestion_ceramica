require "test_helper"

class RemissionNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @remission_note = remission_notes(:one)
  end

  test "should get index" do
    get remission_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_remission_note_url
    assert_response :success
  end

  test "should create remission_note" do
    assert_difference("RemissionNote.count") do
      post remission_notes_url, params: { remission_note: { client_id: @remission_note.client_id, client_phone: @remission_note.client_phone, date: @remission_note.date, delivery_address: @remission_note.delivery_address, driver: @remission_note.driver, sale_id: @remission_note.sale_id, total_weight: @remission_note.total_weight, warehouse_id: @remission_note.warehouse_id, warehouse_manager: @remission_note.warehouse_manager } }
    end

    assert_redirected_to remission_note_url(RemissionNote.last)
  end

  test "should show remission_note" do
    get remission_note_url(@remission_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_remission_note_url(@remission_note)
    assert_response :success
  end

  test "should update remission_note" do
    patch remission_note_url(@remission_note), params: { remission_note: { client_id: @remission_note.client_id, client_phone: @remission_note.client_phone, date: @remission_note.date, delivery_address: @remission_note.delivery_address, driver: @remission_note.driver, sale_id: @remission_note.sale_id, total_weight: @remission_note.total_weight, warehouse_id: @remission_note.warehouse_id, warehouse_manager: @remission_note.warehouse_manager } }
    assert_redirected_to remission_note_url(@remission_note)
  end

  test "should destroy remission_note" do
    assert_difference("RemissionNote.count", -1) do
      delete remission_note_url(@remission_note)
    end

    assert_redirected_to remission_notes_url
  end
end
