class SegundosController < ApplicationController
  before_action :set_segundo, only: [:show, :edit, :update, :destroy]

  # GET /segundos
  # GET /segundos.json
  def index
    @segundos = Segundo.all
  end

  # GET /segundos/1
  # GET /segundos/1.json
  def show
  end

  # GET /segundos/new
  def new
    @segundo = Segundo.new
  end

  # GET /segundos/1/edit
  def edit
  end

  # POST /segundos
  # POST /segundos.json
  def create
    @segundo = Segundo.new(segundo_params)

    respond_to do |format|
      if @segundo.save
        format.html { redirect_to @segundo, notice: 'Segundo was successfully created.' }
        format.json { render :show, status: :created, location: @segundo }
      else
        format.html { render :new }
        format.json { render json: @segundo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /segundos/1
  # PATCH/PUT /segundos/1.json
  def update
    respond_to do |format|
      if @segundo.update(segundo_params)
        format.html { redirect_to @segundo, notice: 'Segundo was successfully updated.' }
        format.json { render :show, status: :ok, location: @segundo }
      else
        format.html { render :edit }
        format.json { render json: @segundo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /segundos/1
  # DELETE /segundos/1.json
  def destroy
    @segundo.destroy
    respond_to do |format|
      format.html { redirect_to segundos_url, notice: 'Segundo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segundo
      @segundo = Segundo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def segundo_params
      params.require(:segundo).permit(:idsegundo, :name, :description)
    end
end
