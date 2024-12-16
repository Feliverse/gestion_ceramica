class InventoryEntryDetailsController < ApplicationController
  before_action :set_inventory_entry_detail, only: %i[ show edit update destroy ]

  # GET /inventory_entry_details or /inventory_entry_details.json
  def index
    @inventory_entry_details = InventoryEntryDetail.all
  end

  # GET /inventory_entry_details/1 or /inventory_entry_details/1.json
  def show
  end

  # GET /inventory_entry_details/new
  def new
    @inventory_entry_detail = InventoryEntryDetail.new
  end

  # GET /inventory_entry_details/1/edit
  def edit
  end

  # POST /inventory_entry_details or /inventory_entry_details.json
  def create
    @inventory_entry_detail = InventoryEntryDetail.new(inventory_entry_detail_params)

    respond_to do |format|
      if @inventory_entry_detail.save
        format.html { redirect_to @inventory_entry_detail, notice: "Inventory entry detail was successfully created." }
        format.json { render :show, status: :created, location: @inventory_entry_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inventory_entry_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory_entry_details/1 or /inventory_entry_details/1.json
  def update
    respond_to do |format|
      if @inventory_entry_detail.update(inventory_entry_detail_params)
        format.html { redirect_to @inventory_entry_detail, notice: "Inventory entry detail was successfully updated." }
        format.json { render :show, status: :ok, location: @inventory_entry_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inventory_entry_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_entry_details/1 or /inventory_entry_details/1.json
  def destroy
    @inventory_entry_detail.destroy

    respond_to do |format|
      format.html { redirect_to inventory_entry_details_path, status: :see_other, notice: "Inventory entry detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_entry_detail
      @inventory_entry_detail = InventoryEntryDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventory_entry_detail_params
      params.require(:inventory_entry_detail).permit(:inventory_entry_id, :product_id, :quantity, :subtotal)
    end
end
