class PostsController < ApplicationController
  def index
    # Without strict loading
    @posts = Post.limit(5)

    # With strict loading
    # -------------------
    # Uncomment to see the error
    # @posts.strict_loading!
  end
end