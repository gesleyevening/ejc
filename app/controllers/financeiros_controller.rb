class FinanceirosController < ApplicationController
  before_action :set_financeiro, only: [:show, :edit, :update, :destroy]

  # GET /financeiros
  # GET /financeiros.json
  def index
    @financeiros = Financeiro.all
  end

  # GET /financeiros/1
  # GET /financeiros/1.json
  def show
  end

  # GET /financeiros/new
  def new
    @financeiro = Financeiro.new
  end

  # GET /financeiros/1/edit
  def edit
  end

  # POST /financeiros
  # POST /financeiros.json
  def create
    @financeiro = Financeiro.new(financeiro_params)

    respond_to do |format|
      if @financeiro.save
        format.html { redirect_to @financeiro, notice: 'Financeiro was successfully created.' }
        format.json { render :show, status: :created, location: @financeiro }
      else
        format.html { render :new }
        format.json { render json: @financeiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financeiros/1
  # PATCH/PUT /financeiros/1.json
  def update
    respond_to do |format|
      if @financeiro.update(financeiro_params)
        format.html { redirect_to @financeiro, notice: 'Financeiro was successfully updated.' }
        format.json { render :show, status: :ok, location: @financeiro }
      else
        format.html { render :edit }
        format.json { render json: @financeiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financeiros/1
  # DELETE /financeiros/1.json
  def destroy
    @financeiro.destroy
    respond_to do |format|
      format.html { redirect_to financeiros_url, notice: 'Financeiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financeiro
      @financeiro = Financeiro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financeiro_params
      params.require(:financeiro).permit(:dta_lancamento, :descricao, :valor, :tipo_financeiro_id)
    end
end
