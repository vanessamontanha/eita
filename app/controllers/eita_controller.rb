class EitaController < ApplicationController
  before_action :set_eitum, only: [:show, :edit, :update, :destroy]

  # GET /eita
  # GET /eita.json
  def index
    @eita = Eitum.all
  end

  # GET /eita/1
  # GET /eita/1.json
  def show
  end

  # GET /eita/new
  def new
    @eitum = Eitum.new
  end

  # GET /eita/1/edit
  def edit
  end

  # POST /eita
  # POST /eita.json
  def create
    @eitum = Eitum.new(eitum_params)

    respond_to do |format|
      if @eitum.save
        format.html { redirect_to @eitum, notice: 'Eitum was successfully created.' }
        format.json { render :show, status: :created, location: @eitum }
      else
        format.html { render :new }
        format.json { render json: @eitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eita/1
  # PATCH/PUT /eita/1.json
  def update
    respond_to do |format|
      if @eitum.update(eitum_params)
        format.html { redirect_to @eitum, notice: 'Eitum was successfully updated.' }
        format.json { render :show, status: :ok, location: @eitum }
      else
        format.html { render :edit }
        format.json { render json: @eitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eita/1
  # DELETE /eita/1.json
  def destroy
    @eitum.destroy
    respond_to do |format|
      format.html { redirect_to eita_url, notice: 'Eitum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eitum
      @eitum = Eitum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def eitum_params
      params.require(:eitum).permit(:title, :description)
    end
end
