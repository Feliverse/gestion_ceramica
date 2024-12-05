require "application_system_test_case"

class OrdenComprasTest < ApplicationSystemTestCase
  setup do
    @orden_compra = orden_compras(:one)
  end

  test "visiting the index" do
    visit orden_compras_url
    assert_selector "h1", text: "Orden compras"
  end

  test "should create orden compra" do
    visit orden_compras_url
    click_on "New orden compra"

    fill_in "Estado", with: @orden_compra.estado
    fill_in "Fecha", with: @orden_compra.fecha
    fill_in "Proveedor", with: @orden_compra.proveedor_id
    fill_in "Total", with: @orden_compra.total
    click_on "Create Orden compra"

    assert_text "Orden compra was successfully created"
    click_on "Back"
  end

  test "should update Orden compra" do
    visit orden_compra_url(@orden_compra)
    click_on "Edit this orden compra", match: :first

    fill_in "Estado", with: @orden_compra.estado
    fill_in "Fecha", with: @orden_compra.fecha
    fill_in "Proveedor", with: @orden_compra.proveedor_id
    fill_in "Total", with: @orden_compra.total
    click_on "Update Orden compra"

    assert_text "Orden compra was successfully updated"
    click_on "Back"
  end

  test "should destroy Orden compra" do
    visit orden_compra_url(@orden_compra)
    click_on "Destroy this orden compra", match: :first

    assert_text "Orden compra was successfully destroyed"
  end
end
