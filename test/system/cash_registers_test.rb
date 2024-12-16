require "application_system_test_case"

class CashRegistersTest < ApplicationSystemTestCase
  setup do
    @cash_register = cash_registers(:one)
  end

  test "visiting the index" do
    visit cash_registers_url
    assert_selector "h1", text: "Cash registers"
  end

  test "should create cash register" do
    visit cash_registers_url
    click_on "New cash register"

    fill_in "Date", with: @cash_register.date
    fill_in "Sale", with: @cash_register.sale_id
    fill_in "Total amount", with: @cash_register.total_amount
    click_on "Create Cash register"

    assert_text "Cash register was successfully created"
    click_on "Back"
  end

  test "should update Cash register" do
    visit cash_register_url(@cash_register)
    click_on "Edit this cash register", match: :first

    fill_in "Date", with: @cash_register.date
    fill_in "Sale", with: @cash_register.sale_id
    fill_in "Total amount", with: @cash_register.total_amount
    click_on "Update Cash register"

    assert_text "Cash register was successfully updated"
    click_on "Back"
  end

  test "should destroy Cash register" do
    visit cash_register_url(@cash_register)
    click_on "Destroy this cash register", match: :first

    assert_text "Cash register was successfully destroyed"
  end
end
