class ContasAPagarsController < ApplicationController
  before_action :set_contas_a_pagar, only: [:show, :edit, :update, :destroy]
  

  # GET /contas_a_pagars
  # GET /contas_a_pagars.json
  def index
    @contas_a_pagars = ContasAPagar.all
  end

  # GET /contas_a_pagars/1
  # GET /contas_a_pagars/1.json
  def show
  end

  # GET /contas_a_pagars/new
  def new
    @contas_a_pagar = ContasAPagar.new
  end

  # GET /contas_a_pagars/1/edit
  def edit
  end

  # POST /contas_a_pagars
  # POST /contas_a_pagars.json
  def create
    @contas_a_pagar = ContasAPagar.new(contas_a_pagar_params)

    respond_to do |format|
      if @contas_a_pagar.save
        format.html { redirect_to @contas_a_pagar, notice: 'Contas a pagar was successfully created.' }
        format.json { render :show, status: :created, location: @contas_a_pagar }
      else
        format.html { render :new }
        format.json { render json: @contas_a_pagar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contas_a_pagars/1
  # PATCH/PUT /contas_a_pagars/1.json
  def update
    respond_to do |format|
      if @contas_a_pagar.update(contas_a_pagar_params)
        format.html { redirect_to @contas_a_pagar, notice: 'Contas a pagar was successfully updated.' }
        format.json { render :show, status: :ok, location: @contas_a_pagar }
      else
        format.html { render :edit }
        format.json { render json: @contas_a_pagar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contas_a_pagars/1
  # DELETE /contas_a_pagars/1.json
  def destroy
    @contas_a_pagar.destroy
    respond_to do |format|
      format.html { redirect_to contas_a_pagars_url, notice: 'Contas a pagar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contas_a_pagar
      @contas_a_pagar = ContasAPagar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contas_a_pagar_params
      params.require(:contas_a_pagar).permit(:data_lancamento, :descricao, :valor)
    end
end
