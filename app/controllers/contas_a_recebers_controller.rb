class ContasARecebersController < ApplicationController
  before_action :set_contas_a_receber, only: [:show, :edit, :update, :destroy]

  # GET /contas_a_recebers
  # GET /contas_a_recebers.json
  def index
    @contas_a_recebers = ContasAReceber.all
  end

  # GET /contas_a_recebers/1
  # GET /contas_a_recebers/1.json
  def show
  end

  # GET /contas_a_recebers/new
  def new
    @contas_a_receber = ContasAReceber.new
  end

  # GET /contas_a_recebers/1/edit
  def edit
  end

  # POST /contas_a_recebers
  # POST /contas_a_recebers.json
  def create
    @contas_a_receber = ContasAReceber.new(contas_a_receber_params)

    respond_to do |format|
      if @contas_a_receber.save
        format.html { redirect_to @contas_a_receber, notice: 'Contas a receber was successfully created.' }
        format.json { render :show, status: :created, location: @contas_a_receber }
      else
        format.html { render :new }
        format.json { render json: @contas_a_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contas_a_recebers/1
  # PATCH/PUT /contas_a_recebers/1.json
  def update
    respond_to do |format|
      if @contas_a_receber.update(contas_a_receber_params)
        format.html { redirect_to @contas_a_receber, notice: 'Contas a receber was successfully updated.' }
        format.json { render :show, status: :ok, location: @contas_a_receber }
      else
        format.html { render :edit }
        format.json { render json: @contas_a_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contas_a_recebers/1
  # DELETE /contas_a_recebers/1.json
  def destroy
    @contas_a_receber.destroy
    respond_to do |format|
      format.html { redirect_to contas_a_recebers_url, notice: 'Contas a receber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contas_a_receber
      @contas_a_receber = ContasAReceber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contas_a_receber_params
      params.require(:contas_a_receber).permit(:data_lancamento, :descricao, :valor)
    end
end
