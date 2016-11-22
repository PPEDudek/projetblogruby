class Admin::PostsController < Admin::AdminController

  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)

    #respond_to do |format|
      if @post.save
        #format.html { redirect_to @task, notice: 'Task was successfully created.' }
        #format.json { render :show, status: :created, location: @task }
        redirect_to root_path, notice: 'post was successfully created.'
      else
        render:new
        #format.html { render :new }
        #format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    #end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :content, :category_id, :author)
  end
end
