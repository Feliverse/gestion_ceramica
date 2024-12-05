require "application_system_test_case"

class InventariosTest < ApplicationSystemTestCase
  setup do
    @inventario = inventarios(:one)
  end

  test "visiting the index" do
    visit inventarios_url
    assert_selector "h1", text: "Inventarios"
  end

  test "should create inventario" do
    visit inventarios_url
    click_on "New inventario"

    fill_in "Area total m2", with: @inventario.area_total_m2
    fill_in "Cajas completas", with: @inventario.cajas_completas
    fill_in "Piezas sueltas", with: @inventario.piezas_sueltas
    fill_in "Producto", with: @inventario.producto_id
    click_on "Create Inventario"

    assert_text "Inventario was successfully created"
    click_on "Back"
  end

  test "should update Inventario" do
    visit inventario_url(@inventario)
    click_on "Edit this inventario", match: :first

    fill_in "Area total m2", with: @inventario.area_total_m2
    fill_in "Cajas completas", with: @inventario.cajas_completas
    fill_in "Piezas sueltas", with: @inventario.piezas_sueltas
    fill_in "Producto", with: @inventario.producto_id
    click_on "Update Inventario"

    assert_text "Inventario was successfully updated"
    click_on "Back"
  end

  test "should destroy Inventario" do
    visit inventario_url(@inventario)
    click_on "Destroy this inventario", match: :first

    assert_text "Inventario was successfully destroyed"
  end
end
