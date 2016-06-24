class SurveyDataTypesController < ApplicationController
  before_action :set_survey_data_type, only: [:show, :edit, :update, :destroy]

  # GET /survey_data_types
  # GET /survey_data_types.json
  def index
    @survey_data_types = SurveyDataType.all
  end

  # GET /survey_data_types/1
  # GET /survey_data_types/1.json
  def show
  end

  # GET /survey_data_types/new
  def new
    @survey_data_type = SurveyDataType.new
  end

  # GET /survey_data_types/1/edit
  def edit
  end

  # POST /survey_data_types
  # POST /survey_data_types.json
  def create
    @survey_data_type = SurveyDataType.new(survey_data_type_params)

    respond_to do |format|
      if @survey_data_type.save
        format.html { redirect_to @survey_data_type, notice: 'Survey data type was successfully created.' }
        format.json { render :show, status: :created, location: @survey_data_type }
      else
        format.html { render :new }
        format.json { render json: @survey_data_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_data_types/1
  # PATCH/PUT /survey_data_types/1.json
  def update
    respond_to do |format|
      if @survey_data_type.update(survey_data_type_params)
        format.html { redirect_to @survey_data_type, notice: 'Survey data type was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_data_type }
      else
        format.html { render :edit }
        format.json { render json: @survey_data_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_data_types/1
  # DELETE /survey_data_types/1.json
  def destroy
    @survey_data_type.destroy
    respond_to do |format|
      format.html { redirect_to survey_data_types_url, notice: 'Survey data type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_data_type
      @survey_data_type = SurveyDataType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_data_type_params
      params.require(:survey_data_type).permit(:title)
    end
end
