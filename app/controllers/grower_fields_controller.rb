class GrowerFieldsController < ApplicationController
  before_action :set_grower_field, only: [:show, :edit, :update, :destroy]

  # GET /grower_fields
  # GET /grower_fields.json
  def index
    @grower_fields = GrowerField.all
  end

  # GET /grower_fields/1
  # GET /grower_fields/1.json
  def show
  end

  # GET /grower_fields/new
  def new
    @grower_field = GrowerField.new
  end

  # GET /grower_fields/1/edit
  def edit
  end

  # POST /grower_fields
  # POST /grower_fields.json
  def create
    @grower_field = GrowerField.new(grower_field_params)

    respond_to do |format|
      if @grower_field.save
        format.html { redirect_to @grower_field, notice: 'Grower field was successfully created.' }
        format.json { render :show, status: :created, location: @grower_field }
      else
        format.html { render :new }
        format.json { render json: @grower_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grower_fields/1
  # PATCH/PUT /grower_fields/1.json
  def update
    respond_to do |format|
      if @grower_field.update(grower_field_params)
        format.html { redirect_to @grower_field, notice: 'Grower field was successfully updated.' }
        format.json { render :show, status: :ok, location: @grower_field }
      else
        format.html { render :edit }
        format.json { render json: @grower_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grower_fields/1
  # DELETE /grower_fields/1.json
  def destroy
    @grower_field.destroy
    respond_to do |format|
      format.html { redirect_to grower_fields_url, notice: 'Grower field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grower_field
      @grower_field = GrowerField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grower_field_params
      params.require(:grower_field).permit(:grower_id, :field_id, :assign_date)
    end
end
