class WelcomeController < ApplicationController
  def index

    @index_post=Post.last

  end
end
