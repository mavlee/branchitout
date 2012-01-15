class VotesController < ApplicationController
  before_filter :authenticate, :only => [:new]
  def new
    @vote = Vote.where(:user_id => current_user, :story_node_id => params[:node]).first

    if @vote.nil?
      @vote = Vote.new
      @vote.user = current_user

      @vote.story_node_id = params[:node]
      @vote.save
    end

    redirect_to StoryNode.find(params[:node])
  end
end
