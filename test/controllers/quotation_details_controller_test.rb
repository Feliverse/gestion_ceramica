require "test_helper"

class QuotationDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quotation_detail = quotation_details(:one)
  end

  test "should get index" do
    get quotation_details_url
    assert_response :success
  end

  test "should get new" do
    get new_quotation_detail_url
    assert_response :success
  end

  test "should create quotation_detail" do
    assert_difference("QuotationDetail.count") do
      post quotation_details_url, params: { quotation_detail: { product_id: @quotation_detail.product_id, quantity: @quotation_detail.quantity, quotation_id: @quotation_detail.quotation_id, subtotal: @quotation_detail.subtotal, unit_price: @quotation_detail.unit_price } }
    end

    assert_redirected_to quotation_detail_url(QuotationDetail.last)
  end

  test "should show quotation_detail" do
    get quotation_detail_url(@quotation_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_quotation_detail_url(@quotation_detail)
    assert_response :success
  end

  test "should update quotation_detail" do
    patch quotation_detail_url(@quotation_detail), params: { quotation_detail: { product_id: @quotation_detail.product_id, quantity: @quotation_detail.quantity, quotation_id: @quotation_detail.quotation_id, subtotal: @quotation_detail.subtotal, unit_price: @quotation_detail.unit_price } }
    assert_redirected_to quotation_detail_url(@quotation_detail)
  end

  test "should destroy quotation_detail" do
    assert_difference("QuotationDetail.count", -1) do
      delete quotation_detail_url(@quotation_detail)
    end

    assert_redirected_to quotation_details_url
  end
end
