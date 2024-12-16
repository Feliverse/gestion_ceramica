class InventoryEntriesController < ApplicationController
  before_action :set_inventory_entry, only: %i[ show edit update destroy ]

  # GET /inventory_entries or /inventory_entries.json
  def index
    @inventory_entries = InventoryEntry.all
  end

  # GET /inventory_entries/1 or /inventory_entries/1.json
  def show
  end

  # GET /inventory_entries/new
  def new
    @inventory_entry = InventoryEntry.new
  end

  # GET /inventory_entries/1/edit
  def edit
  end

  # POST /inventory_entries or /inventory_entries.json
  def create
    @inventory_entry = InventoryEntry.new(inventory_entry_params)

    respond_to do |format|
      if @inventory_entry.save
        format.html { redirect_to @inventory_entry, notice: "Inventory entry was successfully created." }
        format.json { render :show, status: :created, location: @inventory_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inventory_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory_entries/1 or /inventory_entries/1.json
  def update
    respond_to do |format|
      if @inventory_entry.update(inventory_entry_params)
        format.html { redirect_to @inventory_entry, notice: "Inventory entry was successfully updated." }
        format.json { render :show, status: :ok, location: @inventory_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inventory_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_entries/1 or /inventory_entries/1.json
  def destroy
    @inventory_entry.destroy

    respond_to do |format|
      format.html { redirect_to inventory_entries_path, status: :see_other, notice: "Inventory entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_entry
      @inventory_entry = InventoryEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventory_entry_params
      params.require(:inventory_entry).permit(:warehouse_id, :date, :total)
    end
end
