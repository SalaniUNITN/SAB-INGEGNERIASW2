class AddHoursController < ApplicationController
  before_action :set_add_hour, only: [:show, :edit, :update, :destroy]

  # GET /add_hours
  # GET /add_hours.json
  def index
    @add_hours = AddHour.all
  end

  # GET /add_hours/1
  # GET /add_hours/1.json
  def show
  end

  # GET /add_hours/new
  def new
    @add_hour = AddHour.new
  end

  # GET /add_hours/1/edit
  def edit
  end

  # POST /add_hours
  # POST /add_hours.json
  def create
    @add_hour = AddHour.new(add_hour_params)

    respond_to do |format|
      if @add_hour.save
        format.html { redirect_to @add_hour, notice: 'Add hour was successfully created.' }
        format.json { render :show, status: :created, location: @add_hour }
      else
        format.html { render :new }
        format.json { render json: @add_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_hours/1
  # PATCH/PUT /add_hours/1.json
  def update
    respond_to do |format|
      if @add_hour.update(add_hour_params)
        format.html { redirect_to @add_hour, notice: 'Add hour was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_hour }
      else
        format.html { render :edit }
        format.json { render json: @add_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_hours/1
  # DELETE /add_hours/1.json
  def destroy
    @add_hour.destroy
    respond_to do |format|
      format.html { redirect_to add_hours_url, notice: 'Add hour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def total
    tot = 0
    @add_hour.each do |hour|
      tot = tot + hour.Hourly_Wage * hour.NHour
    end
    tot
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_hour
      @add_hour = AddHour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_hour_params
      params.require(:add_hour).permit(:name, :email, :Hourly_Wage, :NHour, :Paid)
    end

end
