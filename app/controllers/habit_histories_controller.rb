class HabitHistoriesController < ApplicationController
  before_action :set_habit_history, only: [:show, :edit, :update, :destroy]

  # GET /habit_histories
  # GET /habit_histories.json
  def index
    @habit_histories = HabitHistory.all
  end

  # GET /habit_histories/1
  # GET /habit_histories/1.json
  def show
  end

  # GET /habit_histories/new
  def new
    @habit_history = HabitHistory.new
  end

  # GET /habit_histories/1/edit
  def edit
  end

  # POST /habit_histories
  # POST /habit_histories.json
  def create
    @habit_history = HabitHistory.new(habit_history_params)

    respond_to do |format|
      if @habit_history.save
        format.html { redirect_to @habit_history, notice: 'Habit history was successfully created.' }
        format.json { render :show, status: :created, location: @habit_history }
      else
        format.html { render :new }
        format.json { render json: @habit_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habit_histories/1
  # PATCH/PUT /habit_histories/1.json
  def update
    respond_to do |format|
      if @habit_history.update(habit_history_params)
        format.html { redirect_to @habit_history, notice: 'Habit history was successfully updated.' }
        format.json { render :show, status: :ok, location: @habit_history }
      else
        format.html { render :edit }
        format.json { render json: @habit_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habit_histories/1
  # DELETE /habit_histories/1.json
  def destroy
    @habit_history.destroy
    respond_to do |format|
      format.html { redirect_to habit_histories_url, notice: 'Habit history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habit_history
      @habit_history = HabitHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def habit_history_params
      params.fetch(:habit_history, {})
    end
end
