class ProjectTodosController < ApplicationController
  before_action :set_project_todo, only: [:show, :edit, :update, :destroy]

  # GET /project_todos
  # GET /project_todos.json
  def index
    @project_todos = ProjectTodo.all
  end

  # GET /project_todos/1
  # GET /project_todos/1.json
  def show
  end

  # GET /project_todos/new
  def new
    @project_todo = ProjectTodo.new
  end

  # GET /project_todos/1/edit
  def edit
  end

  # POST /project_todos
  # POST /project_todos.json
  def create
    @project_todo = ProjectTodo.new(project_todo_params)

    respond_to do |format|
      if @project_todo.save
        format.html { redirect_to @project_todo, notice: 'Project todo was successfully created.' }
        format.json { render :show, status: :created, location: @project_todo }
      else
        format.html { render :new }
        format.json { render json: @project_todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_todos/1
  # PATCH/PUT /project_todos/1.json
  def update
    respond_to do |format|
      if @project_todo.update(project_todo_params)
        format.html { redirect_to @project_todo, notice: 'Project todo was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_todo }
      else
        format.html { render :edit }
        format.json { render json: @project_todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_todos/1
  # DELETE /project_todos/1.json
  def destroy
    @project_todo.destroy
    respond_to do |format|
      format.html { redirect_to project_todos_url, notice: 'Project todo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_todo
      @project_todo = ProjectTodo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_todo_params
      params.require(:project_todo).permit(:project_id, :todo_id)
    end
end
