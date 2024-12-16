class RemissionNotesController < ApplicationController
  before_action :set_remission_note, only: %i[ show edit update destroy ]

  # GET /remission_notes or /remission_notes.json
  def index
    @remission_notes = RemissionNote.all
  end

  # GET /remission_notes/1 or /remission_notes/1.json
  def show
  end

  # GET /remission_notes/new
  def new
    @remission_note = RemissionNote.new
  end

  # GET /remission_notes/1/edit
  def edit
  end

  # POST /remission_notes or /remission_notes.json
  def create
    @remission_note = RemissionNote.new(remission_note_params)

    respond_to do |format|
      if @remission_note.save
        format.html { redirect_to @remission_note, notice: "Remission note was successfully created." }
        format.json { render :show, status: :created, location: @remission_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @remission_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remission_notes/1 or /remission_notes/1.json
  def update
    respond_to do |format|
      if @remission_note.update(remission_note_params)
        format.html { redirect_to @remission_note, notice: "Remission note was successfully updated." }
        format.json { render :show, status: :ok, location: @remission_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @remission_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remission_notes/1 or /remission_notes/1.json
  def destroy
    @remission_note.destroy

    respond_to do |format|
      format.html { redirect_to remission_notes_path, status: :see_other, notice: "Remission note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remission_note
      @remission_note = RemissionNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def remission_note_params
      params.require(:remission_note).permit(:sale_id, :warehouse_id, :date, :client_id, :client_phone, :delivery_address, :warehouse_manager, :driver, :total_weight)
    end
end
