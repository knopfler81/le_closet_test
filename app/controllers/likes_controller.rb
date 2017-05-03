class LikesController < ApplicationController

  def like
    @like.upvote
  end
end
