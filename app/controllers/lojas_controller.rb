class LojasController < ApplicationController
  before_action :set_loja, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /lojas
  # GET /lojas.json
  def index
     if params[:search]
       @lojas = Loja.where("nome like ?", "%#{params[:search]}%")
     else
    @lojas = Loja.all
  end
  end

  # GET /lojas/1
  # GET /lojas/1.json
  def show
  end

  # GET /lojas/new
  def new
    @loja = Loja.new
  end

  # GET /lojas/1/edit
  def edit
  end

  # POST /lojas
  # POST /lojas.json
  def create
    @loja = Loja.new(loja_params)

    respond_to do |format|
      if @loja.save
        format.html { redirect_to @loja, notice: 'Loja was successfully created.' }
        format.json { render action: 'show', status: :created, location: @loja }
      else
        format.html { render action: 'new' }
        format.json { render json: @loja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lojas/1
  # PATCH/PUT /lojas/1.json
  def update
    respond_to do |format|
      if @loja.update(loja_params)
        format.html { redirect_to @loja, notice: 'Loja was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @loja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lojas/1
  # DELETE /lojas/1.json
  def destroy
    @loja.destroy
    respond_to do |format|
      format.html { redirect_to lojas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loja
      @loja = Loja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loja_params
      params.require(:loja).permit(:nome, :cnpj, :enderereco, :beirro, :cidade, :estado, :telefone)
    end
end
