class NiveausController < ApplicationController
  before_action :set_niveau, only: %i[ show edit update destroy ]

  # GET /niveaus or /niveaus.json
  def index
    @niveaus = Niveau.order(:id)
  end

  # GET /niveaus/1 or /niveaus/1.json
  def show
  end

  # GET /niveaus/new
  def new
    @niveau = Niveau.new
    
  end

  # GET /niveaus/1/edit
  def edit
  end

  # POST /niveaus or /niveaus.json
  def create
    @niveau = Niveau.new(niveau_params)

    respond_to do |format|
      if @niveau.save
        format.html { redirect_to niveau_url(@niveau), notice: "Niveau was successfully created." }
        format.json { render :show, status: :created, location: @niveau }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @niveau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /niveaus/1 or /niveaus/1.json
  def update
    respond_to do |format|
      if @niveau.update(niveau_params)
        format.html { redirect_to niveau_url(@niveau), notice: "Niveau was successfully updated." }
        format.json { render :show, status: :ok, location: @niveau }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @niveau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /niveaus/1 or /niveaus/1.json
  def destroy
    @niveau.destroy

    respond_to do |format|
      format.html { redirect_to niveaus_url, notice: "Niveau was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_niveau
      @niveau = Niveau.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def niveau_params
      params.require(:niveau).permit(:nom)
    end
end
