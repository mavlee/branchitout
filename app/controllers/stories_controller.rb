class StoriesController < ApplicationController
  before_filter :authenticate, :only => [:new, :create]

  def index
    @stories = Story.all

    respond_to do |format|
      format.html
    end
  end

  def new
    @story = Story.new
    respond_to do |format|
      format.html
    end
  end

  def edit
    @story = Story.find(params[:story][:id])
  end

  def create
    # TODO maverick january 30, 2012 find a better way to do validation
    if params[:title].length == 0 || params[:description].length == 0 || params[:branch_title].length == 0 || params[:branch_content].length == 0
      flash[:error] = "A field was not filled in"
      redirect_to :controller => :stories, :action => :new
    else
      @story = Story.new
      @story.title = params[:title]
      @story.description = params[:description]
      @story_node = StoryNode.new
      @story_node.save
      @story.start_story_node_id = @story_node.id
      @story.save
      @story_node.story_id = @story.id
      @story_node.author = current_user
      @story_node.title = params[:branch_title]
      @story_node.content = params[:branch_content]
      @story_node.save
      redirect_to @story_node
    end
  end

  def show
    @story = Story.find(params[:id])
    respond_to do |format|
      format.html { redirect_to StoryNode.find(@story.start_story_node_id) }
      format.json { render :json, @story }
    end
  end

  def update
    @story = Story.find(params[:id])
    if @story.update_attributes(params[:story])
      flash.now[:success] = "Content updated."
      redirect_to @story
    else
      @title = "Edit user"
      render 'edit'
    end
  end

  def failure
  end
end
