class HabitListsController < ApplicationController
  before_action :set_habit_list, only: [:show, :edit, :update, :destroy]

  # GET /habit_lists
  # GET /habit_lists.json
  def index
    @habit_lists = HabitList.all
  end

  # GET /habit_lists/1
  # GET /habit_lists/1.json
  def show
  end

  # GET /habit_lists/new
  def new
    @habit_list = HabitList.new
  end

  # GET /habit_lists/1/edit
  def edit
  end

  # POST /habit_lists
  # POST /habit_lists.json
  def create
    @habit_list = HabitList.new(habit_list_params)

    respond_to do |format|
      if @habit_list.save
        format.html { redirect_to @habit_list, notice: 'Habit list was successfully created.' }
        format.json { render :show, status: :created, location: @habit_list }
      else
        format.html { render :new }
        format.json { render json: @habit_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habit_lists/1
  # PATCH/PUT /habit_lists/1.json
  def update
    respond_to do |format|
      if @habit_list.update(habit_list_params)
        format.html { redirect_to @habit_list, notice: 'Habit list was successfully updated.' }
        format.json { render :show, status: :ok, location: @habit_list }
      else
        format.html { render :edit }
        format.json { render json: @habit_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habit_lists/1
  # DELETE /habit_lists/1.json
  def destroy
    @habit_list.destroy
    respond_to do |format|
      format.html { redirect_to habit_lists_url, notice: 'Habit list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habit_list
      @habit_list = HabitList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def habit_list_params
      params.require(:habit_list).permit(:user_id, :habit_id, :habit, :habit_count, :habitation)
    end
end
