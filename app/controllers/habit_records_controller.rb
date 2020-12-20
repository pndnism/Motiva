class HabitRecordsController < ApplicationController
  before_action :set_habit_record, only: [:show, :edit, :update, :destroy]

  # GET /habit_records
  # GET /habit_records.json
  def index
    @habit_records = HabitRecord.all
  end

  # GET /habit_records/1
  # GET /habit_records/1.json
  def show
  end

  # GET /habit_records/new
  def new
    @habit_record = HabitRecord.new
  end

  # GET /habit_records/1/edit
  def edit
  end

  # POST /habit_records
  # POST /habit_records.json
  def create
    @habit_record = HabitRecord.new(habit_record_params)

    respond_to do |format|
      if @habit_record.save
        format.html { redirect_to @habit_record, notice: 'Habit record was successfully created.' }
        format.json { render :show, status: :created, location: @habit_record }
      else
        format.html { render :new }
        format.json { render json: @habit_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habit_records/1
  # PATCH/PUT /habit_records/1.json
  def update
    respond_to do |format|
      if @habit_record.update(habit_record_params)
        format.html { redirect_to @habit_record, notice: 'Habit record was successfully updated.' }
        format.json { render :show, status: :ok, location: @habit_record }
      else
        format.html { render :edit }
        format.json { render json: @habit_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habit_records/1
  # DELETE /habit_records/1.json
  def destroy
    @habit_record.destroy
    respond_to do |format|
      format.html { redirect_to habit_records_url, notice: 'Habit record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habit_record
      @habit_record = HabitRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def habit_record_params
      params.require(:habit_record).permit(:habit_id, :date, :done, :count)
    end
end
