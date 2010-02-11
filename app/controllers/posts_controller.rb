class PostsController < ApplicationController
  before_filter :login_required, :except => [:index, :show, :tagged, :rss]
  layout "application", :except => :rss
  
  def index
    @posts = Post.paginate(:page => params[:page], :per_page => 8,:order => "created_at DESC")
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def tagged
    @posts=Post.tagged_with(params[:tagg]).paginate(:page => params[:page], :per_page => 8)
    render :action => 'index'
  end
  
  def rss
    @posts = Post.find(:all)
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Successfully created post."
      redirect_to @post
    else
      render :action => 'new'
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = "Successfully updated post."
      redirect_to @post
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Successfully destroyed post."
    redirect_to posts_url
  end
end
