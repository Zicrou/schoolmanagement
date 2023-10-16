class EtablissementsController < ApplicationController
  before_action :set_etablissement, only: %i[ show edit update destroy ]

  # GET /etablissements or /etablissements.json
  def index
    @etablissements = Etablissement.all
  end

  # GET /etablissements/1 or /etablissements/1.json
  def show
  end

  # GET /etablissements/new
  def new
    @etablissement = Etablissement.new
  end

  # GET /etablissements/1/edit
  def edit
  end

  # POST /etablissements or /etablissements.json
  def create
    @etablissement = Etablissement.new(etablissement_params)

    respond_to do |format|
      if @etablissement.save
        format.html { redirect_to etablissement_url(@etablissement), notice: "Etablissement was successfully created." }
        format.json { render :show, status: :created, location: @etablissement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @etablissement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etablissements/1 or /etablissements/1.json
  def update
    respond_to do |format|
      if @etablissement.update(etablissement_params)
        format.html { redirect_to etablissement_url(@etablissement), notice: "Etablissement was successfully updated." }
        format.json { render :show, status: :ok, location: @etablissement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @etablissement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etablissements/1 or /etablissements/1.json
  def destroy
    @etablissement.destroy

    respond_to do |format|
      format.html { redirect_to etablissements_url, notice: "Etablissement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etablissement
      @etablissement = Etablissement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etablissement_params
      params.require(:etablissement).permit(:name)
    end
end
