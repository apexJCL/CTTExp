class ExistencesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_existence, only: [:show, :edit, :update, :destroy]

  # GET /existences
  # GET /existences.json
  def index
    @existences = Existence.all
  end

  # GET /existences/1
  # GET /existences/1.json
  def show
  end

  # GET /existences/new
  def new
    @existence = Existence.new
  end

  # GET /existences/1/edit
  def edit
  end

  # POST /existences
  # POST /existences.json
  def create
    @existence = Existence.new(existence_params)

    respond_to do |format|
      if @existence.save
        format.html { redirect_to @existence, notice: 'Existence was successfully created.' }
        format.json { render :show, status: :created, location: @existence }
      else
        format.html { render :new }
        format.json { render json: @existence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /existences/1
  # PATCH/PUT /existences/1.json
  def update
    respond_to do |format|
      if @existence.update(existence_params)
        format.html { redirect_to @existence, notice: 'Existence was successfully updated.' }
        format.json { render :show, status: :ok, location: @existence }
      else
        format.html { render :edit }
        format.json { render json: @existence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /existences/1
  # DELETE /existences/1.json
  def destroy
    @existence.destroy
    respond_to do |format|
      format.html { redirect_to existences_url, notice: 'Existence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_existence
      @existence = Existence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def existence_params
      params.fetch(:existence, {})
    end
end
