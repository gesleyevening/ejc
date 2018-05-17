class JovemsController < ApplicationController
  before_action :set_jovem, only: [:show, :edit, :update, :destroy]

  # GET /jovems
  # GET /jovems.json
  def index
    @jovems = Jovem.all
  end

  # GET /jovems/1
  # GET /jovems/1.json
  def show
  end

  # GET /jovems/new
  def new
    @jovem = Jovem.new
  end

  # GET /jovems/1/edit
  def edit
  end

  # POST /jovems
  # POST /jovems.json
  def create
    @jovem = Jovem.new(jovem_params)

    respond_to do |format|
      if @jovem.save
        format.html { redirect_to @jovem, notice: 'Jovem was successfully created.' }
        format.json { render :show, status: :created, location: @jovem }
      else
        format.html { render :new }
        format.json { render json: @jovem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jovems/1
  # PATCH/PUT /jovems/1.json
  def update
    respond_to do |format|
      if @jovem.update(jovem_params)
        format.html { redirect_to @jovem, notice: 'Jovem was successfully updated.' }
        format.json { render :show, status: :ok, location: @jovem }
      else
        format.html { render :edit }
        format.json { render json: @jovem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jovems/1
  # DELETE /jovems/1.json
  def destroy
    @jovem.destroy
    respond_to do |format|
      format.html { redirect_to jovems_url, notice: 'Jovem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jovem
      @jovem = Jovem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jovem_params
      params.require(:jovem).permit(:nome, :data_nascimento, :ano_inicio, :endereco, :telefone, :celular, :email, :observacao)
    end
end
