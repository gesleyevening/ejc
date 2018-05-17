class TiosController < ApplicationController
  before_action :set_tio, only: [:show, :edit, :update, :destroy]

  # GET /tios
  # GET /tios.json
  def index
    @tios = Tio.all
  end

  # GET /tios/1
  # GET /tios/1.json
  def show
  end

  # GET /tios/new
  def new
    @tio = Tio.new
  end

  # GET /tios/1/edit
  def edit
  end

  # POST /tios
  # POST /tios.json
  def create
    @tio = Tio.new(tio_params)

    respond_to do |format|
      if @tio.save
        format.html { redirect_to @tio, notice: 'Tio was successfully created.' }
        format.json { render :show, status: :created, location: @tio }
      else
        format.html { render :new }
        format.json { render json: @tio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tios/1
  # PATCH/PUT /tios/1.json
  def update
    respond_to do |format|
      if @tio.update(tio_params)
        format.html { redirect_to @tio, notice: 'Tio was successfully updated.' }
        format.json { render :show, status: :ok, location: @tio }
      else
        format.html { render :edit }
        format.json { render json: @tio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tios/1
  # DELETE /tios/1.json
  def destroy
    @tio.destroy
    respond_to do |format|
      format.html { redirect_to tios_url, notice: 'Tio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tio
      @tio = Tio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tio_params
      params.require(:tio).permit(:nome, :data_nascimento, :ano_inicio, :endereco, :telefone, :celular, :email, :observacao)
    end
end
