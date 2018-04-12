class TipoFinanceirosController < ApplicationController
  before_action :set_tipo_financeiro, only: [:show, :edit, :update, :destroy]

  # GET /tipo_financeiros
  # GET /tipo_financeiros.json
  def index
    @tipo_financeiros = TipoFinanceiro.all
  end

  # GET /tipo_financeiros/1
  # GET /tipo_financeiros/1.json
  def show
  end

  # GET /tipo_financeiros/new
  def new
    @tipo_financeiro = TipoFinanceiro.new
  end

  # GET /tipo_financeiros/1/edit
  def edit
  end

  # POST /tipo_financeiros
  # POST /tipo_financeiros.json
  def create
    @tipo_financeiro = TipoFinanceiro.new(tipo_financeiro_params)

    respond_to do |format|
      if @tipo_financeiro.save
        format.html { redirect_to @tipo_financeiro, notice: 'Tipo financeiro was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_financeiro }
      else
        format.html { render :new }
        format.json { render json: @tipo_financeiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_financeiros/1
  # PATCH/PUT /tipo_financeiros/1.json
  def update
    respond_to do |format|
      if @tipo_financeiro.update(tipo_financeiro_params)
        format.html { redirect_to @tipo_financeiro, notice: 'Tipo financeiro was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_financeiro }
      else
        format.html { render :edit }
        format.json { render json: @tipo_financeiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_financeiros/1
  # DELETE /tipo_financeiros/1.json
  def destroy
    @tipo_financeiro.destroy
    respond_to do |format|
      format.html { redirect_to tipo_financeiros_url, notice: 'Tipo financeiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_financeiro
      @tipo_financeiro = TipoFinanceiro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_financeiro_params
      params.require(:tipo_financeiro).permit(:des_tipo_financeiro)
    end
end
