class EquipePessoasController < ApplicationController
  before_action :set_equipe_pessoa, only: [:show, :edit, :update, :destroy]

  # GET /equipe_pessoas
  # GET /equipe_pessoas.json
  def index
    @equipe_pessoas = EquipePessoa.all
  end

  # GET /equipe_pessoas/1
  # GET /equipe_pessoas/1.json
  def show
  end

  # GET /equipe_pessoas/new
  def new
    @equipe_pessoa = EquipePessoa.new
  end

  # GET /equipe_pessoas/1/edit
  def edit
  end

  # POST /equipe_pessoas
  # POST /equipe_pessoas.json
  def create
    @equipe_pessoa = EquipePessoa.new(equipe_pessoa_params)

    respond_to do |format|
      if @equipe_pessoa.save
        format.html { redirect_to @equipe_pessoa, notice: 'Equipe pessoa was successfully created.' }
        format.json { render :show, status: :created, location: @equipe_pessoa }
      else
        format.html { render :new }
        format.json { render json: @equipe_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipe_pessoas/1
  # PATCH/PUT /equipe_pessoas/1.json
  def update
    respond_to do |format|
      if @equipe_pessoa.update(equipe_pessoa_params)
        format.html { redirect_to @equipe_pessoa, notice: 'Equipe pessoa was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipe_pessoa }
      else
        format.html { render :edit }
        format.json { render json: @equipe_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipe_pessoas/1
  # DELETE /equipe_pessoas/1.json
  def destroy
    @equipe_pessoa.destroy
    respond_to do |format|
      format.html { redirect_to equipe_pessoas_url, notice: 'Equipe pessoa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipe_pessoa
      @equipe_pessoa = EquipePessoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipe_pessoa_params
      params.require(:equipe_pessoa).permit(:equipe_id, :pessoa_id)
    end
end
