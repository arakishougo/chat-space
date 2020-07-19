def create
  @todo = Todo.create(todo_params)
  respond_to do |format|
    format.html { redirect_to :root }
    format.json { render json: @todo}
  end
end